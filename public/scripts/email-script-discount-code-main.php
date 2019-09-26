<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
		
		$responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
		  header("Location: ../../../../../index.php");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';

if($callfrom == "http://www.benthamscience.com/discount-code.php" || $callfrom == "http://benthamscience.com/discount-code.php")
{
}
else
{
	 echo "<div class='alert alert-success' role='alert'>
 <strong>You have successfully submitted for your discout code. Kindly check your E-mail.</strong>
 </div><meta http-equiv='refresh' content='3;url=/../index.php'>";
//header("Location: ../index.php");
}

//include "verify.php";

session_start();
	
$confid = $_POST['confid'];
$confname = $_POST['confname'];
		
	if (isset($_POST['Name']))
	{
	$Name = $_POST['Name'];
	}
	else
	{
	$er =1;
	}
	
	
	
	if (isset($_POST['Designation']))
	{
	$Designation = $_POST['Designation'];
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
		

	
	if (isset($_POST['UserEmail']))
	{
	$useremail = $_POST['UserEmail'];
	}
	else
	{
	$er =1;
	}
	
	if (isset($_POST['ppv']))
	{
		$ppv = "Yes";
	}
	else
	{
		$ppv = "No";
	}
	
	if (isset($_POST['subscription']))
	{
		$subscription = "Yes";
	}
	else
	{
		$subscription = "No";
	}
	
	if (isset($_POST['ebksale']))
	{
		$ebksale = "Yes";
	}
	else
	{
		$ebksale = "No";
	}
	
	if (isset($_POST['comment']))
	{
		$Comment = $_POST['comment'];
	}
	
	if ($er==1)
	{
		header("Location: ../../../../../index.php");
	
	}	
	else
	{
	//$to      =  "irfanali@benthamscience.net,  asees@benthamscience.net";
	$to      =  "marketing@benthamscience.net,  faizan@benthamscience.net";
	$subject = "Discount Code Request - Marketing Office Record: $confid";
	
	$message = 
	"\n ===============[ $subject ]===============
	\n Attention Marketing Office:
	\n Following Discount Code Request has been submitted by $Name.
	\n
	\n ========================================================
	\n Conference and Discount Details:
	\n ========================================================
	\n Conference Name: $confname
	\n PPV discount (pay per view article): $ppv
	\n Print/online subscription discount: $subscription
	\n E-books sale: $ebksale
	\n Comments: $Comment
	\n ========================================================
	\n Contact Details:
	\n ========================================================
	\n Name: $Name
	\n Designation: $Designation
	\n Country: $country
	\n Email: $useremail
	\n
	\n ========================================================
	\n Message ID:". session_id(). "
	\n ========================================================
	\n";
	
	$headers = "From: root@benthamscience.com". "\r\n" ;
	$headers .="Bcc: urooj@benthamscience.net"."\r\n";
	$headers .="Reply-To: $useremail" . "\r\n";
	$headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=UTF-8\r\n";
	$headers .="X-Mailer: PHP/" . phpversion();
	
	mail($to, $subject, $message, $headers);
	
	$to_admin = "urooj@benthamscience.net";
	$subject_admin = "Discount Code Request - Webmaster Record: $confid";
	
	$message_admin = "Technical Details of script execution of Discount Code Request:";
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
	
	//\n Thank you for submitting your discount code request for the conference entitled $confname, very soon our representative of Marketing office will contact you.

	mail($to_admin, $subject_admin, $message_admin, $headers_admin);
	
	while (list ($key, $val) = each ($HTTP_POST_VARS)) 
	{
			$message .= "$key : $val\n"; 
	}

	$to2      = "$useremail";
	$subject2 = "System-Reply: Discount code request acknowledgement for the conference: $confid";
	$message2 = "Dear $Name,
	<br/>
  	Thank you for filling up the form to apply for the discount offer for the conference entitled Global Biotechnology Congress 2019. Your discount code is BSPCNF2019. To avail 20% discount, QUOTE “BSPCNF2019” at www.eurekaselect.com. Please email us at faizan@benthamscience.net or marketing@benthamscience.net in case of any questions.

<br/>
Here are the directions for availing the discounts:
<ol>
<li>
<a href=".chr(34)."http://www.eurekaselect.com/user/login".chr(34).">Login</a> to Eurekaselect.com with your username and password. If you do not have an account on Eurekaselect, then register <a href=".chr(34)."http://www.eurekaselect.com/user/register".chr(34).">here</a>.
</li>
<li>
Click on the purchase links for the books/articles of your interest.. This will automatically ad the books to your shopping cart. You can continue to add more books and PPV articles into your shopping cart.
</li>
<li>
At the bottom of the shopping cart, enter the promo code [BSPCNF2019] and click on Apply. The discounted price will be displayed.
</li>
<li>
Proceed to the checkout process and fill in the required payment details in the proceeding forms.
</li>
</ol>
<br/>
Note: While making your purchase, please select the promo code option to get discounts for PPV (Pay Per View) articles, Print / online subscriptions and eBooks.
<br/>
<br/>
Marketing Office<br/>
Bentham Science Publishers<br/>
URL: http://www.benthamscience.com<br/>
Email: marketing@benthamscience.net";
	$headers2 = "From: root@benthamscience.com" . "\r\n" .
	$headers2 .= "Bcc: urooj@benthamscience.net"."\r\n" .
    $headers2 .= "Reply-To: marketing@benthamscience.net" . "\r\n" .
    $headers2 .= "Content-Type: text/html; charset=UTF-8\r\n";
    $headers2 .= "X-Mailer: PHP/" . phpversion();
   
	mail($to2, $subject2, $message2, $headers2);

eader("Location: ../../../../index.php");

}
		
}

?>