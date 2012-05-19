<?php

	/*
		Class to generate an OmniKassa form. 
		Also calculates your security hashcode.

		Author:  Martijn Wieringa
		Company: PHP Solutions
		Email:   info@php-solutions.nl
		Version: 0.1
		Date:    26-1-2012
	*/

	class OmniKassa
	{
		// Default settings
		protected $sCurrencyCode = 'EUR';
		protected $sCurrencyNumber = '978';
		protected $sLanguageCode = 'nl'; // NL
		protected $sPaymentType = 'ideal';


		// Account settings
		protected $sMerchantId = '';
		protected $sSubId = 0;
		protected $sHashKey = '';
		protected $sKeyVersion = '1';

		protected $sAquirerName = '';
		protected $sAquirerUrl = '';


		// Order settings
		protected $fOrderAmount = 0.00;
		protected $sOrderId = '';
		protected $sTransactionReference = false;

		protected $sReturnUrl = '';
		protected $sNotifyUrl = '';


		// Form settings
		protected $sButtonLabel = 'Afrekenen';
		protected $sButtonImage = false;
		protected $iButtonImageWidth = 0;
		protected $iButtonImageHeight = 0;

		public function __construct($sPaymentType = 'ideal')
		{
			$this->setPaymentType($sPaymentType);
		}

		public function setPaymentType($sPaymentType)
		{
			$this->sPaymentType = strtolower($sPaymentType);
		}

		// Set amount in EURO, use a float or integer 
		public function setAmount($fOrderAmount, $sCurrencyCode)
		{
			$this->sCurrencyCode = $sCurrencyCode;
			$this->fOrderAmount = $fOrderAmount;
		}

		// Your secret hash key to secure form data (should match your Ideal Dashboard)
		public function setHashKey($sHashKey)
		{
			$this->sHashKey = $sHashKey;
		}

		// Your key version
		public function setKeyVersion($sKeyVersion)
		{
			$this->sKeyVersion = $sKeyVersion;
		}

		// Your merchantID and subID
		public function setMerchant($sMerchantId, $sSubId = '0')
		{
			$this->sMerchantId = $sMerchantId;
			$this->sSubId = $sSubId;
		}

		// Upto 32 characters, should be a unique reference to your order
		public function setOrderId($sOrderId)
		{
			$this->sOrderId = substr($sOrderId, 0, 32);
		}

		// Upto 35 characters, should be a unique reference to your transaction
		public function setTransactionReference($sTransactionReference)
		{
			$this->sTransactionReference = substr($sTransactionReference, 0, 35);
		}

		// OmniKassa should support these languages: en, fr, de, it, es, nl
		public function setLanguageCode($sLanguageCode)
		{
			$this->sLanguageCode = strtolower(substr($sLanguageCode, 0, 2));
		}

		// Set aquirer
		public function setAquirer($sAquirerName, $bTestMode = false)
		{
			$this->sAquirerName = $sAquirerName;
			$sAquirerName = strtolower($sAquirerName);

			if(strpos($sAquirerName, 'rabo') !== false) // Rabobank
			{
				$this->sAquirerUrl = 'https://payment-webinit.' . ($bTestMode ? 'simu.' : '') . 'omnikassa.rabobank.nl/paymentServlet';
			}
			else // Unknown aquirer
			{
				$this->setError('Unknown aquirer. Please use Rabobank.', false, __FILE__, __LINE__);
				return false;
			}

			return true;
		}

		// Set Return URL
		public function setReturnUrl($sUrl)
		{
			$this->sReturnUrl = $sUrl;
		}

		// Set Notify URL
		public function setNotifyUrl($sUrl)
		{
			$this->sNotifyUrl = $sUrl;
		}

		// Set submit button label, or define an image as submit-button
		public function setButton($sLabel, $sImage = false, $iWidth = 0, $iHeight = 0)
		{
			$this->sButtonLabel = $sLabel;
			$this->sButtonImage = $sImage;
			$this->iButtonImageWidth = $iWidth;
			$this->iButtonImageHeight = $iHeight;
		}

		// Generate iDEAL Lite form
		public function createForm()
		{
			$aData = array();

			if(in_array($this->sPaymentType, array('ideal', 'minitix')))
			{
				$aData['currencyCode'] = '978'; // Force EURO
			}
			else
			{
				$aData['currencyCode'] = $this->getCurrencyNumber($this->sCurrencyCode);
			}

			$aData['amount'] = round($this->fOrderAmount * 100);
			$aData['merchantId'] = $this->sMerchantId;

			if($this->sReturnUrl)
			{
				$aData['normalReturnUrl'] = $this->sReturnUrl;
			}

			if($this->sNotifyUrl)
			{
				$aData['automaticResponseUrl'] = $this->sNotifyUrl;
			}

			$aData['customerLanguage'] = $this->sLanguageCode; // en, fr, de, it, es, nl

			if(in_array($this->sPaymentType, array('creditcard')))
			{
				// $aData['paymentMeanBrandList'] = 'VISA,MASTERCARD,MAESTRO';
				$aData['paymentMeanType'] = 'CREDIT_TRANSFER';
			}
			elseif(in_array($this->sPaymentType, array('directebanking')))
			{
				$aData['paymentMeanBrandList'] = 'DIRECTEBANKING';
			}
			elseif(in_array($this->sPaymentType, array('ideal')))
			{
				$aData['paymentMeanBrandList'] = 'IDEAL';
			}
			elseif(in_array($this->sPaymentType, array('minitix')))
			{
				$aData['paymentMeanBrandList'] = 'MINITIX';
			}
			elseif(in_array($this->sPaymentType, array('mistercash')))
			{
				$aData['paymentMeanBrandList'] = 'MISTERCASH';
			}
			elseif(in_array($this->sPaymentType, array('paypal')))
			{
				$aData['paymentMeanBrandList'] = 'PAYPAL';
			}
			

			$aData['orderId'] = preg_replace('/[^a-zA-Z0-9]+/', '', $this->sOrderId);
			$aData['transactionReference'] = ($this->sTransactionReference ? $this->sTransactionReference : md5(time() . $this->sOrderId));
			$aData['keyVersion'] = $this->sKeyVersion;

			$sData = '';

			foreach($aData as $k => $v)
			{
				// Remove pipeline
				$v = str_replace('|', '', $v);

				// Add to data string
				$sData .= (empty($sData) ? '' : '|') . ($k . '=' . $v);
			}

			$sHash = hash('sha256', utf8_encode($sData . $this->sHashKey));


			// Generate HTML form
			$html = '<form method="post" action="' . htmlspecialchars($this->sAquirerUrl) . '"><input type="hidden" name="Data" value="' . htmlspecialchars($sData) . '"><input type="hidden" name="InterfaceVersion" value="HP_1.0"><input type="hidden" name="Seal" value="' . htmlspecialchars($sHash) . '">' . ($this->sButtonImage ? '<input type="image" value="' . htmlspecialchars($this->sButtonLabel) . '" src="' . htmlspecialchars($this->sButtonImage) . '"' . ($this->iButtonImageWidth ? ' width="' . htmlspecialchars($this->iButtonImageWidth) . '"' : '') . ($this->iButtonImageHeight ? ' height="' . htmlspecialchars($this->iButtonImageHeight) . '"' : '') . '>' : '<input type="submit" value="' . htmlspecialchars($this->sButtonLabel) . '">') . '</form>';
			return $html;
		}

		// Validate return/notification 
		public function validate()
		{
			if(!empty($_POST['Data']) && !empty($_POST['Seal']))
			{
				$sData = $_POST['Data'];
				$sHash = $_POST['Seal'];

				// Valdate HASH
				if(strcmp($sHash, hash('sha256', utf8_encode($sData . $this->sHashKey))) === 0)
				{
					$a = explode('|', $sData);
					$aData = array();

					foreach($a as $d)
					{
						list($k, $v) = explode('=', $d);
						$aData[$k] = $v;
					}

					return array('transaction_id' => (empty($aData['authorisationId']) ? '' : $aData['authorisationId']), 'transaction_code' => $aData['transactionReference'], 'transaction_status' => $this->getTransactionStatus($aData['responseCode']), 'order_id' => $aData['orderId'], 'raw_data' => $aData);
				}
			}

			return false;
		}

		protected function getCurrencyNumber($sCurrencyCode)
		{
			// Extracted from http://www.currency-iso.org/dl_iso_table_a1.xml
			$aCurrencies = array('AED' => '784', 'AFN' => '971', 'ALL' => '008', 'AMD' => '051', 'ANG' => '532', 'AOA' => '973', 'ARS' => '032', 'AUD' => '036', 'AWG' => '533', 'AZN' => '944', 'BAM' => '977', 'BBD' => '052', 'BDT' => '050', 'BGN' => '975', 'BHD' => '048', 'BIF' => '108', 'BMD' => '060', 'BND' => '096', 'BOB' => '068', 'BOV' => '984', 'BRL' => '986', 'BSD' => '044', 'BTN' => '064', 'BWP' => '072', 'BYR' => '974', 'BZD' => '084', 'CAD' => '124', 'CDF' => '976', 'CHE' => '947', 'CHF' => '756', 'CHW' => '948', 'CLF' => '990', 'CLP' => '152', 'CNY' => '156', 'COP' => '170', 'COU' => '970', 'CRC' => '188', 'CUC' => '931', 'CUP' => '192', 'CVE' => '132', 'CZK' => '203', 'DJF' => '262', 'DKK' => '208', 'DOP' => '214', 'DZD' => '012', 'EGP' => '818', 'ERN' => '232', 'ETB' => '230', 'EUR' => '978', 'FJD' => '242', 'FKP' => '238', 'GBP' => '826', 'GEL' => '981', 'GHS' => '936', 'GIP' => '292', 'GMD' => '270', 'GNF' => '324', 'GTQ' => '320', 'GYD' => '328', 'HKD' => '344', 'HNL' => '340', 'HRK' => '191', 'HTG' => '332', 'HUF' => '348', 'IDR' => '360', 'ILS' => '376', 'INR' => '356', 'IQD' => '368', 'IRR' => '364', 'ISK' => '352', 'JMD' => '388', 'JOD' => '400', 'JPY' => '392', 'KES' => '404', 'KGS' => '417', 'KHR' => '116', 'KMF' => '174', 'KPW' => '408', 'KRW' => '410', 'KWD' => '414', 'KYD' => '136', 'KZT' => '398', 'LAK' => '418', 'LBP' => '422', 'LKR' => '144', 'LRD' => '430', 'LSL' => '426', 'LTL' => '440', 'LVL' => '428', 'LYD' => '434', 'MAD' => '504', 'MDL' => '498', 'MGA' => '969', 'MKD' => '807', 'MMK' => '104', 'MNT' => '496', 'MOP' => '446', 'MRO' => '478', 'MUR' => '480', 'MVR' => '462', 'MWK' => '454', 'MXN' => '484', 'MXV' => '979', 'MYR' => '458', 'MZN' => '943', 'NAD' => '516', 'NGN' => '566', 'NIO' => '558', 'NOK' => '578', 'NPR' => '524', 'NZD' => '554', 'OMR' => '512', 'PAB' => '590', 'PEN' => '604', 'PGK' => '598', 'PHP' => '608', 'PKR' => '586', 'PLN' => '985', 'PYG' => '600', 'QAR' => '634', 'RON' => '946', 'RSD' => '941', 'RUB' => '643', 'RWF' => '646', 'SAR' => '682', 'SBD' => '090', 'SCR' => '690', 'SDG' => '938', 'SEK' => '752', 'SGD' => '702', 'SHP' => '654', 'SLL' => '694', 'SOS' => '706', 'SRD' => '968', 'SSP' => '728', 'STD' => '678', 'SVC' => '222', 'SYP' => '760', 'SZL' => '748', 'THB' => '764', 'TJS' => '972', 'TMT' => '934', 'TND' => '788', 'TOP' => '776', 'TRY' => '949', 'TTD' => '780', 'TWD' => '901', 'TZS' => '834', 'UAH' => '980', 'UGX' => '800', 'USD' => '840', 'USN' => '997', 'USS' => '998', 'UYI' => '940', 'UYU' => '858', 'UZS' => '860', 'VEF' => '937', 'VND' => '704', 'VUV' => '548', 'WST' => '882', 'XAF' => '950', 'XAG' => '961', 'XAU' => '959', 'XBA' => '955', 'XBB' => '956', 'XBC' => '957', 'XBD' => '958', 'XCD' => '951', 'XDR' => '960', 'XFU' => 'Nil', 'XOF' => '952', 'XPD' => '964', 'XPF' => '953', 'XPT' => '962', 'XSU' => '994', 'XTS' => '963', 'XUA' => '965', 'XXX' => '999', 'YER' => '886', 'ZAR' => '710', 'ZMK' => '894', 'ZWL' => '932');


			// Find currency number
			if(isset($aCurrencies[$sCurrencyCode]))
			{
				return $aCurrencies[$sCurrencyCode];
			}


			// EURO
			return 978;
		}

		protected function getTransactionStatus($sTransactionCode)
		{
			if(in_array($sTransactionCode, array('00'))) // SUCCESS
			{
				return 'SUCCESS';
			}
			elseif(in_array($sTransactionCode, array('60', '90'))) // PENDING
			{
				return 'PENDING';
			}
			elseif(in_array($sTransactionCode, array('00'))) // OPEN
			{
				return 'OPEN';
			}
			elseif(in_array($sTransactionCode, array('97'))) // EXPIRED
			{
				return 'EXPIRED';
			}
			elseif(in_array($sTransactionCode, array('17'))) // CANCELLED
			{
				return 'CANCELLED';
			}

			return 'FAILED';
		}
	}

?>