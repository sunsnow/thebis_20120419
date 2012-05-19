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
			$sHtml = '';

			// Look for proper GET's en POST's
			if(empty($_GET['order_id']) || empty($_GET['order_code']))
			{
				$sHtml .= '<p>Invalid setup request.</p>';
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
					else
					{
						$oOmniKassa = new OmniKassa('creditcard');
						$oOmniKassa->setHashKey($this->aSettings['HASH_KEY']);

						if(!empty($this->aSettings['KEY_VERSION']))
						{
							$oOmniKassa->setKeyVersion($this->aSettings['KEY_VERSION']);
						}

						$oOmniKassa->setMerchant($this->aSettings['MERCHANT_ID'], $this->aSettings['SUB_ID']);
						$oOmniKassa->setAquirer($this->aSettings['GATEWAY_NAME'], $this->aSettings['TEST_MODE']);
						
						// Set return URLs
						$oOmniKassa->setNotifyUrl(idealcheckout_getRootUrl() . 'report.php');
						$oOmniKassa->setReturnUrl(idealcheckout_getRootUrl() . 'return.php');

						// Set order details
						$oOmniKassa->setOrderId($this->oRecord['order_id']); // Unieke order referentie (tot 32 karakters)
						$oOmniKassa->setAmount($this->oRecord['transaction_amount'], $this->oRecord['currency_code']); // Bedrag (in EURO's)

						$iTry = 1;

						$aTransactionParams = array('omnikassa_try' => 1);

						if(!empty($this->oRecord['transaction_params']))
						{
							$aTransactionParams = unserialize($this->oRecord['transaction_params']);

							if(empty($aTransactionParams['omnikassa_try']))
							{
								$aTransactionParams['omnikassa_try'] = 1;
							}
							else
							{
								$aTransactionParams['omnikassa_try']++;
								$iTry = $aTransactionParams['omnikassa_try'];
							}
						}

						$this->oRecord['transaction_params'] = serialize($aTransactionParams);

						$sTransactionCode = $this->oRecord['order_id'] . 'n' . $this->oRecord['id'] . (($iTry > 1) ? 'p' . $iTry : '');

						// Save transaction_code in record
						$this->oRecord['transaction_code'] = $sTransactionCode;
						$this->save();

						$oOmniKassa->setTransactionReference($sTransactionCode);


						// Customize submit button
						$oOmniKassa->setButton('Verder >>');

						$sHtml = '<p><b>Direct online afrekenen met uw Credit Card</b></p>' . $oOmniKassa->createForm() . '</div>';

						// Add auto-submit button
						if($this->aSettings['TEST_MODE'] == false)
						{
							$sHtml .= '<script type="text/javascript"> function doAutoSubmit() { document.forms[0].submit(); } setTimeout(\'doAutoSubmit()\', 100); </script>';
						}
					}
				}
				else
				{
					$sHtml .= '<p>Invalid setup request.</p>';
				}
			}

			idealcheckout_output($sHtml);
		}


		// Catch return
		public function doReturn()
		{
			global $aIdealCheckout; 

			$sHtml = '';
			
			if(empty($_POST['Data']) || empty($_POST['Seal']))
			{
				$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Missing params in $_POST -->' : '');
			}
			else
			{
				$oOmniKassa = new OmniKassa('creditcard');
				$oOmniKassa->setHashKey($this->aSettings['HASH_KEY']);

				$aOmniKassaResponse = $oOmniKassa->validate();

				if($aOmniKassaResponse && is_array($aOmniKassaResponse))
				{
					$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_code` = '" . idealcheckout_escapeSql($aOmniKassaResponse['transaction_code']) . "') ORDER BY `id` DESC LIMIT 1;";
					$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

					if(mysql_num_rows($oRecordset))
					{
						$this->oRecord = mysql_fetch_assoc($oRecordset);

						if(strcmp(preg_replace('/[^a-zA-Z0-9]+/', '', $aIdealCheckout['record']['order_id']), $aOmniKassaResponse['order_id']) !== 0)
						{
							$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Invalid OrderId recieved -->' : '');
						}
						elseif(false && strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
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
							$this->oRecord['transaction_id'] = $aOmniKassaResponse['transaction_id'];
							$this->oRecord['transaction_status'] = $aOmniKassaResponse['transaction_status'];

							if(empty($this->oRecord['transaction_log']) == false)
							{
								$this->oRecord['transaction_log'] .= "\n\n";
							}

							$this->oRecord['transaction_log'] .= 'RETURN: Recieved status ' . $this->oRecord['transaction_status'] . ' for #' . $this->oRecord['transaction_id'] . ' on ' . date('Y-m-d, H:i:s') . '.';

							if(strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
							{
								$sHtml .= '<p>Uw betaling is met succes ontvangen.' . ($this->oRecord['transaction_success_url'] ? '<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars($this->oRecord['transaction_success_url']) . '\'">' : '') . '</p>';
							}
							elseif((strcmp($this->oRecord['transaction_status'], 'OPEN') === 0) && !empty($this->oRecord['transaction_url']))
							{
								$sHtml .= '<p>Uw betaling is nog niet afgerond.' . ($this->oRecord['transaction_url'] ? '<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars($this->oRecord['transaction_url']) . '\'">' : '') . '</p>';
							}
							else
							{
								if(strcmp($this->oRecord['transaction_status'], 'CANCELLED') === 0)
								{
									$sHtml .= '<p>Uw betaling is geannuleerd. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}
								elseif(strcmp($this->oRecord['transaction_status'], 'EXPIRED') === 0)
								{
									$sHtml .= '<p>Uw betaling is mislukt. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}
								else // if(strcmp($this->oRecord['transaction_status'], 'FAILURE') === 0)
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


							// Update transaction
							$sql = "UPDATE `" . $aIdealCheckout['database']['table'] . "` SET `transaction_date` = '" . time() . "', `transaction_id` = '" . idealcheckout_escapeSql($this->oRecord['transaction_id']) . "', `transaction_status` = '" . idealcheckout_escapeSql($this->oRecord['transaction_status']) . "', `transaction_log` = '" . idealcheckout_escapeSql($this->oRecord['transaction_log']) . "' WHERE (`id` = '" . idealcheckout_escapeSql($this->oRecord['id']) . "') LIMIT 1;";
							mysql_query($sql) or die('QUERY: ' . $sql . ', ERROR: ' . mysql_error());



							// Handle status change
							if(function_exists('idealcheckout_update_order_status'))
							{
								idealcheckout_update_order_status($this->oRecord, 'doReturn');
							}


							if($this->oRecord['transaction_success_url'] && (strcasecmp($this->oRecord['transaction_status'], 'SUCCESS') === 0))
							{
								header('Location: ' . $this->oRecord['transaction_success_url']);
								exit;
							}
						}
					}
					else
					{
						$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Cannot find record in database -->' : '');
					}
				}
				else
				{
					$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Invalid response from OmniKassa -->' : '');
				}
			}

			idealcheckout_output($sHtml);
		}


		// Catch report
		public function doReport()
		{
			global $aIdealCheckout; 

			$sHtml = '';
			
			if(empty($_POST['Data']) || empty($_POST['Seal']))
			{
				$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Missing params in $_POST -->' : '');
			}
			else
			{
				$oOmniKassa = new OmniKassa('ideal');
				$oOmniKassa->setHashKey($this->aSettings['HASH_KEY']);

				$aOmniKassaResponse = $oOmniKassa->validate();

				if($aOmniKassaResponse && is_array($aOmniKassaResponse))
				{
					$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_code` = '" . idealcheckout_escapeSql($aOmniKassaResponse['transaction_code']) . "') ORDER BY `id` DESC LIMIT 1;";
					$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

					if(mysql_num_rows($oRecordset))
					{
						$this->oRecord = mysql_fetch_assoc($oRecordset);

						if(strcmp(preg_replace('/[^a-zA-Z0-9]+/', '', $aIdealCheckout['record']['order_id']), $aOmniKassaResponse['order_id']) !== 0)
						{
							$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Invalid OrderId recieved -->' : '');
						}
						elseif(false && strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
						{
							$sHtml .= '<p>Uw betaling is met succes ontvangen.<br><input style="margin: 6px;" type="button" value="Terug naar de website" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl(1)) . '\'"></p>';
						}
						else
						{
							$this->oRecord['transaction_id'] = $aOmniKassaResponse['transaction_id'];
							$this->oRecord['transaction_status'] = $aOmniKassaResponse['transaction_status'];

							if(empty($this->oRecord['transaction_log']) == false)
							{
								$this->oRecord['transaction_log'] .= "\n\n";
							}

							$this->oRecord['transaction_log'] .= 'REPORT: Recieved status ' . $this->oRecord['transaction_status'] . ' for #' . $this->oRecord['transaction_id'] . ' on ' . date('Y-m-d, H:i:s') . '.';

							if(strcmp($this->oRecord['transaction_status'], 'SUCCESS') === 0)
							{
								$sHtml .= '<p>Uw betaling is met succes ontvangen.' . ($this->oRecord['transaction_success_url'] ? '<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars($this->oRecord['transaction_success_url']) . '\'">' : '') . '</p>';
							}
							elseif((strcmp($this->oRecord['transaction_status'], 'OPEN') === 0) && !empty($this->oRecord['transaction_url']))
							{
								$sHtml .= '<p>Uw betaling is nog niet afgerond.' . ($this->oRecord['transaction_url'] ? '<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars($this->oRecord['transaction_url']) . '\'">' : '') . '</p>';
							}
							else
							{
								if(strcmp($this->oRecord['transaction_status'], 'CANCELLED') === 0)
								{
									$sHtml .= '<p>Uw betaling is geannuleerd. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}
								elseif(strcmp($this->oRecord['transaction_status'], 'EXPIRED') === 0)
								{
									$sHtml .= '<p>Uw betaling is mislukt. Probeer opnieuw te betalen.<br><input style="margin: 6px;" type="button" value="Verder" onclick="javascript: document.location.href = \'' . htmlspecialchars(idealcheckout_getRootUrl() . 'setup.php?order_id=' . $this->oRecord['order_id'] . '&order_code=' . $this->oRecord['order_code']) . '\'"></p>';
								}
								else // if(strcmp($this->oRecord['transaction_status'], 'FAILURE') === 0)
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


							// Update transaction
							$sql = "UPDATE `" . $aIdealCheckout['database']['table'] . "` SET `transaction_date` = '" . time() . "', `transaction_id` = '" . idealcheckout_escapeSql($this->oRecord['transaction_id']) . "', `transaction_status` = '" . idealcheckout_escapeSql($this->oRecord['transaction_status']) . "', `transaction_log` = '" . idealcheckout_escapeSql($this->oRecord['transaction_log']) . "' WHERE (`id` = '" . idealcheckout_escapeSql($this->oRecord['id']) . "') LIMIT 1;";
							mysql_query($sql) or die('QUERY: ' . $sql . ', ERROR: ' . mysql_error());



							// Handle status change
							if(function_exists('idealcheckout_update_order_status'))
							{
								idealcheckout_update_order_status($this->oRecord, 'doReport');
							}
						}
					}
					else
					{
						$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Cannot find record in database -->' : '');
					}
				}
				else
				{
					$sHtml .= '<p>Invalid return request.</p>' . ($this->aSettings['TEST_MODE'] ? '<!-- Invalid response from OmniKassa -->' : '');
				}
			}

			idealcheckout_output($sHtml);
		}
	}

?>