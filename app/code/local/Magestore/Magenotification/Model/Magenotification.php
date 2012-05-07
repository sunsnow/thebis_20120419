<?php

class Magestore_Magenotification_Model_Magenotification extends Mage_Core_Model_Abstract
{
    const XML_FREQUENCY_PATH    = 'magenotification/general/frequency';
    const XML_LAST_UPDATE_PATH  = 'magenotification/general/last_update';
    const XML_MAGESTORE_URL_PATH  = 'magenotification/general/magestore_url';

    public function _construct()
    {
        parent::_construct();
        $this->_init('magenotification/magenotification');
    }	
	
    public function checkUpdate()
    {
		$timestamp = Mage::getModel('core/date')->timestamp(time());
		
		if (($this->getFrequency() + $this->getLastUpdate()) > $timestamp) 
		{
			return $this;
        }

        $notificationXml = $this->getNotificationData();
        
		$noticeData = array();

        if ($notificationXml && $notificationXml->item) 
		{
            foreach ($notificationXml->item as $item) {
                $noticeData[] = array(
                    'severity'      => (int)$item->severity,
                    'date_added'    => $this->getDate((string)$item->date_added),
                    'title'         => (string)$item->title,
                    'description'   => (string)$item->description,
                    'url'           => (string)$item->url,
                );
            }
			
			if($noticeData) 
			{
				$this ->parse(array_reverse($noticeData));
				
				$this->setLastUpdate();
			}
        }
        return $this;
    }	
	
	
	public function getLastUpdate()
	{
		$timestring = Mage::getStoreConfig(self::XML_LAST_UPDATE_PATH);

		return strtotime($timestring);
	}
	
	public function setLastUpdate()
	{
		$config = Mage::getModel('core/config');
		$timestamp = Mage::getModel('core/date')->timestamp(time()); 
		
		$config ->saveConfig(self::XML_LAST_UPDATE_PATH,$timestamp);
		$config->cleanCache();
	}	
	
	public function getFrequency()
	{
		return Mage::getStoreConfig(self::XML_FREQUENCY_PATH) * 3600;
	}
	
	public function getMagestoreUrl()
	{
		$lastTimeNotice = strtotime($this->getLastNotice()->getAddedDate());
		
		return Mage::getStoreConfig(self::XML_MAGESTORE_URL_PATH) .'/magenotification/service/getfeed/lastupdatetime/'. $lastTimeNotice;
	}
	
	public function getNotificationData()
    {	
		$curl = new Varien_Http_Adapter_Curl();
        $curl->setConfig(array(
            'timeout'   => 2
        ));
        $curl->write(Zend_Http_Client::GET, $this->getMagestoreUrl(), '1.0');
        $data = $curl->read();
	
        if ($data === false) {
            return false;
        }
        $data = preg_split('/^\r?$/m', $data, 2);
        $data = trim($data[1]);
        $curl->close();

        try {
            $xml  = new SimpleXMLElement($data);
        }
        catch (Exception $e) {
            return false;
        }

        return $xml;
    }

    public function getNotificationXml()
    {
        try {
            $data = $this->getNotificationData();
            $xml  = new SimpleXMLElement($data);
        }
        catch (Exception $e) {
            $xml  = new SimpleXMLElement('<?xml version="1.0" encoding="utf-8" ?>');
        }

        return $xml;
    }

    public function getDate($rssDate)
    {
        return gmdate('Y-m-d H:i:s', strtotime($rssDate));
    }	
	
	public function parse($data)
	{
		if(count($data))
		{
			$inbox = Mage::getModel('adminnotification/inbox');
			
			try{
			foreach($data as $item)
			{
				if(! $this->is_existedUrl($item['url']) )
				{
					$inbox->setData($item)
							->save();
							
					$this->setUrl($inbox->getUrl());
					$this->setNotificationId($inbox->getId());
					$this->setAddedDate($inbox->getDateAdded());
					$this->save();
					
						//unset Id
					$this->setId(null);
					$inbox->setId(null);
				}
			}
			} catch(Exception $e) {
			
				Mage::getSingleton('core/session')->addError($e->getMessage());
			}
		}
	}
	
	public function is_existedUrl($url)
	{
		$collection = $this->getCollection()
						->addFieldToFilter('url',$url);
		if(count($collection))
			return true;
		
		return false;
	}
	
	public function getLastNotice()
	{
		$item = $this->getCollection()
						->setOrder('added_date','DESC')
						->getFirstItem();
		return $item;
	}
}