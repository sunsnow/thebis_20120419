<?php

class Pollence_Easyexploded_Model_Easyexploded extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('easyexploded/easyexploded');
    }
}