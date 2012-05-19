<?php

	global $aIdealCheckout;

	// Load database settings
	require_once(dirname(__FILE__) . '/includes/init.php');

	$sWarningHtml = '';


	$sStoreCode = idealcheckout_getStoreCode();
	$sGatewayCode = (empty($_POST['gateway_code']) ? 'ideal' : $_POST['gateway_code']);
	$sLanguageCode = 'nl'; // nl, de, en
	$sCountryCode = '';
	$sCurrencyCode = 'EUR';


	if(sizeof($_POST))
	{
		$sOrderId = (empty($_POST['order_id']) ? idealcheckout_getRandomCode(16) : $_POST['order_id']);
		$sOrderCode = idealcheckout_getRandomCode(32);
		$sTransactionId = idealcheckout_getRandomCode(32);
		$sTransactionCode = idealcheckout_getRandomCode(32);
		$fTransactionAmount = (empty($_POST['transaction_amount']) ? round(rand(1000, 100000) / 100, 2) : round(floatval(str_replace(',', '.', $_POST['transaction_amount'])), 2));
		$sTransactionDescription = (empty($_POST['transaction_description']) ? idealcheckout_getTranslation($sLanguageCode, 'idealcheckout', 'Webshop order #{0}', array($sOrderId)) : $_POST['transaction_description']);

		// Insert into #_idealcheckout
		$sql = "INSERT INTO `" . $aIdealCheckout['database']['table'] . "` SET 
`id` = NULL, 
`order_id` = '" . idealcheckout_escapeSql($sOrderId) . "', 
`order_code` = '" . idealcheckout_escapeSql($sOrderCode) . "', 
`store_code` = '" . idealcheckout_escapeSql($sStoreCode) . "', 
`gateway_code` = '" . idealcheckout_escapeSql($sGatewayCode) . "', 
`language_code` = '" . idealcheckout_escapeSql($sLanguageCode) . "', 
`country_code` = '" . idealcheckout_escapeSql($sCountryCode) . "', 
`currency_code` = '" . idealcheckout_escapeSql($sCurrencyCode) . "', 
`transaction_id` = '" . idealcheckout_escapeSql($sTransactionId) . "', 
`transaction_code` = '" . idealcheckout_escapeSql($sTransactionCode) . "', 
`transaction_date` = '" . idealcheckout_escapeSql(time()) . "', 
`transaction_amount` = '" . idealcheckout_escapeSql($fTransactionAmount) . "', 
`transaction_description` = '" . idealcheckout_escapeSql($sTransactionDescription) . "';";

		if(mysql_query($sql))
		{
			header('Location: ' . idealcheckout_getRootUrl() . 'setup.php?order_id=' . $sOrderId . '&order_code=' . $sOrderCode);
		}
		else
		{
			$sWarningHtml .= '
		<div style="font-weight: bold; border: red solid 1px; padding: 10px; margin-bottom: 20px;">Cannot create record in table &quot;' . $aIdealCheckout['database']['table'] . '&quot;</div>';
		}
	}




	$sOrderId = idealcheckout_getRandomCode(16);
	$fTransactionAmount = round(rand(1000, 100000) / 100, 2);
	$sTransactionDescription = idealcheckout_getTranslation($sLanguageCode, 'idealcheckout', 'Webshop order #{0}', array($sOrderId));


	echo '<!DOCTYPE html>
<html>
	<head>

		<title>iDEAL Checkout - TEST betaling</title>

		<style type="text/css">

h1
{
	font-family: Arial;
	font-size: 20px;
	font-weight: bold;
}

p, td
{
	font-family: Arial;
	font-size: 12px;
}

select, input
{
	font-family: Arial;
	font-size: 11px;
}

		</style>

	</head>
	<body>
' . $sWarningHtml . '

		<h1>iDEAL Checkout - Test betaling</h1>
		<p>Via deze tool kun je eenvoudig testbetalingen uitvoeren om te zien of de configuratie van je betaalmethodes kloppen.</p>

		<form action="" method="post" name="payment">
			<table border="0" cellpadding="5" cellspacing="0">
				<tr>
					<td width="150"><b>Betaalmethode</b></td>
					<td width="600"><select name="gateway_code" style="width: 450px;"><option value="creditcard">Credit Card - /idealcheckout/configuration/creditcard.php</option><option value="directebanking">Direct E-Banking - /idealcheckout/configuration/directebanking.php</option><option selected="selected" value="ideal">iDEAL - /idealcheckout/configuration/ideal.php</option><option value="mistercash">MisterCash - /idealcheckout/configuration/mistercash.php</option><option value="minitix">MiniTix - /idealcheckout/configuration/minitix.php</option><option value="paypal">PayPal - /idealcheckout/configuration/paypal.php</option></select></td>
				</tr>
				<tr>
					<td><b>Ordernummer</b></td>
					<td><input name="order_id" style="width: 450px;" type="text" value="' . htmlspecialchars($sOrderId) . '"></td>
				</tr>
				<tr>
					<td><b>Bedrag</b></td>
					<td><input name="transaction_amount" style="width: 450px;" type="text" value="' . htmlspecialchars(number_format($fTransactionAmount, 2, ',', '')) . '"></td>
				</tr>
				<tr>
					<td><b>Omschrijving</b></td>
					<td><input name="transaction_description" style="width: 450px;" type="text" value="' . htmlspecialchars($sTransactionDescription) . '"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Test betaling"></td>
				</tr>
			</table>
		</form>
	</body>
</html>';

?>