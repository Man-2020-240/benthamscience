<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../../../../../../../../../journals/".$journalseoname."/issue-proposal-not-submitted/");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';


if($callfrom == "http://www.benthamscience.com/journal/issue-proposal-online.php" || $callfrom == "http://benthamscience.com/journal/issue-proposal-online.php" || $callfrom == "http://test.benthamscience.com/journal/issue-proposal-online.php")
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
	
	if (isset($_POST['AbstractTitle1']))
	{
	$AbstractTitle1 = $_POST['AbstractTitle1'];
	}
	
	if (isset($_POST['AbstractTitle2']))
	{
	$AbstractTitle2 = $_POST['AbstractTitle2'];
	}
	
	if (isset($_POST['AbstractTitle3']))
	{
	$AbstractTitle3 = $_POST['AbstractTitle3'];
	}
	
	if (isset($_POST['AbstractTitle4']))
	{
	$AbstractTitle4 = $_POST['AbstractTitle4'];
	}
	
	if (isset($_POST['AbstractTitle5']))
	{
	$AbstractTitle5 = $_POST['AbstractTitle5'];
	}
	
	if (isset($_POST['AbstractTitle6']))
	{
	$AbstractTitle6 = $_POST['AbstractTitle6'];
	}
	
	if (isset($_POST['AbstractTitle7']))
	{
	$AbstractTitle7 = $_POST['AbstractTitle7'];
	}
	
	if (isset($_POST['AbstractTitle8']))
	{
	$AbstractTitle8 = $_POST['AbstractTitle8'];
	}
	
	if (isset($_POST['AbstractTitle9']))
	{
	$AbstractTitle9 = $_POST['AbstractTitle9'];
	}
	
	if (isset($_POST['AbstractTitle10']))
	{
	$AbstractTitle10 = $_POST['AbstractTitle10'];
	}
	
	if (isset($_POST['Authors1']))
	{
	$Authors1 = $_POST['Authors1'];
	}
	
	if (isset($_POST['Authors2']))
	{
	$Authors2 = $_POST['Authors2'];
	}
	
	if (isset($_POST['Authors3']))
	{
	$Authors3 = $_POST['Authors3'];
	}
	
	if (isset($_POST['Authors4']))
	{
	$Authors4 = $_POST['Authors4'];
	}
	
	if (isset($_POST['Authors5']))
	{
	$Authors5 = $_POST['Authors5'];
	}
	
	if (isset($_POST['Authors6']))
	{
	$Authors6 = $_POST['Authors6'];
	}
	
	if (isset($_POST['Authors7']))
	{
	$Authors7 = $_POST['Authors7'];
	}
	
	if (isset($_POST['Authors8']))
	{
	$Authors8 = $_POST['Authors8'];
	}
	
	if (isset($_POST['Authors9']))
	{
	$Authors9 = $_POST['Authors9'];
	}
	
	if (isset($_POST['Authors10']))
	{
	$Authors10 = $_POST['Authors10'];
	}
	
	if (isset($_POST['AuthorAff1']))
	{
	$AuthorAff1 = $_POST['AuthorAff1'];
	}
	
	if (isset($_POST['AuthorAff2']))
	{
	$AuthorAff2 = $_POST['AuthorAff2'];
	}
	
	if (isset($_POST['AuthorAff3']))
	{
	$AuthorAff3 = $_POST['AuthorAff3'];
	}
	
	if (isset($_POST['AuthorAff4']))
	{
	$AuthorAff4 = $_POST['AuthorAff4'];
	}
	
	if (isset($_POST['AuthorAff5']))
	{
	$AuthorAff5 = $_POST['AuthorAff5'];
	}
	
	if (isset($_POST['AuthorAff6']))
	{
	$AuthorAff6 = $_POST['AuthorAff6'];
	}
	
	if (isset($_POST['AuthorAff7']))
	{
	$AuthorAff7 = $_POST['AuthorAff7'];
	}
	
	if (isset($_POST['AuthorAff8']))
	{
	$AuthorAff8 = $_POST['AuthorAff8'];
	}
	
	if (isset($_POST['AuthorAff9']))
	{
	$AuthorAff9 = $_POST['AuthorAff9'];
	}
	
	if (isset($_POST['AuthorAff10']))
	{
	$AuthorAff10 = $_POST['AuthorAff10'];
	}


	
	if (isset($_POST['IssueTitle']))
	{
	$IssueTitle = $_POST['IssueTitle'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['GEName']))
	{
	$GEName = $_POST['GEName'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['GEAff']))
	{
	$GEAff = $_POST['GEAff'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['GERecentPub']))
	{
	$GERecentPub = $_POST['GERecentPub'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['IssueDescription']))
	{
	$IssueDescription = $_POST['IssueDescription'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Keywords']))
	{
	$Keywords = $_POST['Keywords'];
	}
	
	
	if (isset($_POST['IssueType']))
	{
	$IssueType = $_POST['IssueType'];
	}
	else
	{
	$er =1;
	}

	
	if (isset($_POST['TotalArticles']))
	{
	$TotalArticles = $_POST['TotalArticles'];
	}
	else
	{
	$er =1;
	}

	if (isset($_POST['SubmissionDate']))
	{
	$SubmissionDate = $_POST['SubmissionDate'];
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
		header("Location: ../../../../../../../../../journals/".$journalseoname."/issue-proposal-not-submitted/");
	}	
	else
	{
	$to      =  "$journalemail";
	$to_es      =  "qasit@benthamscience.net, mahmood@benthamscience.net";
	$subject = "Online Issue Proposal Submission - Editorial Office Record: $journalname";
	$subject_es = "Online Issue Proposal Submission - Solicitation Office Record: $journalname";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Editorial Office $journalname:
	\n Following Abstract has been submitted by $title $lastname to $journalname.
	\n ========================================================
	\n Issue Details:
	\n ========================================================
	\n Issue Title: $IssueTitle
	\n
	\n Issue Description: $IssueDescription
	\n
	\n Issue Keywords: $Keywords
	\n
	\n Issue Type: $IssueType
	\n
	\n Tentative Date of Issue Submission: $SubmissionDate
	\n
	\n Total Articles: $TotalArticles
	\n ========================================================
	\n Guest Editor Details:
	\n ========================================================
	\n Guest Editor Name: $GEName
	\n Guest Editor Affiliation: $GEAff
	\n --------------------------------------------------------
	\n Recent Publications:
	\n --------------------------------------------------------
	\n $GERecentPub
	\n
	\n ========================================================
	\n Articles of Special Issue:
	\n ========================================================
	\n ";
	
	if ($AbstractTitle1<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #1 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle1
	\n Contributing Authors: $Authors1
	\n Author Affiliations: $AuthorAff1
	\n 
	\n ";
	}
	
	if ($AbstractTitle2<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #2 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle2
	\n Contributing Authors: $Authors2
	\n Author Affiliations: $AuthorAff2
	\n 
	\n ";
	}
	
	
	if ($AbstractTitle3<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #3 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle3
	\n Contributing Authors: $Authors3
	\n Author Affiliations: $AuthorAff3
	\n 
	\n ";
	}
	
	if ($AbstractTitle4<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #4 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle4
	\n Contributing Authors: $Authors4
	\n Author Affiliations: $AuthorAff4
	\n 
	\n ";
	}
	
	if ($AbstractTitle5<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #5 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle5
	\n Contributing Authors: $Authors5
	\n Author Affiliations: $AuthorAff5
	\n 
	\n ";
	}
	
	if ($AbstractTitle6<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #6 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle6
	\n Contributing Authors: $Authors6
	\n Author Affiliations: $AuthorAff6
	\n 
	\n ";
	}
	
	if ($AbstractTitle7<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #7 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle7
	\n Contributing Authors: $Authors7
	\n Author Affiliations: $AuthorAff7
	\n 
	\n ";
	}
	
	if ($AbstractTitle8<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #8 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle8
	\n Contributing Authors: $Authors8
	\n Author Affiliations: $AuthorAff8
	\n 
	\n ";
	}
	
	if ($AbstractTitle9<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #9 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle9
	\n Contributing Authors: $Authors9
	\n Author Affiliations: $AuthorAff9
	\n 
	\n ";
	}
	
	if ($AbstractTitle10<>"")
	{
	$message .= "
	\n --------------------------------------------------------
	\n Article #10 Details:
	\n --------------------------------------------------------
	\n Article Title: $AbstractTitle10
	\n Contributing Authors: $Authors10
	\n Author Affiliations: $AuthorAff10
	\n 
	\n ";
	}
	
	$message .= "
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
	$headers .="Bcc: urooj@benthamscience.net"."\r\n";
	$headers .="Reply-To: $useremail" . "\r\n";
	$headers .="X-Mailer: PHP/" . phpversion();
	
	mail($to, $subject, $message, $headers);
	mail($to_es, $subject_es, $message, $headers);
	
	$to_admin = "urooj@benthamscience.net";
	$subject_admin = "Online Issue Proposal Submission - Webmaster Record: $journalname";
	
	$message_admin = "Technical Details of script execution of Online Issue Proposal Submission:";
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
	$subject2 = "System-Reply: Issue Proposal Submission Acknowledgement for $journalname";
	$message2 = "Dear $title $lastname,\n
	Thank you for submitting your abstract to $journalname, Publication Manager of editorial office will contact you soon.
	

	\nEditorial Office
	\n$journalname
	\nBentham Science Publishers
	\nURL: http://www.benthamscience.com/journals/$journalseoname/
	\nEmail: $journalemail";
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	"Bcc: urooj@benthamscience.net"."\r\n" .
   "Reply-To: $journalemail" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);
	/*
	$iptocountry = '';
		$IP = $_SERVER['REMOTE_ADDR'];
		if (!empty($IP)) {
		   $iptocountry = file_get_contents('http://api.hostip.info/country.php?ip='.$IP);
		}
	
	
	include('connection.php');
	$query =  "INSERT INTO abstract_submissions (Abstract_Journal_Code, Abstract_Day, Abstract_Month_ID, Abstract_Month, Abstract_Year, Abstract_Title, Abstract_Authors, Abstract_Author_Aff, Abstract_Text, Abstract_Keywords, Abstract_Sub_Date, Article_Sub_Date, Author_Title, Author_First_Name, Author_Last_Name, Author_Address, Author_City, Author_State, Author_Zip, Author_Country, Author_Email, REMOTE_ADDR, REMOTE_HOST, REMOTE_PORT, REQUEST_TIME, HTTP_REFERER, SCRIPT_FILENAME, IP_TO_COUNTRY) 
values ('".$journalcode."', '".date("d")."', '".date("m")."', '".date("F")."', '".date("Y")."', '".$abstracttitle."', '".$authors."', '".$authoraff."', '".$abstracttext."', '".$keywords."','".$_SERVER['REQUEST_TIME']."', '".$submissiondate."', '".$title."', '".$firstname."', '".$lastname."', '".$address."', '".$city."', '".$state."', '".$zip."', '".$country."', '".$useremail."', '".$_SERVER['REMOTE_ADDR']."','".$_SERVER['REMOTE_HOST']."', '".$_SERVER['REMOTE_PORT']."','".$_SERVER['REQUEST_TIME']."','".$_SERVER['HTTP_REFERER']."','".$_SERVER['SCRIPT_FILENAME']."', '".$iptocountry."')";
$result = mysql_query($query)or die(mysql_error());

 */
header("Location: ../../../../../../../../../journals/".$journalseoname."/issue-proposal-submitted/");

}

}

?>