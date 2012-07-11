<?php
class RapidCommerce_Defaultdestination_Model_Observer {
	public function handleCollect($observer) {
		if (!Mage::getStoreConfig('shipping/origin/applydefaultstoemptyquote'))
			return $this;
			
		$quote = $observer->getEvent()->getQuote();
		$shippingAddress = $quote->getShippingAddress();
		$billingAddress = $quote->getBillingAddress();
		$saveQuote = false;
		if (!$shippingAddress->getCountryId()) {
			$country = Mage::getStoreConfig('shipping/origin/country_id');
			$state = Mage::getStoreConfig('shipping/origin/region_id');
			$postcode = Mage::getStoreConfig('shipping/origin/postcode');
			$method = Mage::getStoreConfig('shipping/origin/shippingmethod');
			
			$shippingAddress
				->setCountryId($country)
				->setRegionId($state)
				->setPostcode($postcode)
				->setShippingMethod($method)
				->setCollectShippingRates(true);
			$shippingAddress->save();
			
			$saveQuote = true;
		}
		if (Mage::getStoreConfig('shipping/origin/applydefaultstobillingaddress') && !$billingAddress->getCountryId()) {
			$country = Mage::getStoreConfig('shipping/origin/country_id');
			$state = Mage::getStoreConfig('shipping/origin/region_id');
			$postcode = Mage::getStoreConfig('shipping/origin/postcode');
						
			$billingAddress
				->setCountryId($country)
				->setRegionId($state)
				->setPostcode($postcode);
				
			$saveQuote = true;
			
			$quote->save();
		}
		if ($saveQuote)
			$quote->save();
		return $this;
	}
}