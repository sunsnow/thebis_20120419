<?php

	class TP_Mistercash
	{
		protected $sLayoutCode = '';
		protected $sLanguageCode = 'BE';
		protected $sCountryCode = 'BE';
		protected $sCurrencyCode = 'EUR';

		public function __construct($sLayoutCode, $sLanguageCode = 'BE', $sCountryCode = 'BE', $sCurrencyCode = 'EUR')
		{
			if($sLayoutCode)
			{
				$this->sLayoutCode = $sLayoutCode;
			}

			if($sLanguageCode)
			{
				$this->sLanguageCode = $sLanguageCode;
			}

			if($sCountryCode)
			{
				$this->sCountryCode = $sCountryCode;
			}

			if($sCurrencyCode)
			{
				$this->sCurrencyCode = $sCurrencyCode;
			}
		}

		public function doTransactionRequest($fAmount, $sDescription = '', $sReturnUrl = '', $sReportUrl = '')
		{
			$aParams = array();
			$aParams['action'] = 'start';
			$aParams['domain'] = $this->getDomain();
			$aParams['userip'] = $this->getIP();
			$aParams['rtlo'] = $this->sLayoutCode;
			$aParams['currency'] = $this->sCurrencyCode;
			$aParams['language'] = $this->sLanguageCode;
			$aParams['lang'] = $this->sLanguageCode;

			$aParams['description'] = $sDescription;
			$aParams['amount'] = round(floatval(str_replace(',', '.', $fAmount)) * 100);
			$aParams['returnurl'] = $sReturnUrl;
			$aParams['reporturl'] = $sReportUrl;


			$sPostUrl = 'https://www.targetpay.com/mrcash/start.php';
			$sPostData = $this->paramsToString($aParams);

			$sResponseData = $this->doHttpRequest($sPostUrl, $sPostData, true, 30, false);

			if($sResponseData)
			{
				$sResponseData = trim($sResponseData);

				$a1 = explode('|', $sResponseData);

				if(isset($a1[0]) && isset($a1[1]))
				{
					$a2 = explode(' ', trim($a1[0]));

					if(isset($a2[0]) && isset($a2[1]))
					{
						$sStatusCode = trim($a2[0]);
						$sTransactionId = trim($a2[1]);
						$sTransactionUrl = trim($a1[1]);

						return array('targetpay_status' => $sStatusCode, 'transaction_id' => $sTransactionId, 'transaction_url' => $sTransactionUrl);
					}
				}
			}

			return $sResponseData;
		}

		public function doStatusRequest($sTransactionId, $bOnce = true, $bTest = false)
		{
			$aParams = array();
			$aParams['action'] = 'check';
			$aParams['domain'] = $this->getDomain();
			$aParams['userip'] = $this->getIP();
			$aParams['rtlo'] = $this->sLayoutCode;

			$aParams['trxid'] = $sTransactionId;
			$aParams['once'] = ($bOnce ? '1' : '0');
			$aParams['test'] = ($bTest ? '1' : '0');

			$sPostUrl = 'https://www.targetpay.com/mrcash/check.php';
			$sPostData = $this->paramsToString($aParams);

			$sResponseData = $this->doHttpRequest($sPostUrl, $sPostData, true, 30, false);

			if($sResponseData)
			{
				$sResponseData = trim($sResponseData);

				if(substr($sResponseData, 0, 9) == '000000 OK')
				{
					return 'SUCCESS';
				}
				elseif(substr($sResponseData, 0, 6) == 'TP0010')
				{
					return 'OPEN';
				}
				elseif(substr($sResponseData, 0, 6) == 'TP0011')
				{
					return 'CANCELLED';
				}
				elseif(substr($sResponseData, 0, 6) == 'TP0012')
				{
					return 'EXPIRED';
				}
				elseif(substr($sResponseData, 0, 6) == 'TP0014')
				{
					return false;
				}
				else
				{
					return 'FAILURE';
				}
			}

			return false;
		}

		public function getErrorMessage($sErrorCode)
		{
			$sErrorMessage = 'Onbekende error: ' . $sErrorCode;

			switch($sErrorCode)
			{
				case 'TP0001' : $sErrorMessage = 'Geen layoutcode opgegeven'; break;
				case 'TP0002' : $sErrorMessage = 'Bedrag te laag (minimaal 0,84 euro)'; break;
				case 'TP0003' : $sErrorMessage = 'Bedrag te hoog (maximaal 10.000 euro)'; break;
				case 'TP0004' : $sErrorMessage = 'Geen of ongeldige return URL meegegeven'; break;
				case 'TP0005' : $sErrorMessage = 'Geen bank ID meegegeven'; break;
				case 'TP0006' : $sErrorMessage = 'Geen omschrijving meegegeven'; break;
				case 'TP0010' : $sErrorMessage = 'Transactie is nog niet afgerond, probeer het later opnieuw'; break;
				case 'TP0011' : $sErrorMessage = 'Transactie is geannuleerd'; break;
				case 'TP0012' : $sErrorMessage = 'Transactie is verlopen (max. 10 minuten)'; break;
				case 'TP0013' : $sErrorMessage = 'De transactie kon niet verwerkt worden'; break;
				case 'TP0014' : $sErrorMessage = 'Reeds ingewisseld'; break;
				case 'TP0020' : $sErrorMessage = 'Geen layoutcode opgegeven'; break;
				case 'TP0021' : $sErrorMessage = 'Geen transactieID opgegeven'; break;
				case 'TP0022' : $sErrorMessage = 'Geen transacie met dit ID gevonden'; break;
				case 'TP0023' : $sErrorMessage = 'Layoutcode matched niet met deze transactie..'; break;
				case 'IX1000' : $sErrorMessage = 'Ontvangen XML niet well-formed'; break;
				case 'IX1100' : $sErrorMessage = 'Ontvangen XML niet valide'; break;
				case 'IX1200' : $sErrorMessage = 'Encoding type geen UTF-8'; break;
				case 'IX1300' : $sErrorMessage = 'Versienummer niet (meer) ondersteund'; break;
				case 'IX1400' : $sErrorMessage = 'Onbekend bericht'; break;
				case 'IX1500' : $sErrorMessage = 'Verplichte hoofdentiteit ontbreekt in bericht'; break;
				case 'IX1600' : $sErrorMessage = 'Verplicht veld ontbreekt'; break;
				case 'SO1000' : $sErrorMessage = 'Storing in systeem'; break;
				case 'SO1200' : $sErrorMessage = 'Systeem te druk. Probeer later nogmaals'; break;
				case 'SO1400' : $sErrorMessage = 'Onbeschikbaar door onderhoudswerkzaamheden'; break;
				case 'SE2000' : $sErrorMessage = 'Authenticatiefout'; break;
				case 'SE2100' : $sErrorMessage = 'Authenticatie methode niet ondersteund'; break;
				case 'SE2700' : $sErrorMessage = 'Ongeldige digitale handtekening'; break;
				case 'BR1200' : $sErrorMessage = 'Ongeldig versienummer'; break;
				case 'BR1210' : $sErrorMessage = 'Veld bevat niet toegestaan teken'; break;
				case 'BR1220' : $sErrorMessage = 'Veld te lang'; break;
				case 'BR1230' : $sErrorMessage = 'Veld te kort'; break;
				case 'BR1240' : $sErrorMessage = 'Waarde te hoog'; break;
				case 'BR1250' : $sErrorMessage = 'Waarde te laag'; break;
				case 'BR1260' : $sErrorMessage = 'Onbekende optie in lijst'; break;
				case 'BR1270' : $sErrorMessage = 'Ongeldige datum/tijd'; break;
				case 'BR1280' : $sErrorMessage = 'Ongeldige URL'; break;
				case 'AP1000' : $sErrorMessage = 'acquirerID onbekend'; break;
				case 'AP1100' : $sErrorMessage = 'merchantID onbekend'; break;
				case 'AP1200' : $sErrorMessage = 'issuerID onbekend'; break;
				case 'AP1300' : $sErrorMessage = 'subID onbekend'; break;
				case 'AP2600' : $sErrorMessage = 'Transactie bestaat niet'; break;
				case 'AP2620' : $sErrorMessage = 'Transactie reeds aangeboden'; break;
				case 'AP2700' : $sErrorMessage = 'Bankrekeningnummer niet 11-proof'; break;
				case 'AP2900' : $sErrorMessage = 'Gekozen valuta niet ondersteund'; break;
				case 'AP2910' : $sErrorMessage = 'Maximum bedrag overschreden'; break;
				case 'AP2920' : $sErrorMessage = 'Expiratieperiode te groot (meer dan 10 minuten)'; break;
			}

			return $sErrorMessage;
		}


		public function paramsToString($aParams = array())
		{
			$sResult = '';

			foreach($aParams as $k => $v)
			{
				$sResult .= '&' . urlencode($k) . '=' . urlencode($v);
			}

			return substr($sResult, 1);
		}

		public function getDomain()
		{
			return ((isset($_SERVER['HTTPS']) && (strcasecmp($_SERVER['HTTPS'], 'ON') === 0)) ? 'https://' : 'http://') . $_SERVER['HTTP_HOST'];
		}

		public function getIP()
		{
			return $_SERVER['REMOTE_ADDR'];
		}

		public function doHttpRequest($sUrl, $sPostData = false, $bRemoveHeaders = false, $iTimeout = 30, $bDebug = false)
		{
			$aUrl = parse_url($sUrl);

			$sRequestUrl = '';

			if(in_array($aUrl['scheme'], array('ssl', 'https')))
			{
				$sRequestUrl .= 'ssl://';

				if(empty($aUrl['port']))
				{
					$aUrl['port'] = 443;
				}
			}
			elseif(empty($aUrl['port']))
			{
				$aUrl['port'] = 80;
			}

			$sRequestUrl .= $aUrl['host'] . ':' . $aUrl['port'];

			$sErrorNumber = 0;
			$sErrorMessage = '';

			$oSocket = fsockopen($sRequestUrl, $sErrorNumber, $sErrorMessage, $iTimeout);
			$sResponse = '';

			if($oSocket)
			{
				$sRequest = ($sPostData ? 'POST' : 'GET') . ' ' . (empty($aUrl['path']) ? '/' : $aUrl['path']) . (empty($aUrl['query']) ? '' : '?' . $aUrl['query']) . ' HTTP/1.0' . "\r\n";
				$sRequest .= 'Host: ' . $aUrl['host'] . "\r\n";
				$sRequest .= 'Accept: text/html' . "\r\n";
				$sRequest .= 'Accept-Charset: charset=ISO-8859-1,utf-8' . "\r\n";

				if($sPostData)
				{
					$sRequest .= 'Content-Length: ' . strlen($sPostData) . "\r\n";
					$sRequest .= 'Content-Type: application/x-www-form-urlencoded; charset=utf-8' . "\r\n" . "\r\n";
					$sRequest .= $sPostData;
				}
				else
				{
					$sRequest .= "\r\n";
				}

				if($bDebug === true)
				{
					echo "\r\n" . "\r\n" . '<h1>SEND DATA:</h1>' . "\r\n" . '<code style="display: block; background: #E0E0E0; border: #000000 solid 1px; padding: 10px;">' . str_replace(array("\n", "\r"), array('<br>' . "\r\n", ''), htmlspecialchars($sRequest)) . '</code>' . "\r\n" . "\r\n";
				}

				// Send data
				fputs($oSocket, $sRequest);

				// Recieve data
				while(!feof($oSocket))
				{
					$sResponse .= @fgets($oSocket, 128);
				}

				fclose($oSocket);

				if($bDebug === true)
				{
					echo "\r\n" . "\r\n" . '<h1>RECIEVED DATA:</h1>' . "\r\n" . '<code style="display: block; background: #E0E0E0; border: #000000 solid 1px; padding: 10px;">' . str_replace(array("\n", "\r"), array('<br>' . "\r\n", ''), htmlspecialchars($sResponse)) . '</code>' . "\r\n" . "\r\n";
				}

				if($bRemoveHeaders) // Remove headers from reply
				{
					list($sHeader, $sBody) = preg_split('/(\\r?\\n){2,2}/', $sResponse, 2);
					return $sBody;
				}
				else
				{
					return $sResponse;
				}
			}
			else
			{
				die('Socket error: ' . $sErrorMessage);
			}
		}
	}

?>