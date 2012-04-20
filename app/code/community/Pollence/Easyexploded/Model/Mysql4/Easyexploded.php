<?php

class Pollence_Easyexploded_Model_Mysql4_Easyexploded extends Mage_Core_Model_Mysql4_Abstract
{
    public function _construct()
    {    
        // Note that the easyexploded_id refers to the key field in your database table.
        $this->_init('easyexploded/easyexploded', 'easyexploded_id');
    }
}