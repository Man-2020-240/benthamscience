<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../../../../../../../../../journals/".$journalseoname."/request-printed-version-not-submitted/");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';
		  
if($callfrom == "http://www.benthamscience.com/journal/request-printed-version.php" || $callfrom == "http://benthamscience.com/journal/request-printed-version.php" || $callfrom == "http://test.benthamscience.com/journal/request-printed-version.php")
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


	
	if (isset($_POST['requesttype']))
	{
	$requesttype = $_POST['requesttype'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Institute']))
	{
	$Institute = $_POST['Institute'];
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
		header("Location: ../../../../../../../../../journals/".$journalseoname."/request-printed-version-not-submitted/");
	}	
	else
	{
	$to      =  "$journalemail";
	$to_es      =  "samplecopy@benthamscience.org";
	$subject = "Printed Sample Copy Request- Editorial Office Record: $journalname";
	$subject_es = "Printed Sample Copy Request - Coordination Office Record: $journalname";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Editorial Office $journalname:
	\n Following printed sample copy request has been submitted by $title $lastname to $journalname.
	\n ========================================================
	\n Request Details:
	\n ========================================================
	\n Type of Request: $requesttype
	\n Institute Name: $Institute
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
	
	mail($to_es, $subject_es, $message, $headers);
	
	$to_admin = "urooj@benthamscience.org";
	$subject_admin = "Printed Sample Copy Request - Webmaster Record: $journalname";
	
	$message_admin = "Technical Details of script execution of Printed Sample Copy Request:";
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
	$subject2 = "System-Reply: Printed Sample Copy Request submission acknowledgement for $journalname";
	$message2 = "Dear $title $lastname,\n
	Thank you for submitting your Printed Sample Copy Request to $journalname, Manager of editorial office will contact you soon.
	

	\nEditorial Office
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
	
/*	
	include('connection.php');
	$query =  "INSERT INTO abstract_submissions (Abstract_Journal_Code, Abstract_Day, Abstract_Month_ID, Abstract_Month, Abstract_Year, Abstract_Title, Abstract_Authors, Abstract_Author_Aff, Abstract_Text, Abstract_Keywords, Abstract_Sub_Date, Article_Sub_Date, Author_Title, Author_First_Name, Author_Last_Name, Author_Address, Author_City, Author_State, Author_Zip, Author_Country, Author_Email, REMOTE_ADDR, REMOTE_HOST, REMOTE_PORT, REQUEST_TIME, HTTP_REFERER, SCRIPT_FILENAME, IP_TO_COUNTRY) 
values ('".$journalcode."', '".date("d")."', '".date("m")."', '".date("F")."', '".date("Y")."', '".$abstracttitle."', '".$authors."', '".$authoraff."', '".$abstracttext."', '".$keywords."','".$_SERVER['REQUEST_TIME']."', '".$submissiondate."', '".$title."', '".$firstname."', '".$lastname."', '".$address."', '".$city."', '".$state."', '".$zip."', '".$country."', '".$useremail."', '".$_SERVER['REMOTE_ADDR']."','".$_SERVER['REMOTE_HOST']."', '".$_SERVER['REMOTE_PORT']."','".$_SERVER['REQUEST_TIME']."','".$_SERVER['HTTP_REFERER']."','".$_SERVER['SCRIPT_FILENAME']."', '".$iptocountry."')";
$result = mysql_query($query)or die(mysql_error());
*/

header("Location: ../../../../../../../../../journals/".$journalseoname."/request-printed-version-submitted/");

}

}

?>