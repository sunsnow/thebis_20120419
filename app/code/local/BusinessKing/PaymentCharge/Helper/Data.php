<?php

class BusinessKing_PaymentCharge_Helper_Data extends Mage_Core_Helper_Abstract
{
	/**
	 * Get payment charge
	 * @param string $code
	 * @param Mage_Sales_Model_Quote $quote
	 * @return float
	 */
	public function getPaymentCharge($code, $quote=null)
	{
		if (is_null($quote)) {
			$quote = Mage::getSingleton('checkout/session')->getQuote();
		}
		$amount = 0;
		$address = $quote->isVirtual() ? $quote->getBillingAddress() : $quote->getShippingAddress();
		
		if (preg_match("/paypal/i", strval($code))) {
			$chargeType = Mage::getStoreConfig('paypal/account/charge_type');
        	$chargeValue = Mage::getStoreConfig('paypal/account/charge_value');
		}
		else {
			$chargeType = Mage::getStoreConfig('payment/'.strval($code).'/charge_type');
        	$chargeValue = Mage::getStoreConfig('payment/'.strval($code).'/charge_value');
		}
		
        if ($chargeValue ) { 
        	if ($chargeType=="percentage") {
        		$subTotal = $address->getSubtotal();        			
        		$amount = $subTotal * floatval($chargeValue) / 100;
        	}
        	else {
        		$amount = floatval($chargeValue);        			       			      			
        	}            	
        }		
		//return Mage::helper('core')->formatPrice($amount);
		return $amount;
	}
}
