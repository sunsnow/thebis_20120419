<?php
$installer = $this;
$installer->startSetup();

$installer->run("
	ALTER TABLE {$this->getTable('sales_flat_order')} ADD `onestepcheckout_order_comment` text NULL
");

$installer->endSetup(); 