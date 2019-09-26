<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../../../../../../../../../journals/".$journalseoname."/library-recommendation-not-submitted/");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';

if($callfrom == "http://www.benthamscience.com/journal/library-recommendation.php" || $callfrom == "http://benthamscience.com/journal/library-recommendation.php" || $callfrom == "http://test.benthamscience.com/journal/library-recommendation.php")
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

	if (isset($_POST['ch1']))
	{
	$ch1 = "This journal will be a value addition to our organisation's collection of scientific resources";
	}
	
	if (isset($_POST['ch2']))
	{
	$ch2 = "I will refer my students to this journal and it is critical that they have access to this information";
	}
	
	if (isset($_POST['ch3']))
	{
	$ch3 = "I have published/intend to publish articles in this journal";
	}
	
	if (isset($_POST['AdditionReasons']))
	{
	$AdditionReasons = $_POST['AdditionReasons'];
	}
	
	if (isset($_POST['LibraryContact']))
	{
	$LibraryContact = $_POST['LibraryContact'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['LibraryName']))
	{
	$LibraryName = $_POST['LibraryName'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Institution']))
	{
	$Institution = $_POST['Institution'];
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['LibraryAddress']))
	{
	$LibraryAddress = $_POST['LibraryAddress'];
	}
	else
	{
	$er =1;
	}
	
	
	if (isset($_POST['LibraryCountry']))
	{
	$LibraryCountry = $_POST['LibraryCountry'];
	}
	else
	{
	$er =1;
	}
	
	if (strpos($_POST['LibraryEmail'],"@")<>0)
	{
		$LibraryEmail = $_POST['LibraryEmail'];
	}
	else
	{
		$er =1;
	}
	
	
	
	if (isset($_POST['LibraryPhone']))
	{
	$LibraryPhone = $_POST['LibraryPhone'];
	}
	
	
	if (isset($_POST['LibraryFax']))
	{
	$LibraryFax = $_POST['LibraryFax'];
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
		header("Location: ../../../../../../../../../journals/".$journalseoname."/library-recommendation-not-submitted/");
	}	
	else
	{
	$to      =  "trial@benthamscience.org, subscriptions@benthamscience.org, marketing@benthamscience.org";
	$subject = "Library Recommendations Marketing and Subscription Office Record: $journalname";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Marketing and Subscription Office $journalname:
	\n Following Library Recommendations has been submitted by $title $lastname to $journalname.
	\n
	\n ========================================================
	\n Reasons of Recommendations:
	\n ========================================================
	\n Reason #1: $ch1
	\n Reason #2: $ch2
	\n Reason #3: $ch3
	\n Additional Reasons: $AdditionReasons
	\n
	\n ========================================================
	\n Library Details:
	\n ========================================================
	\n Library Contact: $LibraryContact
	\n Library Name: $LibraryName
	\n Institution: $Institution
	\n Library Address: $LibraryAddress
	\n Library Country: $LibraryCountry
	\n Library Email: $LibraryEmail
	\n Library Phone: $LibraryPhone
	\n Library Fax: $LibraryFax
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
	$subject_admin = "Library Recommendations Webmaster Record: $journalname";
	
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
	$subject2 = "System-Reply: Library Recommendations acknowledgement for $journalname";
	$message2 = "Dear $title $lastname,
	\n
	\n Thank you for submitting your recommendations to $journalname, very soon our representative of Marketing/Subscription office will contact your library.
	

	\n Marketing/Subscription Office
	\n $journalname
	\n Bentham Science Publishers
	\n URL: http://www.benthamscience.com/journals/$journalseoname/
	\n Email: subscriptions@benthamscience.org";
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	"Bcc: urooj@benthamscience.org"."\r\n" .
   "Reply-To: $journalemail" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);

header("Location: ../../../../../../../../../journals/".$journalseoname."/library-recommendation-submitted/");

}
}

?>