<?php
class Magestore_OneStepCheckout_Model_Source_Reloadpayment {

	public function toOptionArray() 
	{
		$options = array();		
		$options[] = array('label' => 'If all fields are filled ', 'value' => '1');
		$options[] = array('label' => 'If one field is changed ', 'value' => '2');
		return $options;
	}
}