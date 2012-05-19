<?php


	// Update order status when required
	function idealcheckout_update_order_status($oRecord, $sView)
	{
		if(in_array($sView, array('doReport', 'doReturn', 'doValidate')))
		{
			$aDatabaseSettings = idealcheckout_getDatabaseSettings($oRecord['store_code']);

			$sComment = '';
			$sOrderState = false;

			if(in_array($sView, array('doReport', 'doReturn')))
			{
				$sComment = 'Status rapportage ontvangen van Payment Service Provider.';
			}
			else // if(in_array($sView, array('doValidate')))
			{
				$sComment = 'Status ontvangen na handmatige controle van openstaande transacties.';
			}
			


			// Find order state
			if($oRecord['transaction_status'] == 'SUCCESS')
			{
				$sOrderState = 'processing';
			}
			elseif($oRecord['transaction_status'] == 'PENDING')
			{
				$sOrderState = 'pending_payment';
			}
			elseif($oRecord['transaction_status'] == 'OPEN')
			{
				$sOrderState = 'pending_payment';
			}
			elseif($oRecord['transaction_status'] == 'FAILURE')
			{
				$sOrderState = 'canceled';
			}
			else
			{
				$sOrderState = 'canceled';
			}


			// Find real order id
			$sql = "SELECT `entity_id` FROM `" . $aDatabaseSettings['prefix'] . "sales_flat_order` WHERE (`increment_id` = '" . $oRecord['order_id'] . "') LIMIT 1;";
			$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

			if($oOrder = mysql_fetch_assoc($oRecordset))
			{
				if($sOrderId = $oOrder['entity_id'])
				{
					if(in_array($oRecord['transaction_status'], array('SUCCESS')))
					{
						// Update order status
						$sql = "UPDATE `" . $aDatabaseSettings['prefix'] . "sales_flat_order` SET `state` = '" . idealcheckout_escapeSql($sOrderState) . "', `status` = '" . idealcheckout_escapeSql($sOrderState) . "', `base_total_paid` = '" . idealcheckout_escapeSql($oRecord['transaction_amount']) . "', `total_paid` = '" . idealcheckout_escapeSql($oRecord['transaction_amount']) . "' WHERE (`entity_id` = '" . idealcheckout_escapeSql($sOrderId) . "') LIMIT 1;";
						mysql_query($sql);

						$sql = "UPDATE `" . $aDatabaseSettings['prefix'] . "sales_flat_order_grid` SET `status` = '" . idealcheckout_escapeSql($sOrderState) . "', `base_total_paid` = '" . idealcheckout_escapeSql($oRecord['transaction_amount']) . "', `total_paid` = '" . idealcheckout_escapeSql($oRecord['transaction_amount']) . "' WHERE (`entity_id` = '" . idealcheckout_escapeSql($sOrderId) . "') LIMIT 1;";
						mysql_query($sql);
					}
					else
					{
						// Update order status
						$sql = "UPDATE `" . $aDatabaseSettings['prefix'] . "sales_flat_order` SET `state` = '" . idealcheckout_escapeSql($sOrderState) . "', `status` = '" . idealcheckout_escapeSql($sOrderState) . "' WHERE (`entity_id` = '" . idealcheckout_escapeSql($sOrderId) . "') LIMIT 1;";
						mysql_query($sql);

						$sql = "UPDATE `" . $aDatabaseSettings['prefix'] . "sales_flat_order_grid` SET `status` = '" . idealcheckout_escapeSql($sOrderState) . "' WHERE (`entity_id` = '" . idealcheckout_escapeSql($sOrderId) . "') LIMIT 1;";
						mysql_query($sql);
					}


					// Update order history
					$sql = "INSERT INTO `" . $aDatabaseSettings['prefix'] . "sales_flat_order_status_history` (`entity_id`, `parent_id`, `is_customer_notified`, `is_visible_on_front`, `comment`, `status`, `created_at`) VALUES (NULL, '" . idealcheckout_escapeSql($sOrderId) . "', 0, 1, '" . idealcheckout_escapeSql($sComment) . "', '" . idealcheckout_escapeSql($sOrderState) . "', '" . date('Y-m-d H:i:s') . "');";
					mysql_query($sql);

					// Update stock?!
					// ..



					// Send confirmation email to client and/or webmaster?!
					$sEmailTo = 'webmaster@example.com';
					$sEmailSubject = 'Status update voor order: ' . $oRecord['order_id'];
					$sEmailMessage = 'Er is een betaling gestart voor order ' . $oRecord['order_id'] . ' via ' . $oRecord['gateway_code'] . '.' . "\n" . 'De Payment Service Provider rapporteerde als transactie status: ' . $oRecord['transaction_status'];
					$sEmailHeaders = 'From: noreply@example.com';

					// mail($sEmailTo, $sEmailSubject, $sEmailMessage, $sEmailHeaders);
				}
			}
		}
	}


?>