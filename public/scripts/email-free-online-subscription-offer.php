<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../journal/free-online-subscription-not-submitted.php");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';


if($callfrom == "http://www.benthamscience.com/journal/free-online-subscription-offer.php" || $callfrom == "http://benthamscience.com/journal/free-online-subscription-offer.php" || $callfrom == "http://test.benthamscience.com/journal/free-online-subscription-offer.php")
{
}
else
{

header("Location: ../index.php");
}

//include "verify.php";

session_start();
	$WobblyCount = $_POST['WobblyCount'];
	$chk = $_POST['chk'];
	
	
	for ($i = 0; $i < $WobblyCount; $i++) {
    	
		
		if(isset($chk[$i]))
		{
			
			$jselect = $jselect + 1;
			$journal[$jselect-1]=$chk[$i];
			
		}
	}
	
	if ($jselect > 3)
	{
		$er =1;
	}
	
	
	
	
	if (isset($_POST['JournalCode']))
	{
	$JournalCode = $_POST['JournalCode'];
	$xml2 = simplexml_load_file("../journal-meta/".$journalcode.".xml");
	
	$journalseoname = $xml2->{'journal-front'}->{'journal-meta'}->{'journal-seo-title'};
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['JournalName']))
	{
	$JournalName = $_POST['JournalName'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['JournalEmail']))
	{
	$JournalEmail = $_POST['JournalEmail'];
	}
	else
	{
	$er =1;
	}
	
	
	if (isset($_POST['IssueTitle']))
	{
	$IssueTitle = $_POST['IssueTitle'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['EditorName']))
	{
	$EditorName = $_POST['EditorName'];
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
	
	if (isset($_POST['UserEmail']))
	{
	$useremail = $_POST['UserEmail'];
	}
	else
	{
	$er =1;
	}
	
	
	if ($er==1)
	{
		header("Location: ../journal/free-online-subscription-not-submitted.php");
	}	
	else
	{
	$to      =  "$JournalEmail; rehana@benthamscience.org";
	$to2      =  "onlinesubscription@benthamscience.org";
	$subject = "Free Online Subscription Request - Editorial Office Record";
	$subject2 = "Free Online Subscription Request - Subscription Office Record";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Editorial Office - $JournalName:
	\n Following Free Online Subscription request has been submitted by $title $lastname (Guest Editor of $JournalName).
	\n
	\n ========================================================
	\n Selected Journals of Choice:
	\n ========================================================
	\n Selected Journal #1: $journal[0]
	\n Selected Journal #2: $journal[1]
	\n Selected Journal #3: $journal[2]
	\n
	\n ========================================================
	\n Guest Editor and Issue Details:
	\n ========================================================
	\n Journal Title: $JournalName
	\n Issue Title: $IssueTitle
	\n Editor(s) Name: $EditorName
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
	
	
	$message2 = 
	"\n ===============[ $subject ]===============
	\n Attention Subscription Office - $JournalName:
	\n Following Free Online Subscription request has been submitted by $title $lastname (Guest Editor of $JournalName).
	\n
	\n ========================================================
	\n Selected Journals of Choice:
	\n ========================================================
	\n Selected Journal #1: $journal[0]
	\n Selected Journal #2: $journal[1]
	\n Selected Journal #3: $journal[2]
	\n
	\n ========================================================
	\n Guest Editor and Issue Details:
	\n ========================================================
	\n Journal Title: $JournalName
	\n Issue Title: $IssueTitle
	\n Editor(s) Name: $EditorName
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
	mail($to2, $subject2, $message2, $headers);
	
	$to_admin = "urooj@benthamscience.org";
	$subject_admin = "Free Online Subscription Request - Webmaster Record: $JournalName";
	
	$message_admin = "Technical Details of script execution of Free Online Subscription Request:";
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
	$headers_admin .= "Reply-To: root@benthamscience.com" . "\r\n";
	$headers_admin .= "X-Mailer: PHP/" . phpversion();
	
	
	mail($to_admin, $subject_admin, $message_admin, $headers_admin);
	
	while (list ($key, $val) = each ($HTTP_POST_VARS)) 
	{
			$message .= "$key : $val\n"; 
	}

	$to2      = "$useremail";
	$subject2 = "System-Reply: Free Online Subscription request acknowledgement for $JournalName";
	$message2 = "Dear $title $lastname,
	\n
	\n Thank you for submitting your Free Online Subscription request, very soon our representative of Editorial/Subscription office will contact you.
	

	\n Editorial Office
	\n $JournalName
	\n Bentham Science Publishers
	\n Email: $JournalEmail
	\n URL: http://www.benthamscience.com/journals/$JournalCode/";
	
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	"Bcc: urooj@benthamscience.org"."\r\n" .
   "Reply-To: $JournalEmail" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);


$iptocountry = '';
		$IP = $_SERVER['REMOTE_ADDR'];
		if (!empty($IP)) {
		   $iptocountry = file_get_contents('http://api.hostip.info/country.php?ip='.$IP);
		}
	
	
	include('connection.php');
	$query =  "INSERT INTO free_online_subscription (JournalCode, Free_Online_Subscription_Day, Free_Online_Subscription_Month_ID, Free_Online_Subscription_Month, Free_Online_Subscription_Year, Free_Online_Subscription_Date, IssueTitle, EditorName, Journal_One, Journal_Two, Journal_Three, Subscriber_Title, Subscriber_First_Name, Subscriber_Last_Name, Subscriber_Address, Subscriber_City, Subscriber_State, Subscriber_Zip, Subscriber_Country, Subscriber_Email, REMOTE_ADDR, REMOTE_HOST, REMOTE_PORT, REQUEST_TIME, HTTP_REFERER, SCRIPT_FILENAME, IP_TO_COUNTRY) 
values ('".$JournalCode."', '".date("d")."', '".date("m")."', '".date("F")."', '".date("Y")."', '".$_SERVER['REQUEST_TIME']."', '".$IssueTitle."', '".$EditorName."', '".$journal[0]."', '".$journal[1]."', '".$journal[2]."','".$title."', '".$firstname."', '".$lastname."', '".$address."', '".$city."', '".$state."', '".$zip."', '".$country."', '".$useremail."', '".$_SERVER['REMOTE_ADDR']."','".$_SERVER['REMOTE_HOST']."', '".$_SERVER['REMOTE_PORT']."','".$_SERVER['REQUEST_TIME']."','".$_SERVER['HTTP_REFERER']."','".$_SERVER['SCRIPT_FILENAME']."', '".$iptocountry."')";
$result = mysql_query($query)or die(mysql_error());

header("Location: ../journal/free-online-subscription-submitted.php");

}

}

?>