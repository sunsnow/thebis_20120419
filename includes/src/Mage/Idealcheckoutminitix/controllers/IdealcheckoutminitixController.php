<?php

	class Mage_Idealcheckoutminitix_IdealcheckoutminitixController extends Mage_Core_Controller_Front_Action
	{
		protected $_code = 'idealcheckoutminitix'; 


		// Go to Mister Cash
		public function redirectAction()
		{
			// Load /app/code/community/Mage/Idealcheckoutminitix/Model/Idealcheckoutminitix.php
			$oIdealcheckoutminitixModel = Mage::getSingleton('idealcheckoutminitix/idealcheckoutminitix');


			// Create transaction record and get URL to /idealcheckoutminitix/setup.php
			$sIdealcheckoutminitixUrl = $oIdealcheckoutminitixModel->setupPayment();


			// redirect
			header('Location: ' . $sIdealcheckoutminitixUrl);
			exit();
		}


		// Return from Mister Cash
		public function returnAction() 
		{
			$oIdealcheckoutminitixModel = Mage::getSingleton('idealcheckoutminitix/idealcheckoutminitix');

			$sOrderId = $this->getRequest()->get('order_id');
			$sOrderCode = $this->getRequest()->get('order_code');


			if($oIdealcheckoutminitixModel->validatePayment($sOrderId, $sOrderCode))
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