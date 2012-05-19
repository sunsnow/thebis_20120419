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
						$oIssuerRequest = new IssuerRequest();
						$oIssuerRequest->setSecurePath($this->aSettings['CERTIFICATE_PATH']);
						$oIssuerRequest->setCachePath($this->aSettings['TEMP_PATH']);
						$oIssuerRequest->setPrivateKey($this->aSettings['PRIVATE_KEY_PASS'], $this->aSettings['PRIVATE_KEY_FILE'], $this->aSettings['PRIVATE_CERTIFICATE_FILE']);
						$oIssuerRequest->setMerchant($this->aSettings['MERCHANT_ID'], $this->aSettings['SUB_ID']);
						$oIssuerRequest->setAquirer($this->aSettings['GATEWAY_NAME'], $this->aSettings['TEST_MODE']);

						
						$aIssuerList = $oIssuerRequest->doRequest();
						$sIssuerList = '';

						if($oIssuerRequest->hasErrors())
						{
							if($this->aSettings['TEST_MODE'])
							{
								idealcheckout_output('<code>' . var_export($oIssuerRequest->getErrors(), true) . '</code>');
							}
							else
							{
								$this->oRecord['transaction_status'] = 'FAILURE';

								if(empty($this->oRecord['transaction_log']) == false)
								{
									$this->oRecord['transaction_log'] .= "\n\n";
								}

								$this->oRecord['transaction_log'] .= 'Executing IssuerRequest on ' . date('Y-m-d, H:i:s') . '. Recieved: ERROR' . "\n" . var_export($oIssuerRequest->getErrors(), true);
								$this->save();

								$sHtml = '<p>Door een technische storing kunnen er momenteel helaas geen betalingen via iDEAL worden verwerkt. Onze excuses voor het ongemak.</p>';
								
								if($this->oRecord['transaction_payment_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_payment_url']) . '">kies een andere betaalmethode</a></p>';
								}
								elseif($this->oRecord['transaction_failure_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_failure_url']) . '">terug naar de website</a></p>';
								}
								
								idealcheckout_output($sHtml);
							}
						}

						if(empty($this->oRecord['transaction_log']) == false)
						{
							$this->oRecord['transaction_log'] .= "\n\n";
						}

						$this->oRecord['transaction_log'] .= 'Executing IssuerRequest on ' . date('Y-m-d, H:i:s') . '.';

						$this->save();


						foreach($aIssuerList as $k => $v)
						{
							$sIssuerList .= '<option value="' . $k . '">' . htmlspecialchars($v) . '</option>';
						}

						$sHtml .= '
<form action="' . htmlspecialchars(idealcheckout_getRootUrl() . 'transaction.php?order_id=' . $sOrderId . '&order_code=' . $sOrderCode) . '" method="post" id="checkout">
	<p><b>Kies uw bank</b><br><select name="issuer_id" style="margin: 6px; width: 200px;">' . $sIssuerList . '</select><br><input type="submit" value="Verder"></p>.
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
			if(empty($_POST['issuer_id']) || empty($_GET['order_id']) || empty($_GET['order_code']))
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
						$oTransactionRequest = new TransactionRequest();
						$oTransactionRequest->setSecurePath($this->aSettings['CERTIFICATE_PATH']);
						$oTransactionRequest->setCachePath($this->aSettings['TEMP_PATH']);
						$oTransactionRequest->setPrivateKey($this->aSettings['PRIVATE_KEY_PASS'], $this->aSettings['PRIVATE_KEY_FILE'], $this->aSettings['PRIVATE_CERTIFICATE_FILE']);
						$oTransactionRequest->setMerchant($this->aSettings['MERCHANT_ID'], $this->aSettings['SUB_ID']);
						$oTransactionRequest->setAquirer($this->aSettings['GATEWAY_NAME'], $this->aSettings['TEST_MODE']);

						$oTransactionRequest->setOrderId($this->oRecord['order_id']);
						$oTransactionRequest->setOrderDescription($this->oRecord['transaction_description']);
						$oTransactionRequest->setOrderAmount($this->oRecord['transaction_amount']);

						$oTransactionRequest->setIssuerId($sIssuerId);
						$oTransactionRequest->setEntranceCode($this->oRecord['transaction_code']);
						$oTransactionRequest->setReturnUrl(idealcheckout_getRootUrl() . 'return.php');


						// Find TransactionID
						$sTransactionId = $oTransactionRequest->doRequest();

						if($oTransactionRequest->hasErrors())
						{
							if($this->aSettings['TEST_MODE'])
							{
								idealcheckout_output('<code>' . var_export($oTransactionRequest->getErrors(), true) . '</code>');
							}
							else
							{
								$this->oRecord['transaction_status'] = 'FAILURE';

								if(empty($this->oRecord['transaction_log']) == false)
								{
									$this->oRecord['transaction_log'] .= "\n\n";
								}

								$this->oRecord['transaction_log'] .= 'Executing TransactionRequest on ' . date('Y-m-d, H:i:s') . '. Recieved: ERROR' . "\n" . var_export($oTransactionRequest->getErrors(), true);
								$this->save();

								$sHtml = '<p>Door een technische storing kunnen er momenteel helaas geen betalingen via iDEAL worden verwerkt. Onze excuses voor het ongemak.</p>';
								
								if($this->oRecord['transaction_payment_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_payment_url']) . '">kies een andere betaalmethode</a></p>';
								}
								elseif($this->oRecord['transaction_failure_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_failure_url']) . '">terug naar de website</a></p>';
								}

								$sHtml .= '<!--

' . var_export($oTransactionRequest->getErrors(), true) . '

-->';
								
								idealcheckout_output($sHtml);
							}
						}

						$sTransactionUrl = $oTransactionRequest->getTransactionUrl();

						if(empty($this->oRecord['transaction_log']) == false)
						{
							$this->oRecord['transaction_log'] .= "\n\n";
						}

						$this->oRecord['transaction_log'] .= 'Executing TransactionRequest on ' . date('Y-m-d, H:i:s') . '. Recieved: ' . $sTransactionId;
						$this->oRecord['transaction_id'] = $sTransactionId;
						$this->oRecord['transaction_url'] = $sTransactionUrl;
						$this->oRecord['transaction_status'] = 'OPEN';
						$this->oRecord['transaction_date'] = time();

						$this->save();
						
						// die('<a href="' . $oTransactionRequest->getTransactionUrl() . '">' . $oTransactionRequest->getTransactionUrl() . '</a>');
						$oTransactionRequest->doTransaction();
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

			if(empty($_GET['trxid']) || empty($_GET['ec']))
			{
				$sHtml .= '<p>Invalid return request.</p>';
			}
			else
			{
				$sTransactionId = $_GET['trxid'];
				$sTransactionCode = $_GET['ec'];

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
						// Check status
						$oStatusRequest = new StatusRequest();
						$oStatusRequest->setSecurePath($this->aSettings['CERTIFICATE_PATH']);
						$oStatusRequest->setCachePath($this->aSettings['TEMP_PATH']);
						$oStatusRequest->setPrivateKey($this->aSettings['PRIVATE_KEY_PASS'], $this->aSettings['PRIVATE_KEY_FILE'], $this->aSettings['PRIVATE_CERTIFICATE_FILE']);
						$oStatusRequest->setMerchant($this->aSettings['MERCHANT_ID'], $this->aSettings['SUB_ID']);
						$oStatusRequest->setAquirer($this->aSettings['GATEWAY_NAME'], $this->aSettings['TEST_MODE']);

						$oStatusRequest->setTransactionId($sTransactionId);

						$this->oRecord['transaction_status'] = $oStatusRequest->doRequest();

						if($oStatusRequest->hasErrors())
						{
							if($this->aSettings['TEST_MODE'])
							{
								idealcheckout_output('<code>' . var_export($oStatusRequest->getErrors(), true) . '</code>');
							}
							else
							{
								$this->oRecord['transaction_status'] = 'FAILURE';

								if(empty($this->oRecord['transaction_log']) == false)
								{
									$this->oRecord['transaction_log'] .= "\n\n";
								}

								$this->oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . '. Recieved: ERROR' . "\n" . var_export($oStatusRequest->getErrors(), true);
								$this->save();

								$sHtml = '<p>Door een technische storing kunnen er momenteel helaas geen betalingen via iDEAL worden verwerkt. Onze excuses voor het ongemak.</p>';
								
								if($this->oRecord['transaction_payment_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_payment_url']) . '">kies een andere betaalmethode</a></p>';
								}
								elseif($this->oRecord['transaction_failure_url'])
								{
									$sHtml .= '<p><a href="' . htmlentities($this->oRecord['transaction_failure_url']) . '">terug naar de website</a></p>';
								}

								$sHtml .= '<!--

' . var_export($oStatusRequest->getErrors(), true) . '

-->';

								idealcheckout_output($sHtml);
							}
						}

						if(empty($this->oRecord['transaction_log']) == false)
						{
							$this->oRecord['transaction_log'] .= "\n\n";
						}

						$this->oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . ' for #' . $this->oRecord['transaction_id'] . '. Recieved: ' . $this->oRecord['transaction_status'];

						$this->save();



						// Handle status change
						if(function_exists('idealcheckout_update_order_status'))
						{
							idealcheckout_update_order_status($this->oRecord, 'doReturn');
						}



						// Set status message
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
			idealcheckout_output('Invalid report request.');
		}


		// Validate all open transactions
		public function doValidate()
		{
			global $aIdealCheckout; 

			$sql = "SELECT * FROM `" . $aIdealCheckout['database']['table'] . "` WHERE (`transaction_status` = 'OPEN') AND (`gateway_code` = '" . idealcheckout_escapeSql($aIdealCheckout['record']['gateway_code']) . "') AND " . (empty($aIdealCheckout['record']['store_code']) ? "((`store_code` IS NULL) OR (`store_code` = ''))" : "(`store_code` = '" . idealcheckout_escapeSql($aIdealCheckout['record']['store_code']) . "')") . " AND ((`transaction_success_url` IS NULL) OR (`transaction_success_url` = '') OR (`transaction_success_url` LIKE '" . idealcheckout_escapeSql(idealcheckout_getRootUrl(1)) . "%')) ORDER BY `id` ASC;";
			$oRecordset = mysql_query($sql) or die('QUERY: ' . $sql . '<br><br>ERROR: ' . mysql_error() . '<br><br>FILE: ' . __FILE__ . '<br><br>LINE: ' . __LINE__);

			$sHtml = '<b>Controle van openstaande transacties.</b><br>';

			if(mysql_num_rows($oRecordset))
			{
				while($oRecord = mysql_fetch_assoc($oRecordset))
				{
					// Execute status request
					$oStatusRequest = new StatusRequest();
					$oStatusRequest->setSecurePath($this->aSettings['CERTIFICATE_PATH']);
					$oStatusRequest->setCachePath($this->aSettings['TEMP_PATH']);
					$oStatusRequest->setPrivateKey($this->aSettings['PRIVATE_KEY_PASS'], $this->aSettings['PRIVATE_KEY_FILE'], $this->aSettings['PRIVATE_CERTIFICATE_FILE']);
					$oStatusRequest->setMerchant($this->aSettings['MERCHANT_ID'], $this->aSettings['SUB_ID']);
					$oStatusRequest->setAquirer($this->aSettings['GATEWAY_NAME'], $this->aSettings['TEST_MODE']);

					$oStatusRequest->setTransactionId($oRecord['transaction_id']);

					$oRecord['transaction_status'] = $oStatusRequest->doRequest();

					if(empty($oRecord['transaction_log']) == false)
					{
						$oRecord['transaction_log'] .= "\n\n";
					}

					if($oStatusRequest->hasErrors())
					{
						$oRecord['transaction_status'] = 'FAILURE';
						$oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . '. Recieved: ERROR' . "\n" . var_export($oStatusRequest->getErrors(), true);
					}
					else
					{
						$oRecord['transaction_log'] .= 'Executing StatusRequest on ' . date('Y-m-d, H:i:s') . ' for #' . $oRecord['transaction_id'] . '. Recieved: ' . $oRecord['transaction_status'];
					}

					$this->save($oRecord);


					// Add to body
					$sHtml .= '<br>#' . $oRecord['transaction_id'] . ' : ' . $oRecord['transaction_status'];


					// Handle status change
					if(function_exists('idealcheckout_update_order_status'))
					{
						idealcheckout_update_order_status($oRecord, 'doValidate');
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