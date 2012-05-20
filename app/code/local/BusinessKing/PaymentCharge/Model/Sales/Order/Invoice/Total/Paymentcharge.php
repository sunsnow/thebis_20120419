<?php

class BusinessKing_PaymentCharge_Model_Sales_Order_Invoice_Total_Paymentcharge extends Mage_Sales_Model_Order_Invoice_Total_Abstract
{
    public function collect(Mage_Sales_Model_Order_Invoice $invoice)
    {
    	$invoice->setPaymentCharge(0);
        $invoice->setBasePaymentCharge(0);

        /*$hasInvoices = $invoice->getOrder()->hasInvoices();        
        $paymentMethod = $invoice->getOrder()->getPayment()->getMethod();
        if ($paymentMethod) { //&& !$hasInvoices 
        	$chargeType = Mage::getStoreConfig('payment/'.strval($paymentMethod).'/charge_type');
        	$chargeValue = Mage::getStoreConfig('payment/'.strval($paymentMethod).'/charge_value');
        	if ($chargeValue) {
        		if ($chargeType=="percentage") {
        			$subTotal = $invoice->getSubtotal();
        			$amount = $subTotal * intval($chargeValue) / 100;
        		}
        		else {
        			$amount = intval($chargeValue);        			
        		}
            	$invoice->setPaymentCharge($amount);
            	$invoice->setBasePaymentCharge($amount);
        	}           
        }

        $invoice->setGrandTotal($invoice->getGrandTotal() + $invoice->getPaymentCharge());
        $invoice->setBaseGrandTotal($invoice->getBaseGrandTotal() + $invoice->getBasePaymentCharge());
		*/
    	
    	$amount = $invoice->getOrder()->getPaymentCharge();        
        $invoice->setPaymentCharge($amount);
        
        $amount = $invoice->getOrder()->getBasePaymentCharge();
        $invoice->setBasePaymentCharge($amount);
        
        $invoice->setGrandTotal($invoice->getGrandTotal() + $invoice->getPaymentCharge());
        $invoice->setBaseGrandTotal($invoice->getBaseGrandTotal() + $invoice->getBasePaymentCharge());

        return $this;
    }
}