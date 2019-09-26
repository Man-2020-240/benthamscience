<?php
$callfrom = $_SERVER["HTTP_REFERER"];
if($callfrom == "http://www.benthamscience.org/journal/submit-abstract-online.php" || $callfrom == "http://benthamscience.org/journal/submit-abstract-online.php" || $callfrom == "http://test.benthamscience.org/journal/submit-abstract-online.php")
{
}
else
{

header("Location: ../index.php");
}

include "verify.php";

session_start();
	$journalcode = $_POST['JournalCode'];
	$journalname = $_POST['JournalName'];
	$journalemail = $_POST['JournalEmail'];
	



	
	if (isset($_POST['AbstractTitle']))
	{
	$abstracttitle = $_POST['AbstractTitle'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Authors']))
	{
	$authors = $_POST['Authors'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['AuthorAff']))
	{
	$authoraff = $_POST['AuthorAff'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['AbstractText']))
	{
	$abstracttext = $_POST['AbstractText'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Keywords']))
	{
	$keywords = $_POST['Keywords'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['SubmissionDate']))
	{
	$submissiondate = $_POST['SubmissionDate'];
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
		header("Location: ../journal/abstract-not-submitted.php?journalID=$journalcode");
	}	
	else
	{
	$to      =  "$journalemail";
	$to_es      =  "abstracts@benthamscience.org";
	$subject = "Online Abstract Submission - Editorial Office Record: $journalname";
	$subject_es = "Online Abstract Submission - Solicitation Office Record: $journalname";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Editorial Office $journalname:
	\n Following Abstract has been submitted by $title $lastname to $journalname.
	\n ========================================================
	\n Abstract Details:
	\n ========================================================
	\n Abstract Title: $abstracttitle
	\n Contributing Authors: $authors
	\n Author Affiliation: $authoraff
	\n Abstract Keywords: $keywords
	\n Abstract Description: $abstracttext
	\n Tentative Date of manuscript submission: $submissiondate
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
	
	$headers = "From: $useremail". "\r\n" ;
	$headers .="Bcc: urooj@benthamscience.org"."\r\n";
	$headers .="Reply-To: $useremail" . "\r\n";
	$headers .="X-Mailer: PHP/" . phpversion();
	
	mail($to, $subject, $message, $headers);
	mail($to_es, $subject_es, $message, $headers);
	
	$to_admin = "urooj@benthamscience.org";
	$subject_admin = "Online Abstract Submission Webmaster Record: $journalname";
	
	$message_admin = "Technical Details of script execution of Online Abstract Submission:";
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
	$subject2 = "System-Reply: Abstract submission acknowledgement for $journalname";
	$message2 = "Dear $title $lastname,\n
	Thank you for submitting your abstract to $journalname, Publication Manager of editorial office will contact you within 24 hours.
	

	\nEditorial Office
	\n$journalname
	\nBentham Science Publishers
	\nURL: http://www.benthamscience.com/journal/index.php?journalID=$journalcode
	\nEmail: $journalemail";
	$headers2 = "From: $journalemail" . "\r\n" .
	"Bcc: urooj@benthamscience.org"."\r\n" .
   "Reply-To: $journalemail" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);

header("Location: ../journal/abstract-submitted.php?journalID=$journalcode");

}


?>