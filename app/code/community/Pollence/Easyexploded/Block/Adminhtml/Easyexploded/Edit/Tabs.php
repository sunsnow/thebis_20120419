<?php

class Pollence_Easyexploded_Block_Adminhtml_Easyexploded_Edit_Tabs extends Mage_Adminhtml_Block_Widget_Tabs
{

  public function __construct()
  {
      parent::__construct();
      $this->setId('easyexploded_tabs');
      $this->setDestElementId('edit_form');
      $this->setTitle(Mage::helper('easyexploded')->__('Item Information'));
  }

  protected function _beforeToHtml()
  {
      $this->addTab('form_section', array(
          'label'     => Mage::helper('easyexploded')->__('Item Information'),
          'title'     => Mage::helper('easyexploded')->__('Item Information'),
          'content'   => $this->getLayout()->createBlock('easyexploded/adminhtml_easyexploded_edit_tab_form')->toHtml(),
      ));
     
      return parent::_beforeToHtml();
  }
}