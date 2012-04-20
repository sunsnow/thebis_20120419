<?php
class Pollence_Easyexploded_Block_Adminhtml_Easyexploded extends Mage_Adminhtml_Block_Widget_Grid_Container
{
  public function __construct()
  {
    $this->_controller = 'adminhtml_easyexploded';
    $this->_blockGroup = 'easyexploded';
    $this->_headerText = Mage::helper('easyexploded')->__('Item Manager');
    $this->_addButtonLabel = Mage::helper('easyexploded')->__('Add Item');
    parent::__construct();
  }
}