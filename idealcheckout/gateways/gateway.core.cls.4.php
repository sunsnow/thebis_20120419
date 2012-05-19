<?php

	class GatewayCore
	{
		var $oRecord = false;
		var $aSettings = false;


		function GatewayCore()
		{
			$this->init();
		}
		
	
		// Load iDEAL settings
		function init()
		{
			$this->aSettings = idealcheckout_getGatewaySettings();
		}


		// Load record from table #transactions using order_id and order_code
		function getRecordByOrder($sOrderId = false, $sOrderCode = false)
		{
			global $aIdealCheckout;

			if($sOrderId === false)
			{
				$this->oRecord = (empty($aIdealCheckout['record']) ? false : $aIdealCheckout['record']);
			}
			else
			{
				$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`order_id` = '" . idealcheckout_escapeSql($sOrderId) . "')" . ($sOrderCode === false ? "" : " AND (`order_code` = '" . idealcheckout_escapeSql($sOrderCode) . "')") . " ORDER BY `id` DESC LIMIT 1;";
				$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

				if(mysql_num_rows($oRecordset))
				{
					$this->oRecord = mysql_fetch_assoc($oRecordset);
				}
				else
				{
					$this->oRecord = false;
				}
			}

			return $this->oRecord;
		}


		// Load record from table #transactions using transaction_id and transaction_code
		function getRecordByTransaction($sTransactionId = false, $sTransactionCode = false)
		{
			global $aIdealCheckout;

			if($sTransactionId === false)
			{
				$this->oRecord = (empty($aIdealCheckout['record']) ? false : $aIdealCheckout['record']);
			}
			else
			{
				$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_id` = '" . idealcheckout_escapeSql($sTransactionId) . "')" . ($sTransactionCode === false ? "" : " AND (`transaction_code` = '" . idealcheckout_escapeSql($sTransactionCode) . "')") . " ORDER BY `id` DESC LIMIT 1;";
				$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

				if(mysql_num_rows($oRecordset))
				{
					$this->oRecord = mysql_fetch_assoc($oRecordset);
				}
				else
				{
					$this->oRecord = false;
				}
			}

			return $this->oRecord;
		}

/*
		// Setup payment
		function doSetup()
		{
			idealcheckout_output('<p>Invalid iDEAL setup request.</p>');
		}


		// Execute payment
		function doTransaction()
		{
			idealcheckout_output('<p>Invalid iDEAL transaction request.</p>');
		}


		// Catch return
		function doReturn()
		{
			idealcheckout_output('<p>Invalid iDEAL return request.</p>');
		}


		// Catch report
		function doReport()
		{
			idealcheckout_output('<p>Invalid iDEAL report request.</p>');
		}


		// Validate all open transactions
		function doValidate()
		{
			idealcheckout_output('<p>This gateway doesn\'t support a validation request.</p>');
		}
*/

		// Update transaction record
		function save($oRecord = false)
		{
			global $aIdealCheckout;

			if($oRecord === false)
			{
				$oRecord = $this->oRecord;
			}

			if($oRecord)
			{
				$sql = "UPDATE `" . $aIdealCheckout['database']['table'] . "` SET";

				foreach($oRecord as $k => $v)
				{
					$sql .= "`" . $k . "` = '" . idealcheckout_escapeSql($v) . "', ";
				}

				$sql = substr($sql, 0, -2) . " WHERE `id` = '" . $oRecord['id'] . "' LIMIT 1;";
				mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

				return true;
			}

			return false;
		}		
	}

?>