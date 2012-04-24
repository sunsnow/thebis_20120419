<?php

class Pollence_Easyexploded_Block_Adminhtml_Easyexploded_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
  protected function _prepareForm()
  {
      $form = new Varien_Data_Form();
      $this->setForm($form);
      $fieldset = $form->addFieldset('easyexploded_form', array('legend'=>Mage::helper('easyexploded')->__('Item information')));
     
      $fieldset->addField('title', 'text', array(
          'label'     => Mage::helper('easyexploded')->__('Title'),
          'class'     => 'required-entry',
          'required'  => true,
          'name'      => 'title',
      ));

      $fieldset->addField('filename', 'file', array(
          'label'     => Mage::helper('easyexploded')->__('File'),
          'required'  => false,
          'name'      => 'filename',
	  ));
		
      $fieldset->addField('status', 'select', array(
          'label'     => Mage::helper('easyexploded')->__('Status'),
          'name'      => 'status',
          'values'    => array(
              array(
                  'value'     => 1,
                  'label'     => Mage::helper('easyexploded')->__('Enabled'),
              ),

              array(
                  'value'     => 2,
                  'label'     => Mage::helper('easyexploded')->__('Disabled'),
              ),
          ),
      ));
     
      $fieldset->addField('content', 'editor', array(
          'name'      => 'content',
          'label'     => Mage::helper('easyexploded')->__('Content'),
          'title'     => Mage::helper('easyexploded')->__('Content'),
          'style'     => 'width:700px; height:500px;',
          'wysiwyg'   => false,
          'required'  => true,
      ));
     
      if ( Mage::getSingleton('adminhtml/session')->getEasyexplodedData() )
      {
          $form->setValues(Mage::getSingleton('adminhtml/session')->getEasyexplodedData());
          Mage::getSingleton('adminhtml/session')->setEasyexplodedData(null);
      } elseif ( Mage::registry('easyexploded_data') ) {
          $form->setValues(Mage::registry('easyexploded_data')->getData());
      }
      return parent::_prepareForm();
  }
}