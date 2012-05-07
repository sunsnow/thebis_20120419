<?php
class Magestore_Onestepcheckout_Model_Source_Layout {
	public function toOptionArray() {
		$options = array();

		$options[] = array(
			'label' => '2 Columns',
			'value' => '2columns'
		);
		
		$options[] = array(
			'label' => '3 Columns',
			'value' => '3columns'
		);
		
		return $options;
	}
}
