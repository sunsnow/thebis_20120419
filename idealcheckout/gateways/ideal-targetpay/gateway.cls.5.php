<?php

	class Gateway extends GatewayCore
	{
		// Load iDEAL settings
		public function __construct()
		{
			$this->init();
		}

		
		// Setup payment
		public function doSetup()
		{
			global $aIdealCheckout;

			$sHtml = '';

			// Look for proper GET's en POST's
			if(empty($_GET['order_id']) || empty($_GET['order_code']))
			{
				$sHtml .= '<p>Invalid issuer request.</p>';
			}
			else
			{
				$sOrderId = $_GET['order_id'];
				$sOrderCode = $_GET['order_code'];


				// Lookup transaction
				if($this->getRecordByOrder())
				{
					if(strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
					{
						$sHtml .= '<p>Transaction already completed</p>';
					}
					elseif((strcmp($this->oRecord['transaction_status'], 'OPEN') === 0) && !empty($this->oRecord['transaction_url']))
					{
						header('Location: ' . $this->oRecord['transaction_url']);
						exit;
					}
					else
					{
						$sHtml .= '
<form action="' . htmlspecialchars(idealcheckout_getRootUrl() . 'transaction.php?order_id=' . $sOrderId . '&order_code=' . $sOrderCode) . '" method="post" id="checkout">
	<p><b>Kies uw bank</b><br><select name="issuer_id" style="margin: 6px; width: 200px;"><script src="' . ((isset($_SERVER['HTTPS']) && (strcasecmp($_SERVER['HTTPS'], 'on') === 0)) ? 'https://' : 'http://') . 'www.targetpay.com/ideal/issuers-nl.js"></script></select><br><input type="submit" value="Verder"></p>.
</form>';
					}
				}
				else
				{
					$sHtml .= '<p>Invalid issuer request.</p>';
				}
			}

			idealcheckout_output($sHtml);
		}


		// Execute payment
		public function doTransaction()
		{
			$sHtml = '';

			// Look for proper GET's en POST's
			if(empty($_POST['issuer_id']) && !empty($_GET['order_id']) && !empty($_GET['order_code']))
			{
				header('Location: ' . idealcheckout_getRootUrl() . 'setup.php?order_id=' . $_GET['order_id'] . '&order_code=' . $_GET['order_code']);
				exit;
			}
			elseif(empty($_POST['issuer_id']) || empty($_GET['order_id']) || empty($_GET['order_code']))
			{
				$sHtml .= '<p>Invalid transaction request.</p>';
			}
			else
			{
				$sIssuerId = $_POST['issuer_id'];
				$sOrderId = $_GET['order_id'];
				$sOrderCode = $_GET['order_code'];

				// Lookup transaction
				if($this->getRecordByOrder())
				{
					if(strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
					{
						$sHtml .= '<p>Transaction already completed</p>';
					}
					elseif((strcmp($this->oRecord['transaction_status'], 'OPEN') === 0) && !empty($this->oRecord['transaction_url']))
					{
						header('Location: ' . $this->oRecord['transaction_url']);
						exit;
					}
					else
					{
						$sReturnUrl = str_replace(array(' '), array('%20'), idealcheckout_getRootUrl()) . 'return.php?transaction_code=' . urlencode($this->oRecord['transaction_code']);
						$sReportUrl = str_replace(array(' '), array('%20'), idealcheckout_getRootUrl()) . 'report.php?transaction_code=' . urlencode($this->oRecord['transaction_code']);

						// $oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], $this->oRecord['language_code'], $this->oRecord['country_code'], $this->oRecord['currency_code']);
						$oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], 'NL', 'NL', 'EUR');
						$aTransactionData = $oGateway->doTransactionRequest($sIssuerId, $this->oRecord['transaction_amount'], $this->oRecord['transaction_description'], $sReturnUrl, $sReportUrl);

						if(is_array($aTransactionData))
						{
							if(empty($this->oRecord['transaction_log']) == false)
							{
								$this->oRecord['transaction_log'] .= "\n\n";
							}

							$this->oRecord['transaction_log'] .= 'Executing TransactionRequest on ' . date('Y-m-d, H:i:s') . '. Recieved: ' . $aTransactionData['transaction_id'];
							$this->oRecord['transaction_id'] = $aTransactionData['transaction_id'];
							$this->oRecord['transaction_url'] = $aTransactionData['transaction_url'];
							$this->oRecord['transaction_status'] = 'OPEN';
							$this->oRecord['transaction_date'] = time();

							$this->save();

							// die('<a href="' . $aTransactionData['transaction_url'] . '">' . $aTransactionData['transaction_url'] . '</a>');
							header('Location: ' . $aTransactionData['transaction_url']);
							exit;
						}
						else
						{
							$sHtml .= '<p>Invalid response from TargetPay server</p><code>' . $aTransactionData . '</code>';
						}
					}
				}
				else
				{
					$sHtml .= '<p>Invalid transaction request.</p>';
				}
			}

			idealcheckout_output($sHtml);
		}


		// Catch return
		public function doReturn()
		{
			$sHtml = '';

			if(empty($_GET['trxid']) || empty($_GET['ec']) || empty($_GET['transaction_code']))
			{
				$sHtml .= '<p>Invalid return request.</p>';
			}
			else
			{
				$sTransactionId = $_GET['trxid'];
				$sTransactionCode = $_GET['transaction_code'];

				
				// Lookup record
				if($this->getRecordByTransaction())
				{
					// Transaction already finished
					if(strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
					{
						if($this->oRecord['transaction_success_url'])
						{
							header('Location: ' . $this->oRecord['transaction_success_url']);
							exit;
						}
						else
						{
							$sHtml .= '<p>Uw betaling is met succes ontvangen.<br><input style="margin: 6px;" type="button" value="Terug naar de website" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl(1)) . '\'"></p>';
						}
					}
					else
					{
						// $oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], $this->oRecord['language_code'], $this->oRecord['country_code'], $this->oRecord['currency_code']);
						$oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], 'NL', 'NL', 'EUR');
						$sTransactionStatus = $oGateway->doStatusRequest($sTransactionId, true, $this->aSettings['TEST_MODE']);

						if($sTransactionStatus)
						{
							$this->oRecord['transaction_status'] = $sTransactionStatus;

							if(empty($this->oRecord['transaction_log']) == false)
							{
								$this->oRecord['transaction_log'] .= "\n\n";
							}

							$this->oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . ' for #' . $sTransactionId . '. Recieved: ' . $this->oRecord['transaction_status'];


							$this->save();



							// Handle status change
							if(function_exists('idealcheckout_update_order_status'))
							{
								idealcheckout_update_order_status($this->oRecord, 'doReturn');
							}


							// Set status message
							if(strcasecmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
							{
								$sHtml .= '<p>Uw betaling is met succes ontvangen.<br><input style="margin: 6px;" type="button" value="Terug naar de website" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl(1)) . '\'"></p>';
							}
							elseif((strcasecmp($this->oRecord['transaction_status'], 'OPEN') === 0) && !empty($this->oRecord['transaction_url']))
							{
								$sHtml .= '<p>Uw betaling is nog niet afgerond.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars($this->oRecord['transaction_url']) . '\'"></p>';
							}
							else
							{
								if(strcasecmp($this->oRecord['transaction_status'], 'CANCELLED') === 0)
								{
									$sHtml .= '<p>Uw betaling is geannuleerd. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}
								elseif(strcasecmp($this->oRecord['transaction_status'], 'EXPIRED') === 0)
								{
									$sHtml .= '<p>Uw betaling is mislukt. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}
								else // if(strcasecmp($this->oRecord['transaction_status'], 'FAILURE') === 0)
								{
									$sHtml .= '<p>Uw betaling is mislukt. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}


								if($this->oRecord['transaction_payment_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_payment_url']) . '">kies een andere betaalmethode</a></p>';
								}
								elseif($this->oRecord['transaction_failure_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_failure_url']) . '">ik kan niet via iDEAL betalen</a></p>';
								}
							}


							if($this->oRecord['transaction_success_url'] && (strcasecmp($this->oRecord['transaction_status'], 'SUCCESS') === 0))
							{
								header('Location: ' . $this->oRecord['transaction_success_url']);
								exit;
							}
						}
						else
						{
							$sHtml .= '<p>Invalid response from TargetPay server</p><code>' . $sTransactionStatus . '</code>';
						}
					}
				}
				else
				{
					$sHtml .= '<p>Invalid return request.</p>';
				}
			}

			idealcheckout_output($sHtml);
		}


		// Catch report
		public function doReport()
		{
			$sHtml = '';

			if(empty($_GET['trxid']) || empty($_GET['status']) || empty($_GET['transaction_code']))
			{
				$sHtml .= '<p>Invalid report request.</p>';
			}
			else
			{
				$sTransactionId = $_GET['trxid'];
				$sTransactionCode = $_GET['transaction_code'];
				$sTransactionStatus = $_GET['status'];

				// Lookup record
				if($this->getRecordByTransaction())
				{
					// $oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], $this->oRecord['language_code'], $this->oRecord['country_code'], $this->oRecord['currency_code']);
					$oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], 'NL', 'NL', 'EUR');
					$sTransactionStatus = $oGateway->doStatusRequest($sTransactionId, true, $this->aSettings['TEST_MODE']);

					if($sTransactionStatus)
					{
						$this->oRecord['transaction_status'] = $sTransactionStatus;

						if(empty($this->oRecord['transaction_log']) == false)
						{
							$this->oRecord['transaction_log'] .= "\n\n";
						}

						$this->oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . ' for #' . $sTransactionId . '. Recieved: ' . $this->oRecord['transaction_status'];

						$this->save();



						// Handle status change
						if(function_exists('idealcheckout_update_order_status'))
						{
							idealcheckout_update_order_status($this->oRecord, 'doReport');
						}

						$sHtml .= '<p>De transactie status is bijgewerkt.</p>';
					}
					else
					{
						$sHtml .= '<p>Invalid response from TargetPay server</p><code>' . $sTransactionStatus . '</code>';
					}
				}
				else
				{
					$sHtml .= '<p>Invalid report request.</p>';
				}
			}

			idealcheckout_output($sHtml);
		}


		// Validate all open transactions
		public function doValidate()
		{
			global $aIdealCheckout; 

			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_status` = 'OPEN') AND " . (empty($aIdealCheckout['record']['store_code']) ? "((`store_code` IS NULL) OR (`store_code` = ''))" : "(`store_code` = '" . idealcheckout_escapeSql($aIdealCheckout['record']['store_code']) . "')") . " AND ((`transaction_success_url` IS NULL) OR (`transaction_success_url` = '') OR (`transaction_success_url` LIKE '" . idealcheckout_escapeSql(idealcheckout_getRootUrl(1)) . "%')) ORDER BY `id` ASC;";
			$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

			$sHtml = '<b>Controle van openstaande transacties.</b><br>';

			if(mysql_num_rows($oRecordset))
			{
				while($oRecord = mysql_fetch_assoc($oRecordset))
				{
					// $oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], $this->oRecord['language_code'], $this->oRecord['country_code'], $this->oRecord['currency_code']);
					$oGateway = new TP_Ideal($this->aSettings['LAYOUT_CODE'], 'NL', 'NL', 'EUR');
					$sTransactionStatus = $oGateway->doStatusRequest($oRecord['transaction_id'], true, $this->aSettings['TEST_MODE']);

					if($sTransactionStatus)
					{
						$this->oRecord['transaction_status'] = $sTransactionStatus;

						if(empty($oRecord['transaction_log']) == false)
						{
							$oRecord['transaction_log'] .= "\n\n";
						}

						$oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . ' for #' . $oRecord['transaction_id'] . '. Recieved: ' . $oRecord['transaction_status'];

						$this->save($oRecord);


						// Add to body
						$sHtml .= '<br>#' . $oRecord['transaction_id'] . ' : ' . $oRecord['transaction_status'];


						// Handle status change
						if(function_exists('idealcheckout_update_order_status'))
						{
							idealcheckout_update_order_status($oRecord, 'doValidate');
						}
					}
					else
					{
						$sHtml .= '<p>Invalid response from TargetPay server</p><code>' . $sTransactionStatus . '</code>';
					}
				}

				$sHtml .= '<br><br><br>Alle openstaande transacties zijn bijgewerkt.';
			}
			else
			{
				$sHtml .= '<br>Er zijn geen openstaande transacties gevonden.';
			}

			idealcheckout_output('<p>' . $sHtml . '</p><p>&nbsp;</p><p><input type="button" value="Venster sluiten" onclick="javascript: window.close();"></p>');
		}
	}

?>