<?php

	// Load setup
	require_once(dirname(__FILE__) . '/includes/init.php');

	$oGateway = new Gateway();
	$oGateway->doTransaction();

?>