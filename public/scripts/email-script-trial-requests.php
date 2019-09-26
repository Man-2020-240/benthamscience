<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../../../../../../../../../journals/".$journalseoname."/trial-request-not-submitted/");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';
		  
if($callfrom == "http://www.benthamscience.com/journal/trial-requests.php" || $callfrom == "http://benthamscience.com/journal/trial-requests.php" || $callfrom == "http://test.benthamscience.com/journal/trial-requests.php")
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
	$journalemail = $_POST['JournalEmail'];
	
	$xml2 = simplexml_load_file("../journal-meta/".$journalcode.".xml");
	
	$journalseoname = $xml2->{'journal-front'}->{'journal-meta'}->{'journal-seo-title'};
	
	if (isset($_POST['InstitutionalContact']))
	{
	$InstitutionalContact = $_POST['InstitutionalContact'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['InstitutionName']))
	{
	$InstitutionName = $_POST['InstitutionName'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['InstitutionIP']))
	{
	$InstitutionIP = $_POST['InstitutionIP'];
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['InstitutionAddress']))
	{
	$InstitutionAddress = $_POST['InstitutionAddress'];
	}
	else
	{
	$er =1;
	}
	
	
	if (isset($_POST['InstitutionCountry']))
	{
	$InstitutionCountry = $_POST['InstitutionCountry'];
	}
	else
	{
	$er =1;
	}
	
	
	if (strpos($_POST['InstitutionEmail'],"@")<>0)
	{
	$InstitutionEmail = $_POST['InstitutionEmail'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['InstitutionPhone']))
	{
	$InstitutionPhone = $_POST['InstitutionPhone'];
	}
	
	
	if (isset($_POST['InstitutionFax']))
	{
	$InstitutionFax = $_POST['InstitutionFax'];
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
		
		header("Location: ../../../../../../../../../journals/".$journalseoname."/trial-request-not-submitted/");
	}	
	else
	{
	$to      =  "trial@benthamscience.org";
	$subject = "Trial Requests - Online Trials Office Record: $journalname";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Online Trials Office ($journalname):
	\n Following Trial Request has been submitted by $title $lastname to $journalname.
	\n
	\n ========================================================
	\n Institution Details:
	\n ========================================================
	\n Institution Contact: $InstitutionContact
	\n Institution Name: $InstitutionName
	\n Institution IP: $InstitutionIP
	\n Institution Address: $InstitutionAddress
	\n Institution Country: $InstitutionCountry
	\n Institution Email: $InstitutionEmail
	\n Institution Phone: $InstitutionPhone
	\n Institution Fax: $InstitutionFax
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
	$subject_admin = "Trial Requests Webmaster Record: $journalname";
	
	$message_admin = "Technical Details of script execution of Library Recommendations:";
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
	$subject2 = "System-Reply: Trial request acknowledgement for $journalname";
	$message2 = "Dear $title $lastname,
	\n
	\n Thank you for submitting your online trial request to $journalname, very soon our representative of Online Trial office will contact you or your Institution.
	

	\n Online Trials Office
	\n $journalname
	\n Bentham Science Publishers
	\n URL: http://www.benthamscience.com/journals/$journalseoname/
	\n Email: subscriptions@benthamscience.org";
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	"Bcc: urooj@benthamscience.org"."\r\n" .
   "Reply-To: $journalemail" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);

header("Location: ../../../../../../../../../journals/".$journalseoname."/trial-request-submitted/");

}
}

?>