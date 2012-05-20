<?php

/**
 * Adminhtml order invoice totals block
 *
 * @category    BusinessKing
 * @package     BusinessKing_PaymentCharge
 */
class BusinessKing_PaymentCharge_Block_Adminhtml_Sales_order_Invoice_Totals extends BusinessKing_PaymentCharge_Block_Adminhtml_Sales_Totals
{
    protected $_invoice = null;

    public function getInvoice()
    {
        if ($this->_invoice === null) {
            if ($this->hasData('invoice')) {
                $this->_invoice = $this->_getData('invoice');
            } elseif (Mage::registry('current_invoice')) {
                $this->_invoice = Mage::registry('current_invoice');
            } elseif ($this->getParentBlock()->getInvoice()) {
                $this->_invoice = $this->getParentBlock()->getInvoice();
            }
        }
        return $this->_invoice;
    }
    
    public function getSource()
    {
        return $this->getInvoice();
    }
    
    /**
     * Initialize order totals array
     *
     * @return Mage_Sales_Block_Order_Totals
     */
    protected function _initTotals()
    {
        parent::_initTotals();
        return $this;
    }
}
