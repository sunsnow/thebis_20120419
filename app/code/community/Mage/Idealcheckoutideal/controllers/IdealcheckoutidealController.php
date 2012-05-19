<?php

	class Mage_Idealcheckoutideal_IdealcheckoutidealController extends Mage_Core_Controller_Front_Action
	{
		protected $_code = 'idealcheckoutideal'; 


		// Go to iDEAL
		public function redirectAction()
		{
			// Load /app/code/community/Mage/Idealcheckoutideal/Model/Idealcheckoutideal.php
			$oIdealcheckoutidealModel = Mage::getSingleton('idealcheckoutideal/idealcheckoutideal');


			// Create transaction record and get URL to /idealcheckout/setup.php
			$sIdealcheckoutidealUrl = $oIdealcheckoutidealModel->setupPayment();


			// redirect
			header('Location: ' . $sIdealcheckoutidealUrl);
			exit();
		}


		// Return from iDEAL
		public function returnAction() 
		{
			$oIdealcheckoutidealModel = Mage::getSingleton('idealcheckoutideal/idealcheckoutideal');

			$sOrderId = $this->getRequest()->get('order_id');
			$sOrderCode = $this->getRequest()->get('order_code');


			if($oIdealcheckoutidealModel->validatePayment($sOrderId, $sOrderCode))
			{ 
				$this->_redirect('checkout/onepage/success', array('_secure' => true));
			}
			else 
			{
				$this->_redirect('checkout/cart');
			} 
		}
	}

?>