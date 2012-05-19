<?php

	if(file_exists(dirname(__FILE__) . '/debug.php'))
	{
		include_once(dirname(__FILE__) . '/debug.php');
	}

	if(file_exists(dirname(__FILE__) . '/update.order.status.php'))
	{
		include_once(dirname(__FILE__) . '/update.order.status.php');
	}


	// Create a random code with N digits.
	function idealcheckout_getRandomCode($iLength = 64)
	{
		$aCharacters = array('a', 'b', 'c', 'd', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

		$sResult = '';

		for($i = 0; $i < $iLength; $i++)
		{
			$sResult .= $aCharacters[rand(0, sizeof($aCharacters) - 1)];
		}

		return $sResult;
	}


	// Find HASH salt
	function idealcheckout_getHashSalt($sStoreCode = false)
	{
		$aData = idealcheckout_getDatabaseSettings();
		return md5((is_string($sStoreCode) ? $sStoreCode : idealcheckout_getStoreCode()) . serialize($aData));
	}


	// Find default store code
	function idealcheckout_getStoreCode()
	{
		return md5($_SERVER['SERVER_NAME']);
	}


	// Retrieve ROOT url of script
	function idealcheckout_getRootUrl($iParent = 0)
	{
		$sRootUrl = '';

		// Detect scheme
		if(isset($_SERVER['HTTPS']) && (strcasecmp($_SERVER['HTTPS'], 'ON') === 0))
		{
			$sRootUrl .= 'https://';
		}
		else
		{
			$sRootUrl .= 'http://';
		}

		// Detect domain
		$sRootUrl .= $_SERVER['HTTP_HOST'];

		// Detect port
		if((strpos($_SERVER['HTTP_HOST'], ':') === false) && isset($_SERVER['SERVER_PORT']) && (strcmp($_SERVER['SERVER_PORT'], '80') !== 0))
		{
			$sRootUrl .= ':' . $_SERVER['SERVER_PORT'];
		}

		$sRootUrl .= '/';

		// Detect path
		if(isset($_SERVER['SCRIPT_NAME']))
		{
			$a = explode('/', substr($_SERVER['SCRIPT_NAME'], 1));

			while(sizeof($a) > ($iParent + 1))
			{
				$sRootUrl .= $a[0] . '/';
				array_shift($a);
			}
		}

		return $sRootUrl;
	}


	// Retrieve ROOT url of script
	function idealcheckout_getRootPath()
	{
		return dirname(dirname(__FILE__)) . '/';
	}


	// Escape SQL values
	function idealcheckout_escapeSql($sSqlValue)
	{
		return str_replace(array('\\', '\''), array('\\\\', '\\\''), $sSqlValue);
	}


	// Print html to screen
	function idealcheckout_output($sHtml, $bImage = true)
	{
		global $aIdealCheckout;

		// Detect idealcheckout folder
		$sRootUrl = idealcheckout_getRootUrl();
		
		if(($iStrPos = strrpos($sRootUrl, '/idealcheckout/')) !== false)
		{
			$sRootUrl = substr($sRootUrl, 0, $iStrPos) . '/';
		}

		// Detect gateway name & image
		$sTitle = 'Checkout';
		$sImage = 'gateway.jpg';
		$sColor = '#999999';

		if(!empty($aIdealCheckout['record']['gateway_code']))
		{
			if(strcasecmp($aIdealCheckout['record']['gateway_code'], 'ideal') === 0)
			{
				$sTitle = 'iDEAL Checkout';
				$sImage = 'ideal.gif';
				$sColor = '#CC0066';
			}
			elseif(strcasecmp($aIdealCheckout['record']['gateway_code'], 'minitix') === 0)
			{
				$sTitle = 'MiniTix Checkout';
				$sImage = 'minitix.png';
				$sColor = '#FFCC00';
			}
			elseif(strcasecmp($aIdealCheckout['record']['gateway_code'], 'mistercash') === 0)
			{
				$sTitle = 'MisterCash Checkout';
				$sImage = 'mistercash.gif';
				$sColor = '#0083C6';
			}
			elseif(strcasecmp($aIdealCheckout['record']['gateway_code'], 'directebanking') === 0)
			{
				$sTitle = 'Direct E-Banking Checkout';
				$sImage = 'directebanking.png';
				$sColor = '#F18E00';
			}
			elseif(strcasecmp($aIdealCheckout['record']['gateway_code'], 'creditcard') === 0)
			{
				$sTitle = 'CreditCard Checkout';
				$sImage = 'creditcard.jpg';
			}
			elseif(strcasecmp($aIdealCheckout['record']['gateway_code'], 'paypal') === 0)
			{
				$sTitle = 'PayPal Checkout';
				$sImage = 'paypal.png';
			}
		}


		echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>' . $sTitle . '</title>
		<style type="text/css">

html, body, form, div
{
	margin: 0px;
	padding: 0px;
}

div.wrapper
{
	padding: 50px 0px 0px 0px;
	text-align: center;
}

p
{
	font-family: Arial;
	font-size: 15px;
}

a
{
	color: ' . $sColor . ' !important;
}

		</style>

	</head>
	<body>

		<!-- 

			This ' . $sTitle . ' script is developed by:

			Martijn Wieringa
			info@php-solutions.nl



			Download a free copy from:
			http://www.ideal-checkout.nl



			Support & Information:
			info@ideal-checkout.nl
			http://www.ideal-checkout.nl

		-->

		<div class="wrapper">
			' . ($bImage ? '<p><img alt="' . $sTitle . '" border="0" src="' . $sRootUrl . 'idealcheckout/images/' . $sImage . '"></p>' : '') . '

' . $sHtml . '

		</div>

	</body>
</html>';

		exit;
	}


	// Translate text using language files
	function idealcheckout_getTranslation($sLanguageCode = false, $sGroup, $sKey, $aParams = array())
	{
		global $aIdealCheckout;

		if(empty($sLanguageCode))
		{
			if(!empty($aIdealCheckout['record']['language']))
			{
				$sLanguageCode = strtolower($aIdealCheckout['record']['language']);
			}
			elseif(!empty($aIdealCheckout['language']))
			{
				$sLanguageCode = strtolower($aIdealCheckout['language']);
			}
			else
			{
				$sLanguageCode = 'en';
			}
		}

		if(!isset($aIdealCheckout['translations'][$sLanguageCode][$sGroup]))
		{
			$sTranslationFile = dirname(dirname(__FILE__)) . '/translations/' . $sGroup . '.' . $sLanguageCode . '.php';

			if(file_exists($sTranslationFile))
			{
				$aIdealCheckout['translations'][$sLanguageCode][$sGroup] = include_once($sTranslationFile);
			}
		}

		if(isset($aIdealCheckout['translations'][$sLanguageCode][$sGroup][$sKey]))
		{
			$sText = $aIdealCheckout['translations'][$sLanguageCode][$sGroup][$sKey];
		}
		else
		{
			$sText = $sKey;
		}

		if(is_array($aParams) && sizeof($aParams))
		{
			foreach($aParams as $k => $v)
			{
				$sText = str_replace('{' . $k . '}', $v, $sText);
			}
		}

		return $sText;
	}


	// Load database settings
	function idealcheckout_getDatabaseSettings($sStoreCode = false)
	{
		global $aIdealCheckout;

		if(empty($sStoreCode))
		{
			if(!empty($aIdealCheckout['record']['store_code']))
			{
				$sStoreCode = $aIdealCheckout['record']['store_code'];
			}
			else
			{
				$sStoreCode = idealcheckout_getStoreCode();
			}
		}

		// Array to contain all settings
		$aSettings = array();

		// MySQL Server/Host
		$aSettings['host'] = 'localhost';

		// MySQL Username
		$aSettings['user'] = '';

		// MySQL Password
		$aSettings['pass'] = '';

		// MySQL Database name
		$aSettings['name'] = '';

		// MySQL Table Prefix (if any)
		$aSettings['prefix'] = '';

		// iDEAL Checkout Table
		$aSettings['table'] = '';




		$sDatabaseFile1 = dirname(dirname(__FILE__)) . '/configuration/database.' . strtolower($sStoreCode) . '.php';
		$sDatabaseFile2 = dirname(dirname(__FILE__)) . '/configuration/database.php';
		$sDatabaseError = 'No configuration file available for database.';

		if(file_exists($sDatabaseFile1) && @is_file($sDatabaseFile1) && @is_readable($sDatabaseFile1))
		{
			include($sDatabaseFile1);
		}
		elseif(file_exists($sDatabaseFile2) && @is_file($sDatabaseFile2) && @is_readable($sDatabaseFile2))
		{
			include($sDatabaseFile2);
		}
		else
		{
			die('ERROR: ' . $sDatabaseError);
		}


		
		// iDEAL Checkout Table
		if(empty($aSettings['table']))
		{
			$aSettings['table'] = $aSettings['prefix'] . 'idealcheckout';
		}

		return $aSettings;
	}


	// Load gateway settings
	function idealcheckout_getGatewaySettings($sStoreCode = false, $sGatewayCode = false)
	{
		global $aIdealCheckout;

		if(empty($sStoreCode))
		{
			if(!empty($aIdealCheckout['record']['store_code']))
			{
				$sStoreCode = $aIdealCheckout['record']['store_code'];
			}
			else
			{
				$sStoreCode = idealcheckout_getStoreCode();
			}
		}

		if(empty($sGatewayCode))
		{
			if(!empty($aIdealCheckout['record']['gateway_code']))
			{
				$sGatewayCode = $aIdealCheckout['record']['gateway_code'];
			}
			else
			{
				$sGatewayCode = 'ideal';
			}
		}



		if(!preg_match('/^([a-zA-Z0-9_\-]+)$/', $sGatewayCode))
		{
			die('INVALID GATEWAY: ' . $sGatewayCode);
		}
		elseif(!preg_match('/^([a-zA-Z0-9_\-]+)$/', $sStoreCode))
		{
			die('INVALID STORE CODE: ' . $sStoreCode);
		}


		$sConfigurationPath = dirname(dirname(__FILE__)) . '/configuration/';
		$sConfigFile1 = $sConfigurationPath . strtolower($sGatewayCode) . '.' . strtolower($sStoreCode) . '.php';
		$sConfigFile2 = $sConfigurationPath . strtolower($sGatewayCode) . '.php';
		$sConfigError = 'No configuration file available for ' . $sGatewayCode . '.';



		$aSettings = array();

		if(file_exists($sConfigFile1) && @is_file($sConfigFile1) && @is_readable($sConfigFile1))
		{
			include($sConfigFile1);
		}
		elseif(file_exists($sConfigFile2) && @is_file($sConfigFile2) && @is_readable($sConfigFile2))
		{
			include($sConfigFile2);
		}
		else
		{
			die('ERROR: ' . $sConfigError);
		}




		if(empty($aSettings['TEST_MODE']))
		{
			$aSettings['TEST_MODE'] = false;
		}


		// Fix temp path
		if(empty($aSettings['TEMP_PATH']))
		{
			$aSettings['TEMP_PATH'] = dirname(dirname(__FILE__)) . '/temp/';
		}


		// Fix certificate path
		if(empty($aSettings['CERTIFICATE_PATH']))
		{
			$aSettings['CERTIFICATE_PATH'] = dirname(dirname(__FILE__)) . '/certificates/';
		}


		// Fix gateway path
		if(!empty($aSettings['GATEWAY_METHOD']))
		{
			$aSettings['GATEWAY_FILE'] = dirname(dirname(__FILE__)) . '/gateways/' . $aSettings['GATEWAY_METHOD'] . '/gateway.cls.php';
		}
		elseif(strcasecmp(substr($aSettings['GATEWAY_FILE'], 0, 10), '/gateways/') === 0)
		{
			$aSettings['GATEWAY_FILE'] = dirname(dirname(__FILE__)) . $aSettings['GATEWAY_FILE'];
		}
		elseif(strcasecmp(substr($aSettings['GATEWAY_FILE'], 0, 9), 'gateways/') === 0)
		{
			$aSettings['GATEWAY_FILE'] = dirname(dirname(__FILE__)) . '/' . $aSettings['GATEWAY_FILE'];
		}

		return $aSettings;
	}

	function idealcheckout_log($sText, $sFile = false, $iLine = false)
	{
		if(is_array($sText) || is_object($sText))
		{
			$sText = var_export($sText, true);
		}

		// Reformat text
		$sText = str_replace("\n", "\n      ", trim($sText));

		$sLog = "\n" . 'TEXT: ' . $sText . "\n";
		
		if($sFile !== false)
		{
			$sLog .= 'FILE: ' . $sFile . "\n";
		}

		if($sFile !== false)
		{
			$sLog .= 'LINE: ' . $iLine . "\n";
		}

		$sLog .= "\n";


		$sLogFile = dirname(dirname(__FILE__)) . '/temp/' . date('Ymd.His') . '.log';

		file_put_contents($sLogFile, $sLog);
		chmod($sLogFile, 0777);
	}

?>