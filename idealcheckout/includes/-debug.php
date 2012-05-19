<?php

	// Allow displaying errors
	@ini_set('display_errors', 1);
	@ini_set('display_startup_errors', 1);
	// @error_reporting(E_ALL | E_STRICT);
	@error_reporting(E_ALL);
	@ini_set('log_errors', 1);
	@ini_set('error_log', dirname(dirname(__FILE__)) . '/temp/php.' . time() . '.log');

?>