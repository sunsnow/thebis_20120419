<?php

// Script voor het inschakelen van Compressie
// Controleren of de extensie 'zlib' is geladen
if (extension_loaded('zlib')) {
	// Controleren of de client 'gzip' of 'deflate' accepteert
	if (isset($_SERVER['HTTP_ACCEPT_ENCODING'])) {
		$sAcceptEncoding = $_SERVER['HTTP_ACCEPT_ENCODING'];
		$sAcceptEncoding = strtolower($sAcceptEncoding);
		if (strrpos($sAcceptEncoding, 'gzip')
		or strrpos($sAcceptEncoding, 'deflate')) {
			ob_start('ob_gzhandler');
		}
		unset($sAcceptEncoding);
	}
}

// Changes sitemap while viewing through localhost or internet
if($_SERVER['SERVER_ADDR']=='127.0.0.1'){
	$localhostMap='/bollen_(new)/';

}else{
	$localhostMap=$_SERVER['DOCUMENT_ROOT']; //moet de waarde nul weergeven. Gaat alleen nog niet goed in IE!!! (string)null, geeft /../ moet zijn ../
}

include 'core/App/templates/inc/settings.inc.php';

// Show all errors
ini_set('display_errors', 'On');
error_reporting(E_ALL|E_STRICT);

// Set default timezone
date_default_timezone_set('Europe/Amsterdam');

/**
* Arrays om errors en content tijdelijk in op te slaan
*/
$aErrors = array();
$aContent = array();

/**
* Array met alle paginas die geïnclude mogen worden,
* de keys stellen de namen van paginas voor en de waarden geven met een boolean
* aan of de pagina statisch (false) dan wel dynamisch (true)
*/
$aPages = array (
    'welkom' => true,
    'diensten' => true,
	'werkwijze' => true,
	'tarieven' => true,
	'belasting-tips-advies' => true,
	'referenties' => true,
	'contact' => true,
	'route' => true,
	'historie' => true,
	'sitemap' => true,
	'privacy' => true,
	'disclaimer' => true,
	'newmenutest' => true,
    'bestaat_niet' => true
);

/**
* Directory waarin de paginas zich bevinden
* Extensie die de te includen paginas hebben
*/
$sDir = 'core/App/templates/index/';
$sExt = '.php';

/**
* Is er een pagina opgegeven?
*/
if(isset($_GET['page']))
{
    $sPad = $sDir.$_GET['page'].$sExt;
    
    /**
    * Is dit een toegestane pagina?
    */
    if(array_key_exists($_GET['page'], $aPages))
    {
        /**
        * Bestaat de opgevraagde pagina?
        */
        if(file_exists($sPad))
        {
            /**
            * Is de pagina dynamisch of statisch?
            */
            if($aPages[$_GET['page']] === true)
            {
                include($sPad);
            }
            else
            {
                $aContent[] = file_get_contents($sPad);
            }
        }
        else
        {
            $aErrors[] = 'Helaas, deze pagina bestaat niet.';
        }    
    }
    else
    {
        $aErrors[] = 'Helaas, deze pagina is niet toegestaan.';
    }
}
else
{
	$sPad = $sDir.'welkom'.$sExt;
    include($sPad);/*'Geen pagina opgegeven';*/
}

$titleCase='home';

include_once 'core/App/templates/inc/header.inc.php';

            /**
            * Outputten van content die tijdens het includen gegenereerd is.
            * Fouten staan in $aErrors, de rest van de content in $aContent.
            */    
            if(!empty($aErrors))
            {
                echo '<ul>';
                foreach($aErrors as $sError)
                {
                    echo '<li>'.$sError.'</li>';
                }
                echo '</ul>';
            }
            elseif(!empty($aContent))
            {
                foreach($aContent as $sLine)
                {
                    echo $sLine;
                }
            }

include_once 'core/App/templates/inc/footer.inc.php';

?>
