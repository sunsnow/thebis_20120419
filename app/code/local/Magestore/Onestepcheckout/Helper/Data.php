<?php
class Magestore_Onestepcheckout_Helper_Data extends Mage_Core_Helper_Abstract {
	public function __construct() {
		$this->settings = $this->getConfigData();
	}
	
	public function enabledOnestepcheckout() {
		if (Mage::getStoreConfig('onestepcheckout/general/active')) {
			return true;
		}
		return false;
	}
	
	public function enableRegistration() {
		if ($this->settings['enable_registration']) {
			return true;
		}
		return false;
	}
	
	public function loadDataforDisabledFields(&$data) {
		$configData = $this->getConfigData();
		if (!$configData['show_city']) {
			$data['city'] = '-';
		}
		if (!$configData['show_zipcode']) {
			$data['postcode'] = '-';
		}
		if (!$configData['show_company']) {
			$data['company'] = '';
		}
		if (!$configData['show_fax']) {
			$data['fax'] = '';
		}
		if (!$configData['show_telephone']) {		
			$data['telephone'] = '-';
		}
		if (!$configData['show_region']) {
			$data['region'] = '-';
			$data['region_id'] = '-';
		}
		return $data;
	}
	
	public function loadEmptyData(&$data) {
		if (!isset($data['city']) || $data['city'] == '') {
			if ($this->settings['city'] != '') {
				$data['city'] = $this->settings['city'];
			}
			else {
				$data['city'] = '-';
			}
		}
		if (!isset($data['telephone']) || trim($data['telephone']) == '') {
			$data['telephone'] = '-';
		}
		if (!isset($data['postcode']) || $data['postcode'] == '') {
			if ($this->settings['postcode'] != '') {
				$data['postcode'] = $this->settings['postcode'];
			}
			else {
				$data['postcode'] = '-';
			}
		}
		if (!isset($data['region']) || $data['region'] == '') {
			$data['region'] = '-';
		}		
		if (!isset($data['region_id']) || $data['region_id'] == '') {
			if ($this->settings['region_id'] != '') {
				$data['region_id'] = $this->settings['region_id'];
			}
			else {
				$data['region_id'] = '-';
			}
		}
		if (!isset($data['country_id']) || $data['country_id'] == '') {
			if ($this->settings['country_id'] != '') {
				$data['country_id'] = $this->settings['country_id'];
			}
			else {
				$data['country_id'] = '-';
			}
		}		
		return $data;
	}
	
	public function getConfigData() {
		$configData = array();
		$configItems = array('general/active', 'general/checkout_title', 'general/checkout_description',
													'general/show_shipping_address', 'general/country_id',
													'general/default_payment', 'general/default_shipping',
													'general/postcode', 'general/region_id', 'general/city',
													'general/use_for_disabled_fields', 'general/hide_shipping_method',
													'general/page_layout',
													'field_management/show_city', 'field_management/show_zipcode',
													'field_management/show_company', 'field_management/show_fax',
													'field_management/show_telephone', 'field_management/show_region',
													'field_management/show_comment', 'field_management/show_newsletter',
													'field_management/show_discount', 'field_management/newsletter_default_checked',
													'field_management/enable_giftmessage',
													'checkout_mode/show_login_link', 'checkout_mode/enable_registration',
													'checkout_mode/allow_guest', 'checkout_mode/login_link_title',
													'ajax_update/enable_ajax', 'ajax_update/ajax_fields', 
													'ajax_update/update_payment', 
													'ajax_update/reload_payment',
													'terms_conditions/enable_terms', 'terms_conditions/term_html', 
													'terms_conditions/term_width', 'terms_conditions/term_height',
													'order_notification/enable_notification', 'order_notification/notification_email');
		foreach ($configItems as $configItem) {
			$config = explode('/', $configItem);
			$value = $config[1];
			$configData[$value] = Mage::getStoreConfig('onestepcheckout/' . $configItem);
		}		
		return $configData;
	}
	
	public function isShowShippingAddress() {
		if($this->getOnepage()->getQuote()->isVirtual())	{
			return false;
		}
		if($this->settings['show_shipping_address'])	{
			return true;
		}
		return false;
	}
	
	public function getOnePage() {
		return Mage::getSingleton('checkout/type_onepage');
	}
	
	public function getCheckoutUrl() {
		return Mage::getUrl('onestepcheckout');
	}
	
	public function savePaymentMethod($data) {
		if (empty($data)) {
			return array('error' => -1, 'message' => Mage::helper('checkout')->__('Invalid data.'));
		}
		$onepage = Mage::getSingleton('checkout/session')->getQuote();
		if ($onepage->isVirtual()) {
			$onepage->getBillingAddress()->setPaymentMethod(isset($data['method']) ? $data['method'] : null);
		} else {
			$onepage->getShippingAddress()->setPaymentMethod(isset($data['method']) ? $data['method'] : null);
		}
		$payment = $onepage->getPayment();
		$payment->importData($data);

		$onepage->save();
		
		return array();
	}
	
	public function saveShippingMethod($shippingMethod) {
		if (empty($shippingMethod)) {
			return array('error' => -1, 'message' => Mage::helper('checkout')->__('Invalid shipping method.'));
		}
		$rate = $this->getOnepage()->getQuote()->getShippingAddress()->getShippingRateByCode($shippingMethod);
		if (!$rate) {
			return array('error' => -1, 'message' => Mage::helper('checkout')->__('Invalid shipping method.'));
		}
		$this->getOnepage()->getQuote()->getShippingAddress()->setShippingMethod($shippingMethod);
		//$this->getOnepage()->getQuote()->collectTotals()->save();
		return array();
	}
	
	public function allowGuestCheckout() {
		$_quote = $this->getOnepage()->getQuote();		
		$_isAllowed = $this->settings['allow_guest'];
		if ($_isAllowed) {
			$isContain = false;
			foreach ($_quote->getAllItems() as $item) {
				if (($product = $item->getProduct()) &&
				$product->getTypeId() == Mage_Downloadable_Model_Product_Type::TYPE_DOWNLOADABLE) {
					$isContain = true;
				}
			}
			$store = Mage::app()->getStore()->getId();
			if ($isContain && Mage::getStoreConfigFlag('catalog/downloadable/disable_guest_checkout', $store)) {
				$_isAllowed = false;
			}
		}
		return $_isAllowed;
	}
	
	public function isUseDefaultDataforDisabledFields() {
		return $this->settings['use_for_disabled_fields'];
	}
	
	public function isShowNewsletter() {
		return $this->settings['show_newsletter'];
	}
	
	public function isSubscribeByDefault() {
		return $this->settings['newsletter_default_checked'];
	}
	
	public function enableOrderComment() {
		return $this->settings['show_comment'];
	}
	
	public function showDiscount() {
		return $this->settings['show_discount'];
	}
	
	public function enableTermsAndConditions() {
		return $this->settings['enable_terms'];
	}
	
	public function getTermPopupWidth() {
		return $this->settings['term_width'];
	}
	
	public function getTermPopupHeight() {
		return $this->settings['term_height'];
	}
	
	public function getTermsConditionsHtml() {
		return $this->settings['term_html'];
	}
	
	public function enableNotifyAdmin() {
		return $this->settings['enable_notification'];
	}
	
	public function getEmailArray() {
		$email_string = (string)$this->settings['notification_email'];
		if ($email_string != '') {
			$email_array = explode(",", $email_string);		
			return $email_array;
		}
		return array();
	}
	
	public function getEmailTemplate() {
		return Mage::getStoreConfig('onestepcheckout/order_notification/notification_email_template');
	}
	
	public function enableGiftMessage() {
		//return $this->settings['enable_giftmessage'];
		return Mage::getStoreConfig('sales/gift_messages/allow_order');
	}
	
	public function isHideShippingMethod() {
		$_isHide = $this->settings['hide_shipping_method'];
		if ($_isHide) {
			$_quote = $this->getOnepage()->getQuote();
			$rates = $_quote->getShippingAddress()->getShippingRatesCollection();
			$rateCodes = array();
			foreach($rates as $rate)    {
				if(!in_array($rate->getCode(), $rateCodes)) {
					$rateCodes[] = $rate->getCode();
				}
			}
			if(count($rateCodes) > 1)  {
				$_isHide = false;
			}
		}
		
		return $_isHide;
	}
	
	/*
	* Save customer comment to the order
	*/
	public function saveOrderComment($observer) {		
		if ($this->enableOrderComment()) {
			$comment = $this->_getRequest()->getPost('onestepcheckout_comment');
			$comment = trim($comment);			
			if ($comment != '') {
				$order = $observer->getEvent()->getOrder();						
				try {
					// use custom attribute to save customer comment - magento 1.3
					$order->setOnestepcheckoutOrderComment($comment);
					
					//Magento 1.4.1.1 - can not use custom attribute to save customer comment
					//$order->setCustomerNote($comment);
					
					//$order->save();
				}
				catch(Exception $e) {
					
				}
			}
		}
	}
		
	/*
	* use to load default data for disabled fields
	* only use if it is enabled
	*/
	public function setDefaultDataforDisabledFields(&$data) {
		if (!$this->settings['show_city']) {
			$data['city'] = $this->settings['city'];
		}
		if (!$this->settings['show_zipcode']) {
			$data['postcode'] = $this->settings['postcode'];
		}
		if (!$this->settings['show_region']) {
			$data['region_id'] = $this->settings['region_id'];
		}
		return $data;
	}
}