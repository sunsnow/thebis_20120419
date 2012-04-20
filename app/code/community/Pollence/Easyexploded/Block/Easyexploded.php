<?php
class Pollence_Easyexploded_Block_Easyexploded extends Mage_Core_Block_Template
{
	public function _prepareLayout()
    {
		return parent::_prepareLayout();
    }
    
     public function getEasyexploded()     
     { 
        if (!$this->hasData('easyexploded')) {
            $this->setData('easyexploded', Mage::registry('easyexploded'));
        }
        return $this->getData('easyexploded');
        
    }
}