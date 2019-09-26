<?php

$iptocountry = '';
		$IP = $_SERVER['REMOTE_ADDR'];
		if (!empty($IP)) {
		   $iptocountry = file_get_contents('http://api.hostip.info/country.php?ip='.$IP);
		}
	$url = str_replace('$','&',$_GET['url']);
	
	if (!($_GET['url']=="") && !($_GET['bcode']=="") && !($_GET['jcode']=="")  )
	{
	include('connection.php');
	$query =  "INSERT INTO bannerclicks (BannerName, JournalCode, clickDateDay, clickDateMonthID, clickDateMonth, clickDateYear, URL, REMOTE_ADDR, REMOTE_HOST, REMOTE_PORT, REQUEST_TIME, HTTP_REFERER, SCRIPT_FILENAME, IP_TO_COUNTRY) 
values ('".strtoupper($_GET['bcode'])."', '".strtolower($_GET['jcode'])."', '".date("d")."', '".date("m")."', '".date("F")."', '".date("Y")."', '".$url."', '".$_SERVER['REMOTE_ADDR']."','".$_SERVER['REMOTE_HOST']."', '".$_SERVER['REMOTE_PORT']."','".$_SERVER['REQUEST_TIME']."','".$_SERVER['HTTP_REFERER']."','".$_SERVER['SCRIPT_FILENAME']."', '".$iptocountry."')";
$result = mysql_query($query)or die(mysql_error());


header("Location: ".$url);
	}
?>