<?php
class Magestore_OneStepCheckout_Model_Source_Ajaxbilling {
	public function toOptionArray() {
		$fields = array('Country', 'Postcode', 'State/region', 'City');
		$options = array();		
		foreach($fields as $field)	{
			$options[] = array('label' => $field, 'value' => strtolower($field));
		}
		return $options;
	}
}