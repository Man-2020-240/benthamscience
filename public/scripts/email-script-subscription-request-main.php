<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../../../../../../../../../journals/".$journalseoname."/subscription-not-submitted/");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';

if($callfrom == "http://www.benthamscience.com/journal/subscription-main.php" || $callfrom == "http://benthamscience.com/journal/subscription-main.php")
{
}
else
{

header("Location: ../index.php");
}

//include "verify.php";

session_start();
	$journalcode = $_POST['JournalCode'];
	$journalname = $_POST['JournalName'];
	
	$xml2 = simplexml_load_file("../journal-meta/".$journalcode.".xml");
	
	$journalseoname = $xml2->{'journal-front'}->{'journal-meta'}->{'journal-seo-title'};


	
	if (isset($_POST['SubType']))
	{
	$SubType = $_POST['SubType'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Price']))
	{
	$Price = $_POST['Price'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Volume']))
	{
	$Volume = $_POST['Volume'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Frequency']))
	{
	$Frequency = $_POST['Frequency'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Year']))
	{
	$Year = $_POST['Year'];
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['title']))
	{
	$title = $_POST['title'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['FirstName']))
	{
	$firstname = $_POST['FirstName'];
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['LastName']))
	{
	$lastname = $_POST['LastName'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['usercategory']))
	{
	$usercategory = $_POST['usercategory'];
	}

	
	if (isset($_POST['Address']))
	{
	$address = $_POST['Address'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['City']))
	{
	$city = $_POST['City'];
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['Country']))
	{
	$country = $_POST['Country'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['State']))
	{
	$state = $_POST['State'];
	}
	
	
	if (isset($_POST['Zip']))
	{
	$zip = $_POST['Zip'];
	}
	
	if (isset($_POST['Phone']))
	{
	$phone = $_POST['Phone'];
	}
	
	if (isset($_POST['Fax']))
	{
	$fax = $_POST['Fax'];
	}
	
	if (strpos($_POST['UserEmail'],"@")<>0)
	{
	$useremail = $_POST['UserEmail'];
	}
	else
	{
	$er =1;
	}
	
	if ($er==1)
	{
		header("Location: ../../../../../../../../../journals/".$journalseoname."/subscription-not-submitted/");
	}	
	else
	{
	$to      =  "subscriptions@benthamscience.org";
	$subject = "Subscription Request - Subscription Office Record: $journalname";
	
	$message = 
	"\n ===============[ $subject ]===============
	\nAttention Subscription Office of $journalname:
	\n Following subscription request has been submitted by $title $lastname for $journalname.
	\n ========================================================
	\n Subscription Details:
	\n ========================================================
	\n Journal Name: $journalname
	\n Subscription Category: $SubType
	\n Price: $Price
	\n Year: $Year
	\n Volume: $Volume
	\n Frequency: $Frequency
	\n 
	\n ========================================================
	\n Contact Details:
	\n ========================================================
	\n Title: $title
	\n First Name: $firstname
	\n Last Name: $lastname
	\n Address: $address
	\n Email: $useremail
	\n City: $city
	\n State: $state
	\n Zip Code: $zip
	\n Country: $country
	\n
	\n ========================================================
	\n Message ID:". session_id(). "
	\n ========================================================
	\n";
	
	$headers = "From: root@benthamscience.com". "\r\n" ;
	$headers .="Bcc: urooj@benthamscience.org"."\r\n";
	$headers .="Reply-To: $useremail" . "\r\n";
	$headers .="X-Mailer: PHP/" . phpversion();
	
	mail($to, $subject, $message, $headers);
	
	$to_admin = "urooj@benthamscience.org";
	$subject_admin = "Subscription Request Webmaster Record: $journalname";
	
	$message_admin = "Technical Details of script execution of Subscription Request Form:";
	$message_admin .= "\n SERVER_NAME =". $_SERVER['SERVER_NAME'];
	$message_admin .= "\n SERVER_ADDR =". $_SERVER['SERVER_ADDR'];
	$message_admin .= "\n GATEWAY_INTERFACE =". $_SERVER['GATEWAY_INTERFACE'];
	$message_admin .= "\n SERVER_SOFTWARE =". $_SERVER['SERVER_SOFTWARE'];
	$message_admin .= "\n REQUEST_TIME =". $_SERVER['REQUEST_TIME'];
	$message_admin .= "\n HTTP_REFERER =". $_SERVER['HTTP_REFERER'];
	$message_admin .= "\n REMOTE_ADDR =". $_SERVER['REMOTE_ADDR'];
	$message_admin .= "\n REMOTE_HOST =". $_SERVER['REMOTE_HOST'];
	$message_admin .= "\n REMOTE_PORT =". $_SERVER['REMOTE_PORT'];
	$message_admin .= "\n SCRIPT_FILENAME =". $_SERVER['SCRIPT_FILENAME'];
	$message_admin .= "\n SCRIPT_NAME =". $_SERVER['SCRIPT_NAME'];
	$message_admin .= "\n REQUEST_URI =". $_SERVER['REQUEST_URI'];
	$message_admin .= "\n Message ID:". session_id();
	
	
	$headers_admin = "From: root@benthamscience.com". "\r\n" ;
	$headers_admin .="Reply-To: root@benthamscience.com" . "\r\n";
	$headers_admin .="X-Mailer: PHP/" . phpversion();
	
	
	mail($to_admin, $subject_admin, $message_admin, $headers_admin);
	
	while (list ($key, $val) = each ($HTTP_POST_VARS)) 
	{
			$message .= "$key : $val\n"; 
	}

	$to2      = "$useremail";
	$subject2 = "System-Reply: Subscription request acknowledgement for $journalname";
	$message2 = "Dear $title $lastname,\n
	Thank you for requesting subscription of $journalname, representative of subscription office will contact you within 24 hours.
	

	\nSubscription Office
	\n$journalname
	\nBentham Science Publishers
	\nURL: http://www.benthamscience.com/journals/$journalseoname/
	\nEmail: $journalemail";
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	"Bcc: urooj@benthamscience.org"."\r\n" .
   "Reply-To: $journalemail" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);


$iptocountry = '';
		$IP = $_SERVER['REMOTE_ADDR'];
		if (!empty($IP)) {
		   $iptocountry = file_get_contents('http://api.hostip.info/country.php?ip='.$IP);
		}
	
	
	include('connection.php');
	$query =  "INSERT INTO subscription_requests (JournalCode, Subcription_Day, Subcription_Month_ID, Subcription_Month, Subcription_Year, SubType, Price, Volume, Frequency, PubYear, Title, FirstName, LastName, Address, City, State, Zip, Country, Phone, Fax, UserEmail, REMOTE_ADDR, REMOTE_HOST, REMOTE_PORT, REQUEST_TIME, HTTP_REFERER, SCRIPT_FILENAME, IP_TO_COUNTRY) 
values ('".$journalcode."', '".date("d")."', '".date("m")."', '".date("F")."', '".date("Y")."', '".$SubType."', '".$Price."', '".$Volume."', '".$Frequency."', '".$Year."', '".$title."', '".$firstname."', '".$lastname."', '".$address."', '".$city."', '".$state."', '".$zip."', '".$country."', '".$phone."', '".$fax."', '".$useremail."', '".$_SERVER['REMOTE_ADDR']."','".$_SERVER['REMOTE_HOST']."', '".$_SERVER['REMOTE_PORT']."','".$_SERVER['REQUEST_TIME']."','".$_SERVER['HTTP_REFERER']."','".$_SERVER['SCRIPT_FILENAME']."', '".$iptocountry."')";
$result = mysql_query($query)or die(mysql_error());

header("Location: ../../../../../../../../../journals/".$journalseoname."/subscription-submitted/");

}

}
?>