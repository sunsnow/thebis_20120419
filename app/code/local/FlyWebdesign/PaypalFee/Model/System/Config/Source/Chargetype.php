<?php 

/**
 * @category   FlyWebdesign
 * @package    FlyWebdesign_PaypalFee
 */
class FlyWebdesign_PaypalFee_Model_System_Config_Source_Chargetype extends Varien_Object
{
    public function toOptionArray()
    { 
    	 return array(
            array('value'=>'fixed', 'label'=>Mage::helper('adminhtml')->__('Fixed')),
            array('value'=>'percentage', 'label'=>Mage::helper('adminhtml')->__('Percentage of subtotal')),
        );   
    }   
}