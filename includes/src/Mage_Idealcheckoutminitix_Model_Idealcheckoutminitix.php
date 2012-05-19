<?php

	require_once(Mage::getBaseDir('base') . '/idealcheckout/includes/library.php');

	class Mage_Idealcheckoutminitix_Model_Idealcheckoutminitix extends Mage_Payment_Model_Method_Abstract
	{
		protected $_code = 'idealcheckoutminitix';

		protected $_isGateway = false;
		protected $_canAuthorize = false;
		protected $_canCapture = true;
		protected $_canCapturePartial = false;
		protected $_canRefund = false;
		protected $_canVoid = false;
		protected $_canUseInternal = false;
		protected $_canUseCheckout = true;
		protected $_canUseForMultishipping = false;   


		// This url is called after order confirmation; It triggers IdealcheckoutminitixController->redirectAction()
		public function getOrderPlaceRedirectUrl() 
		{
			$sUrl = Mage::getUrl('idealcheckoutminitix/idealcheckoutminitix/redirect', array('_secure' => true));
			return $this->fixUrl($sUrl, false);
		}
	


		// Setup idealcheckoutminitix transaction record in database - called in: IdealcheckoutminitixController->redirectAction()
		public function setupPayment()
		{
			$iOrderId = Mage::getSingleton('checkout/session')->getLastOrderId();
			$this->_order = Mage::getModel('sales/order')->load($iOrderId);
			// $iOrderId = $oSession->getCheckout()->getLastRealOrderId();
			// $this->_order = Mage::getModel('sales/order')->loadByIncrementId($iOrderId);


			// Validate order
			if(!$this->_order->getId())
			{
				Mage::throwException('Cannot load order #' . $iOrderId);
			}


			// Validate amount
			if($this->_order->getGrandTotal() < 1.00)
			{
				// Mage::throwException(Mage::helper('idealcheckoutminitix')->__('The total amount of order #' . $iOrderId . ' is ' . $this->_order->getGrandTotal() . ', but should be at least 1.00.'));
			}



			// Load database settings
			$aDatabaseSettings = idealcheckout_getDatabaseSettings();

			$sStoreCode = idealcheckout_getStoreCode(); // Mage::app()->getStore()->getCode();
			$sGatewayCode = 'minitix';
			$sLanguageCode = substr(Mage::app()->getLocale()->getDefaultLocale(), 0, 2); // nl, de, en
			$sCountryCode = '';
			$sCurrencyCode = Mage::app()->getStore()->getCurrentCurrencyCode();

			if(strcasecmp($sCurrencyCode, 'GBP') === 0)
			{
				// $sLanguageCode = 'EN';
				$sCountryCode = 'UK';
			}

			$sOrderId = $this->_order->getRealOrderId();
			$sOrderCode = idealcheckout_getRandomCode(32);
			$aOrderParams = array();
			$sTransactionId = idealcheckout_getRandomCode(32);
			$sTransactionCode = idealcheckout_getRandomCode(32);
			$fTransactionAmount = $this->_order->getGrandTotal();
			$sTransactionDescription = idealcheckout_getTranslation($sLanguageCode, 'idealcheckout', 'Webshop order #{0}', array($sOrderId));

			$sReturnUrl = Mage::getUrl('idealcheckoutminitix/idealcheckoutminitix/return', array('_secure' => true, 'order_id' => $sOrderId, 'order_code' => $sOrderCode));
			$sReturnUrl = $this->fixUrl($sReturnUrl, false);

			$sTransactionPaymentUrl = $sReturnUrl;
			$sTransactionSuccessUrl = $sReturnUrl;
			$sTransactionPendingUrl = $sReturnUrl;
			$sTransactionFailureUrl = $sReturnUrl;


			// Store ORDER information
			$aOrderParams['order'] = array(
				'id' => $iOrderId
			);


			// Store CONTACT information
			$oAddress = $this->_order->getBillingAddress();

			$aOrderParams['contact'] = array(
				'company' => $oAddress->getCompany(), 
				'name' => $oAddress->getName(), 
				'address' => $oAddress->getStreetFull(), 
				'postalcode' => $oAddress->getPostcode(), 
				'city' => $oAddress->getCity(), 
				'phone' => $oAddress->getTelephone(), 
				'email' => $this->_order->getCustomerEmail()
			);


			// Store CART information
			$aItems = $this->_order->getAllItems();

			foreach($aItems as $oItem) 
			{
				$iQuantity = ($oItem->getQtyOrdered() ? $oItem->getQtyOrdered() : ($oItem->getQty() ? $oItem->getQty() : 1));

				$sProductCode = $oItem->getSku();
				$sProductDescription = $oItem->getName();
				$fProductPrice = false;
				$fProductPriceVat = floatval($oItem->getPriceInclTax());
				$fProductCount = $iQuantity;
				$fProductWrappingCount = 1;
				$fVat = $oItem->getTaxPercent();

				$aOrderParams['items'][] = array(
					'code' => $sProductCode, 
					'description' => $sProductDescription, 
					'price' => $fProductPrice, 
					'price_vat' => $fProductPriceVat, 
					'count' => $fProductCount, 
					'wrapping' => $fProductWrappingCount, 
					'vat' => $fVat
				);
			}


			// Insert data into idealcheckout-table
			$sql = "INSERT INTO `" . $aDatabaseSettings['table'] . "` SET 
`id` = NULL, 
`order_id` = '" . idealcheckout_escapeSql($sOrderId) . "', 
`order_code` = '" . idealcheckout_escapeSql($sOrderCode) . "', 
`order_params` = '" . idealcheckout_escapeSql(serialize($aOrderParams)) . "', 
`store_code` = " . (empty($sStoreCode) ? "NULL" : "'" . idealcheckout_escapeSql($sStoreCode) . "'") . ", 
`gateway_code` = '" . idealcheckout_escapeSql($sGatewayCode) . "', 
`language_code` = " . (empty($sLanguageCode) ? "NULL" : "'" . idealcheckout_escapeSql($sLanguageCode) . "'") . ", 
`country_code` = " . (empty($sCountryCode) ? "NULL" : "'" . idealcheckout_escapeSql($sCountryCode) . "'") . ", 
`currency_code` = '" . idealcheckout_escapeSql($sCurrencyCode) . "', 
`transaction_id` = '" . idealcheckout_escapeSql($sTransactionId) . "', 
`transaction_code` = '" . idealcheckout_escapeSql($sTransactionCode) . "', 
`transaction_params` = NULL, 
`transaction_date` = '" . idealcheckout_escapeSql(time()) . "', 
`transaction_amount` = '" . idealcheckout_escapeSql($fTransactionAmount) . "', 
`transaction_description` = '" . idealcheckout_escapeSql($sTransactionDescription) . "', 
`transaction_status` = NULL, 
`transaction_url` = NULL, 
`transaction_payment_url` = '" . idealcheckout_escapeSql($sTransactionPaymentUrl) . "', 
`transaction_success_url` = '" . idealcheckout_escapeSql($sTransactionSuccessUrl) . "', 
`transaction_pending_url` = '" . idealcheckout_escapeSql($sTransactionPendingUrl) . "', 
`transaction_failure_url` = '" . idealcheckout_escapeSql($sTransactionFailureUrl) . "', 
`transaction_log` = NULL;";


			// Add record to transaction table
			Mage::getSingleton('core/resource')->getConnection('core_write')->query($sql);



			// Return Mister Cash URL
			$sSetupUrl = Mage::getBaseUrl() . 'idealcheckout/setup.php?order_id=' . $sOrderId . '&order_code=' . $sOrderCode;
			$sSetupUrl = $this->fixUrl($sSetupUrl, true);
			return $sSetupUrl;
		}

		// Validate payment after user returns from Mister Cash - called in: IdealcheckoutminitixController->returnAction()
		public function validatePayment($sOrderId, $sOrderCode)
		{
			// Load database settings
			$aDatabaseSettings = idealcheckout_getDatabaseSettings();

			// Set default state & reply
			$sState = Mage_Sales_Model_Order::STATE_CANCELED;
			$bReply = false;
			$bRestoreCart = false;

			// Find transaction record in database
			$sql = "SELECT * FROM `" . $aDatabaseSettings['table'] . "` WHERE (`order_id` = '" . idealcheckout_escapeSql($sOrderId) . "') AND (`order_code` = '" . idealcheckout_escapeSql($sOrderCode) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = Mage::getSingleton('core/resource')->getConnection('core_read')->fetchAll($sql);

			// See if record is available
			if(isset($oRecordset[0]['transaction_status'])) // if(sizeof($oRecordset))
			{
				$sTransactionStatus = $oRecordset[0]['transaction_status'];

				// Load order
				$this->_order = Mage::getModel('sales/order')->loadByIncrementId($oRecordset[0]['order_id']);

				if(in_array($sTransactionStatus, array('SUCCESS')))
				{
					$sState = Mage_Sales_Model_Order::STATE_PROCESSING;
					$bReply = true;
				}
				elseif(in_array($sTransactionStatus, array('PENDING')))
				{
					$sState = Mage_Sales_Model_Order::STATE_PENDING_PAYMENT;
				}
				elseif(in_array($sTransactionStatus, array('OPEN')))
				{
					header('Location: ' . $oRecordset[0]['transaction_url']);
					exit;
				}
				elseif(in_array($sTransactionStatus, array('')))
				{
					$sSetupUrl = Mage::getBaseUrl() . 'idealcheckout/setup.php?order_id=' . $sOrderId . '&order_code=' . $sOrderCode;
					$sSetupUrl = $this->fixUrl($sSetupUrl, true);

					header('Location: ' . $sSetupUrl);
					exit;
				}
				else // if(in_array($sTransactionStatus, array('EXPIRED', 'CANCELLED', 'FAILURE')))
				{
					$sState = Mage_Sales_Model_Order::STATE_CANCELED;
					$bRestoreCart = true;
				}


				// update order status
				if(strcmp($sState, $this->_order->getState()) !== 0)
				{
					$this->_order->setState($sState, true);
					$this->_order->save();
				}


				// Send mails
				if($bReply)
				{
					$this->_order->sendNewOrderEmail();
					$this->_order->setEmailSent(true);
					$this->_order->save();
				}


				// Try to restore cart
				if($bRestoreCart)
				{
					$oSession = Mage::getSingleton('checkout/session');
					$oCart = Mage::getSingleton('checkout/cart');
					$aItems = $this->_order->getItemsCollection();

					foreach($aItems as $oItem) 
					{
						try
						{
							$oCart->addOrderItem($oItem);
						}
						catch(Exception $e)
						{
						}
					}

					$oCart->save();
				}
			}

			return $bReply;
		}

		protected function fixUrl($sUrl, $bRemoveLanguageCode = false)
		{
			if($bRemoveLanguageCode)
			{
				$sRegex = '/\/[a-z]{2,2}\//';

				while(preg_match($sRegex, $sUrl))
				{
					$sUrl = preg_replace($sRegex, '/', $sUrl);
				}
			}

			// Remove /index.php/ from URL
			while(strpos($sUrl, '/index.php/') !== false)
			{
				$sUrl = str_replace('/index.php/', '/', $sUrl);
			}

			// Remove ___SID from query string
			$sUrl = str_replace('/?___SID=U/', '/', $sUrl);

			// Replace // with /
			$sUrl = substr($sUrl, 0, 10) . str_replace('//', '/', substr($sUrl, 10));

			return $sUrl;
		}
	}

?>