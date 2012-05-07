<?php
class Magestore_Onestepcheckout_Block_Reload extends Mage_Checkout_Block_Onepage_Abstract {
  public function __construct() {
		$this->configData = $this->_getConfigData();
	}
	
	protected function _getConfigData() {
		return Mage::helper('onestepcheckout')->getConfigData();
	}
}