<?php

	class Mage_Idealcheckoutpaypal_IdealcheckoutpaypalController extends Mage_Core_Controller_Front_Action
	{
		protected $_code = 'idealcheckoutpaypal'; 


		// Go to Mister Cash
		public function redirectAction()
		{
			// Load /app/code/community/Mage/Idealcheckoutpaypal/Model/Idealcheckoutpaypal.php
			$oIdealcheckoutpaypalModel = Mage::getSingleton('idealcheckoutpaypal/idealcheckoutpaypal');


			// Create transaction record and get URL to /idealcheckoutpaypal/setup.php
			$sIdealcheckoutpaypalUrl = $oIdealcheckoutpaypalModel->setupPayment();


			// redirect
			header('Location: ' . $sIdealcheckoutpaypalUrl);
			exit();
		}


		// Return from Mister Cash
		public function returnAction() 
		{
			$oIdealcheckoutpaypalModel = Mage::getSingleton('idealcheckoutpaypal/idealcheckoutpaypal');

			$sOrderId = $this->getRequest()->get('order_id');
			$sOrderCode = $this->getRequest()->get('order_code');


			if($oIdealcheckoutpaypalModel->validatePayment($sOrderId, $sOrderCode))
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