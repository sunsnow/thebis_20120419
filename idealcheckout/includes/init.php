<?php


	// Set default timezone (required in PHP 5+)
	if(function_exists('date_default_timezone_set'))
	{
		date_default_timezone_set('Europe/Amsterdam');
	}



	global $aIdealCheckout;
	$aIdealCheckout = array();



	require_once(dirname(__FILE__) . '/library.php');





	// Find default store & gateway
	if(isset($_GET['store']) || isset($_GET['gateway']))
	{
		$sStoreCode = (empty($_GET['store']) ? '' : $_GET['store']);
		$sGatewayCode = (empty($_GET['gateway']) ? 'ideal' : $_GET['gateway']);

		$aIdealCheckout['record'] = array('store_code' => $sStoreCode, 'gateway_code' => $sGatewayCode);
	}





	// Find database configuration
	$aIdealCheckout['database'] = idealcheckout_getDatabaseSettings();

	// Connect to database
	mysql_connect($aIdealCheckout['database']['host'], $aIdealCheckout['database']['user'], $aIdealCheckout['database']['pass']) or die('ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
	mysql_select_db($aIdealCheckout['database']['name']) or die('ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);



	// Detect order (if any)
	if(isset($_GET['order_id']) && isset($_GET['order_code'])) // Default order data
	{
		$aIdealCheckout['record'] = false;

		if(preg_match('/^([a-zA-Z0-9\-_]+)$/', $_GET['order_id']) && preg_match('/^([a-zA-Z0-9]+)$/', $_GET['order_code']))
		{
			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`order_id` = '" . idealcheckout_escapeSql($_GET['order_id']) . "') AND (`order_code` = '" . idealcheckout_escapeSql($_GET['order_code']) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = mysql_query($sql);

			if(mysql_num_rows($oRecordset))
			{
				$aIdealCheckout['record'] = mysql_fetch_assoc($oRecordset);
			}
		}

		if(!is_array($aIdealCheckout['record']))
		{
			die('ERROR: Invalid request.<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
	}
	elseif(isset($_GET['transaction_id']) && isset($_GET['transaction_code'])) // Default transaction data
	{
		$aIdealCheckout['record'] = false;

		if(preg_match('/^([a-zA-Z0-9\-_]+)$/', $_GET['transaction_id']) && preg_match('/^([a-zA-Z0-9]+)$/', $_GET['transaction_code']))
		{
			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_id` = '" . idealcheckout_escapeSql($_GET['transaction_id']) . "') AND (`transaction_code` = '" . idealcheckout_escapeSql($_GET['transaction_code']) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = mysql_query($sql);

			if(mysql_num_rows($oRecordset))
			{
				$aIdealCheckout['record'] = mysql_fetch_assoc($oRecordset);
			}
		}

		if(!is_array($aIdealCheckout['record']))
		{
			die('ERROR: Invalid request.<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
	}
	elseif(isset($_GET['trxid']) && isset($_GET['transaction_code'])) // Some PSP's
	{
		$aIdealCheckout['record'] = false;

		if(preg_match('/^([a-zA-Z0-9\-_]+)$/', $_GET['trxid']) && preg_match('/^([a-zA-Z0-9]+)$/', $_GET['transaction_code']))
		{
			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_id` = '" . idealcheckout_escapeSql($_GET['trxid']) . "') AND (`transaction_code` = '" . idealcheckout_escapeSql($_GET['transaction_code']) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = mysql_query($sql);

			if(mysql_num_rows($oRecordset))
			{
				$aIdealCheckout['record'] = mysql_fetch_assoc($oRecordset);
			}
		}

		if(!is_array($aIdealCheckout['record']))
		{
			die('ERROR: Invalid request.<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
	}
	elseif(isset($_GET['trxid']) && isset($_GET['ec'])) // iDEAL Professional/Advanced
	{
		$aIdealCheckout['record'] = false;

		if(preg_match('/^([a-zA-Z0-9\-_]+)$/', $_GET['trxid']) && preg_match('/^([a-zA-Z0-9]+)$/', $_GET['ec']))
		{
			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_id` = '" . idealcheckout_escapeSql($_GET['trxid']) . "') AND (`transaction_code` = '" . idealcheckout_escapeSql($_GET['ec']) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = mysql_query($sql);

			if(mysql_num_rows($oRecordset))
			{
				$aIdealCheckout['record'] = mysql_fetch_assoc($oRecordset);
			}
		}

		if(!is_array($aIdealCheckout['record']))
		{
			die('ERROR: Invalid request.<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
	}
	elseif((isset($_GET['ORDERID']) || isset($_GET['orderID'])) && isset($_GET['PAYID'])) // iDEAL (Internet) Kassa (OGONE)
	{
		if(!empty($_GET['orderID']))
		{
			$_GET['ORDERID'] = $_GET['orderID'];
		}

		$aIdealCheckout['record'] = false;

		if(preg_match('/^([a-zA-Z0-9\-_]+)$/', $_GET['ORDERID']))
		{
			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`order_id` = '" . idealcheckout_escapeSql($_GET['ORDERID']) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = mysql_query($sql);

			if(mysql_num_rows($oRecordset))
			{
				$aIdealCheckout['record'] = mysql_fetch_assoc($oRecordset);
			}
		}

		if(!is_array($aIdealCheckout['record']))
		{
			die('ERROR: Invalid request.<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
	}
	elseif(isset($_POST['Data']) && isset($_POST['Seal'])) // OmniKassa
	{
		$aIdealCheckout['record'] = false;

		// Find order id & transaction code
		$aData = explode('|', $_POST['Data']);

		$sOrderId = '';
		$sTransactionCode = '';

		foreach($aData as $k => $v)
		{
			if(strpos($v, '=') !== false)
			{
				$a = explode('=', $v);

				if(strcasecmp($a[0], 'transactionReference') === 0)
				{
					$sTransactionCode = $a[1];
				}
				elseif(strcasecmp($a[0], 'orderId') === 0)
				{
					$sOrderId = $a[1];
				}
			}
		}

		if(preg_match('/^([a-zA-Z0-9]+)$/', $sOrderId) && preg_match('/^([a-zA-Z0-9]+)$/', $sTransactionCode))
		{
			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_code` = '" . idealcheckout_escapeSql($sTransactionCode) . "') ORDER BY `id` DESC LIMIT 1;";
			$oRecordset = mysql_query($sql);

			if(mysql_num_rows($oRecordset))
			{
				$aIdealCheckout['record'] = mysql_fetch_assoc($oRecordset);

				if(strcmp(preg_replace('/[^a-zA-Z0-9]+/', '', $aIdealCheckout['record']['order_id']), $sOrderId) !== 0)
				{
					$aIdealCheckout['record'] = false;
				}
			}
		}

		if(!is_array($aIdealCheckout['record']))
		{
			die('ERROR: Invalid request.<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
	}





	// Load gateway configuration
	$aIdealCheckout['gateway'] = idealcheckout_getGatewaySettings();

	if(is_array($aIdealCheckout['gateway']))
	{
		if(file_exists($aIdealCheckout['gateway']['GATEWAY_FILE']) == false)
		{
			die('ERROR: Cannot load gateway file "' . $aIdealCheckout['gateway']['GATEWAY_FILE'] . '".<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);
		}
		else
		{
			require_once($aIdealCheckout['gateway']['GATEWAY_FILE']);
		}
	}

?>