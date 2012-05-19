<?php

	class Mage_Idealcheckoutcreditcard_IdealcheckoutcreditcardController extends Mage_Core_Controller_Front_Action
	{
		protected $_code = 'idealcheckoutcreditcard'; 


		// Go to Mister Cash
		public function redirectAction()
		{
			// Load /app/code/community/Mage/Idealcheckoutcreditcard/Model/Idealcheckoutcreditcard.php
			$oIdealcheckoutcreditcardModel = Mage::getSingleton('idealcheckoutcreditcard/idealcheckoutcreditcard');


			// Create transaction record and get URL to /idealcheckoutcreditcard/setup.php
			$sIdealcheckoutcreditcardUrl = $oIdealcheckoutcreditcardModel->setupPayment();


			// redirect
			header('Location: ' . $sIdealcheckoutcreditcardUrl);
			exit();
		}


		// Return from Mister Cash
		public function returnAction() 
		{
			$oIdealcheckoutcreditcardModel = Mage::getSingleton('idealcheckoutcreditcard/idealcheckoutcreditcard');

			$sOrderId = $this->getRequest()->get('order_id');
			$sOrderCode = $this->getRequest()->get('order_code');


			if($oIdealcheckoutcreditcardModel->validatePayment($sOrderId, $sOrderCode))
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