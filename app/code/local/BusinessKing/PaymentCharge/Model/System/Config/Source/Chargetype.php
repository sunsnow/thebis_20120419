<?php 

/**
 * @category   BusinessKing
 * @package    BusinessKing_PaymentCharge
 */
class BusinessKing_PaymentCharge_Model_System_Config_Source_Chargetype extends Varien_Object
{
    public function toOptionArray()
    { 
    	 return array(
            array('value'=>'fixed', 'label'=>Mage::helper('adminhtml')->__('Fixed')),
            array('value'=>'percentage', 'label'=>Mage::helper('adminhtml')->__('Percentage of subtotal')),
        );   
    }   
}