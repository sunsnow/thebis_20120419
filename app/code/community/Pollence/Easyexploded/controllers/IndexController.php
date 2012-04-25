<?php
class Pollence_Easyexploded_IndexController extends Mage_Core_Controller_Front_Action
{
    public function indexAction()
    {
    	
    	/*
    	 * Load an object by id 
    	 * Request looking like:
    	 * http://site.com/easyexploded?id=15 
    	 *  or
    	 * http://site.com/easyexploded/id/15 	
    	 */
    	/* 
		$easyexploded_id = $this->getRequest()->getParam('id');

  		if($easyexploded_id != null && $easyexploded_id != '')	{
			$easyexploded = Mage::getModel('easyexploded/easyexploded')->load($easyexploded_id)->getData();
		} else {
			$easyexploded = null;
		}	
		*/
		
		 /*
    	 * If no param we load a the last created item
    	 */ 
    	/*
    	if($easyexploded == null) {
			$resource = Mage::getSingleton('core/resource');
			$read= $resource->getConnection('core_read');
			$easyexplodedTable = $resource->getTableName('easyexploded');
			
			$select = $read->select()
			   ->from($easyexplodedTable,array('easyexploded_id','title','content','status'))
			   ->where('status',1)
			   ->order('created_time DESC') ;
			   
			$easyexploded = $read->fetchRow($select);
		}
		Mage::register('easyexploded', $easyexploded);
		*/

			
		$this->loadLayout();     
		$this->renderLayout();
    }
}