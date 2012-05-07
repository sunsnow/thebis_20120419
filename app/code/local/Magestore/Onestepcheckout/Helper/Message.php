<?php
class Magestore_Onestepcheckout_Helper_Message extends Mage_GiftMessage_Helper_Message {
	public function getInline($type, Varien_Object $entity, $dontDisplayContainer=false) {
		if (in_array($type, array('onepage_checkout','multishipping_adress'))) {
			if (!$this->isMessagesAvailable('items', $entity)) {
				return '';
			}
		} elseif (!$this->isMessagesAvailable($type, $entity)) {
			return '';
		}

		return Mage::getSingleton('core/layout')->createBlock('giftmessage/message_inline')
			->setId('giftmessage_form_' . $this->_nextId++)
			->setDontDisplayContainer($dontDisplayContainer)
			->setEntity($entity)
			->setType($type)
			->setTemplate('onestepcheckout/giftmessage/inline.phtml')
			->toHtml();
	}
}