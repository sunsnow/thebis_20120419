<?php

	class Mage_Idealcheckoutmistercash_IdealcheckoutmistercashController extends Mage_Core_Controller_Front_Action
	{
		protected $_code = 'idealcheckoutmistercash'; 


		// Go to Mister Cash
		public function redirectAction()
		{
			// Load /app/code/community/Mage/Idealcheckoutmistercash/Model/Idealcheckoutmistercash.php
			$oIdealcheckoutmistercashModel = Mage::getSingleton('idealcheckoutmistercash/idealcheckoutmistercash');


			// Create transaction record and get URL to /idealcheckoutmistercash/setup.php
			$sIdealcheckoutmistercashUrl = $oIdealcheckoutmistercashModel->setupPayment();


			// redirect
			header('Location: ' . $sIdealcheckoutmistercashUrl);
			exit();
		}


		// Return from Mister Cash
		public function returnAction() 
		{
			$oIdealcheckoutmistercashModel = Mage::getSingleton('idealcheckoutmistercash/idealcheckoutmistercash');

			$sOrderId = $this->getRequest()->get('order_id');
			$sOrderCode = $this->getRequest()->get('order_code');


			if($oIdealcheckoutmistercashModel->validatePayment($sOrderId, $sOrderCode))
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