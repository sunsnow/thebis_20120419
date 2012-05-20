<?php

/**
 * @category   BusinessKing
 * @package    BusinessKing_PaymentCharge
 */
class BusinessKing_PaymentCharge_Model_Sales_Quote_Address_Total_Paymentcharge extends Mage_Sales_Model_Quote_Address_Total_Abstract
{
    public function __construct()
    {
        $this->setCode('payment_charge');
    }

    public function collect(Mage_Sales_Model_Quote_Address $address)
    {
        $address->setPaymentCharge(0);
        $address->setBasePaymentCharge(0);
        
    	$items = $address->getAllItems();
        if (!count($items)) {
            return $this;
        }
        
        $paymentMethod = $address->getQuote()->getPayment()->getMethod();
        if ($paymentMethod) { 
        	$amount = Mage::helper('paymentcharge')->getPaymentCharge($paymentMethod, $address->getQuote());
        	$address->setPaymentCharge($amount);
            $address->setBasePaymentCharge($amount);
        }
        
        $address->setGrandTotal($address->getGrandTotal() + $address->getPaymentCharge());
        $address->setBaseGrandTotal($address->getBaseGrandTotal() + $address->getBasePaymentCharge());
        return $this;
    }

    public function fetch(Mage_Sales_Model_Quote_Address $address)
    {
        $amount = $address->getPaymentCharge();
        if (($amount!=0)) {
            $address->addTotal(array(
                'code' => $this->getCode(),
                'title' => Mage::helper('sales')->__('Payment Charge'),
                'full_info' => array(),
                'value' => $amount
            ));
        }
        return $this;
    }
}