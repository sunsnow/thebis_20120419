<?php
class Desitex_Singleproductcat_Model_Observer
{
    public function initSingleProductRedirect($observer)
    {
        $category = $observer->getEvent()->getCategory();
        $action = $observer->getEvent()->getControllerAction();
        if (1 == $category->getProductCount()){
            $url = $category->getProductCollection()->getFirstItem()->getProductUrl();
            return $action->getResponse()->setRedirect($url);
        }
    }
}