<?php
class Magestore_Onestepcheckout_Model_Address extends Mage_Sales_Model_Quote_Address {
	public function validate() {
		if (Mage::helper('onestepcheckout')->enabledOnestepcheckout()) {
			$errors = array();
			$helper = Mage::helper('customer');
			$this->implodeStreetAddress();
			if (!Zend_Validate::is($this->getFirstname(), 'NotEmpty')) {
        $errors[] = $helper->__('Please enter the first name.');
			}

			if (!Zend_Validate::is($this->getLastname(), 'NotEmpty')) {
				$errors[] = $helper->__('Please enter the last name.');
			}

			if (!Zend_Validate::is($this->getStreet(1), 'NotEmpty')) {
				$errors[] = $helper->__('Please enter the street.');
			}
		}	
		else {
			return parent::validate();
		}
	}
}