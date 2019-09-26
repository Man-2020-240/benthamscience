<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../farid-murad-thematic-issue-not-submitted.php");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';


if($callfrom == "http://www.benthamscience.com/farid-murad-thematic-issue.php" || $callfrom == "http://benthamscience.com/farid-murad-thematic-issue.php")
{
}
else
{

header("Location: ../index.php");
}

//include "verify.php";

session_start();	
		
	if (isset($_POST['title']))
	{
	$title = $_POST['title'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['Name']))
	{
	$Name = $_POST['Name'];
	}
	else
	{
	$er =1;
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
	
	
	if (isset($_POST['Country']))
	{
		$country = $_POST['Country'];
	}
	
	
	
	if (isset($_POST['Order']))
	{
		$Order = $_POST['Order'];
	}
	else
	{
		$er =1;
	}
	
	if (isset($_POST['OrderType']))
	{
		$OrderType = $_POST['OrderType'];
	}
	else
	{
		$er =1;
	}
	
	
	if ($_POST['Order'] == "print")
	{
		if (isset($_POST['DeliveryAddress']))
		{
			$DeliveryAddress = $_POST['DeliveryAddress'];
		}
		else
		{
			$er =1;
		}
		
		if (isset($_POST['printcopies']))
		{
			$printcopies = $_POST['printcopies'];
		}
		else
		{
			$er =1;
		}
	}

	
	if ($_POST['Order'] == "electronic")
	{
		if (isset($_POST['electroniccopies']))
		{
			$electroniccopies = $_POST['electroniccopies'];
		}
		else
		{
			$er =1;
		}
		
		if (strpos($_POST['DeliveryEmailAddress'],"@")<>0)
		{
			$DeliveryEmailAddress = $_POST['DeliveryEmailAddress'];
		}
		else
		{
			$er =1;
		}
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
		header("Location: ../farid-murad-thematic-issue-not-submitted.php");
	}	
	else
	{
	$to      =  "benthams@emirates.net.ae, jalilur67@yahoo.co.uk, marketing@benthamscience.org";
	$subject = "Thematic Issue: Ferid Murad: A Legacy of Science, Medicine, and Mentorship";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Subscription Office:
	\n Following Subscription has been submitted by $title $Name.
	\n 
	\n ========================================================
	\n Contact Details:
	\n ========================================================
	\n Title: $title
	\n Name: $Name
	\n Address: $address
	\n City: $city
	\n Email: $useremail
	\n
	
	\n ========================================================
	\n Order Details:
	\n ========================================================
	\n Order Type: $Order";
	
	if ($_POST['Order'] == "print")
	{
		$message = $message . "
		\n Delivery Address: $DeliveryAddress
		\n Number of print copies: $printcopies";
	}
	else
	{
		$message = $message . "
		\n Delivery Email Address: $DeliveryEmailAddress
		\n Number of electronic copies: $electroniccopies";
	}
	
	
	$message = $message . "
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
	$subject_admin = "Thematic Issue: Ferid Murad: A Legacy of Science, Medicine, and Mentorship";
	
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
	
	

	$to2      = "$useremail";
	$subject2 = "System-Reply: Thematic Issue: Ferid Murad: A Legacy of Science, Medicine, and Mentorship";
	$message2 = "Dear $title $Name,
	\n
	\n Thank you for ordering the (Thematic Issue: Ferid Murad: A Legacy of Science, Medicine, and Mentorship), you will be contacted by our Subscription department shortly.
	

	\n Online Subscription Office
	\n Bentham Science Publishers
	\n URL: http://www.benthamscience.com
	\n Email: subscriptions@benthamscience.org";
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	"Bcc: urooj@benthamscience.org"."\r\n" .
   "Reply-To: subscriptions@benthamscience.org" . "\r\n" .
   "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);

header("Location: ../farid-murad-thematic-issue-submitted.php");

}

}

?>