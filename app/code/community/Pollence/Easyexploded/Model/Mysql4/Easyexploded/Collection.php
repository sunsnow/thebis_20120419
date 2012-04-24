<?php

class Pollence_Easyexploded_Model_Mysql4_Easyexploded_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('easyexploded/easyexploded');
    }
}