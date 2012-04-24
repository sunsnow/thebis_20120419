<?php

class Pollence_Easyexploded_Block_Adminhtml_Easyexploded_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
                 
        $this->_objectId = 'id';
        $this->_blockGroup = 'easyexploded';
        $this->_controller = 'adminhtml_easyexploded';
        
        $this->_updateButton('save', 'label', Mage::helper('easyexploded')->__('Save Item'));
        $this->_updateButton('delete', 'label', Mage::helper('easyexploded')->__('Delete Item'));
		
        $this->_addButton('saveandcontinue', array(
            'label'     => Mage::helper('adminhtml')->__('Save And Continue Edit'),
            'onclick'   => 'saveAndContinueEdit()',
            'class'     => 'save',
        ), -100);

        $this->_formScripts[] = "
            function toggleEditor() {
                if (tinyMCE.getInstanceById('easyexploded_content') == null) {
                    tinyMCE.execCommand('mceAddControl', false, 'easyexploded_content');
                } else {
                    tinyMCE.execCommand('mceRemoveControl', false, 'easyexploded_content');
                }
            }

            function saveAndContinueEdit(){
                editForm.submit($('edit_form').action+'back/edit/');
            }
        ";
    }

    public function getHeaderText()
    {
        if( Mage::registry('easyexploded_data') && Mage::registry('easyexploded_data')->getId() ) {
            return Mage::helper('easyexploded')->__("Edit Item '%s'", $this->htmlEscape(Mage::registry('easyexploded_data')->getTitle()));
        } else {
            return Mage::helper('easyexploded')->__('Add Item');
        }
    }
}