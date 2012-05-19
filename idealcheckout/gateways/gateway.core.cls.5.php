<?php

	class GatewayCore
	{
		protected $oRecord = false;
		protected $aSettings = false;

		public function __construct()
		{
			$this->init();
		}
		
		public function __call($sName, $aArguments)
		{
			if(strcmp($sName, 'doSetup') === 0)
			{
				idealcheckout_output('<p>Invalid setup request.</p>');
			}
			elseif(strcmp($sName, 'doTransaction') === 0)
			{
				idealcheckout_output('<p>Invalid transaction request.</p>');
			}
			elseif(strcmp($sName, 'doReturn') === 0)
			{
				idealcheckout_output('<p>Invalid return request.</p>');
			}
			elseif(strcmp($sName, 'doReport') === 0)
			{
				idealcheckout_output('<p>Invalid report request.</p>');
			}
			elseif(strcmp($sName, 'doValidate') === 0)
			{
				idealcheckout_output('<p>This gateway doesn\'t support a validation request.</p>');
			}
			else
			{
				die('Unknown method "' . $sName . '".');
			}
		}

	
		// Load iDEAL settings
		public function init()
		{
			$this->aSettings = idealcheckout_getGatewaySettings();
		}


		// Load record from table #transactions using order_id and order_code
		public function getRecordByOrder($sOrderId = false, $sOrderCode = false)
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
		public function getRecordByTransaction($sTransactionId = false, $sTransactionCode = false)
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


		// Update transaction record
		public function save($oRecord = false)
		{
			global $aIdealCheckout;

			if($oRecord === false)
			{
				$oRecord = $this->oRecord;
			}

			if($oRecord)
			{
				$sql = "UPDATE `" . $aIdealCheckout['database']['table'] . "` SET ";

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