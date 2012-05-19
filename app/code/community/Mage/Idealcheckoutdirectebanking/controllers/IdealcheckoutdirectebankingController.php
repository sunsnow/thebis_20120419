<?php

	class Mage_Idealcheckoutdirectebanking_IdealcheckoutdirectebankingController extends Mage_Core_Controller_Front_Action
	{
		protected $_code = 'idealcheckoutdirectebanking'; 


		// Go to Direct E-Banking
		public function redirectAction()
		{
			// Load /app/code/community/Mage/Idealcheckoutdirectebanking/Model/Idealcheckoutdirectebanking.php
			$oIdealcheckoutdirectebankingModel = Mage::getSingleton('idealcheckoutdirectebanking/idealcheckoutdirectebanking');


			// Create transaction record and get URL to /idealcheckoutdirectebanking/setup.php
			$sIdealcheckoutdirectebankingUrl = $oIdealcheckoutdirectebankingModel->setupPayment();


			// redirect
			header('Location: ' . $sIdealcheckoutdirectebankingUrl);
			exit();
		}


		// Return from Direct E-Banking
		public function returnAction() 
		{
			$oIdealcheckoutdirectebankingModel = Mage::getSingleton('idealcheckoutdirectebanking/idealcheckoutdirectebanking');

			$sOrderId = $this->getRequest()->get('order_id');
			$sOrderCode = $this->getRequest()->get('order_code');

			if($oIdealcheckoutdirectebankingModel->validatePayment($sOrderId, $sOrderCode))
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