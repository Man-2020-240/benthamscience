<?php
$callfrom = $_SERVER["HTTP_REFERER"];
$remotuser = $_SERVER["REMOTE_ADDR"];
session_start();
    $journalcode = $_POST['JournalCode'];
    $journalname = $_POST['JournalName'];
    $journalemail = $_POST['JournalEmail'];

$secretKey = "6LfDYREUAAAAAKa2_XO4UibWfMQm3kIEOQrt_fr2";
$response = $_POST['g-recaptcha-response'];

$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$response."&remoteip=".$remotuser);
        
        
        $responseKeys = json_decode($response,true);
        if(intval($responseKeys["success"]) !== 1) {
          //echo '<h2>Your request has been rejected by our system, please accept apologies for inconvenience.</h2>';
          header("Location: ../../../../../../../../../index.php");
        } else {
          //echo '<h2>Thanks for posting comment.</h2>';


    

    $hasAttachment = !empty($_FILES['attachment']['name']);
    $uid = md5(uniqid(time()));

    // mail essentials
    $from = "root@benthamscience.com";
    $to = "qasit@benthamscience.net";
    $subject = "Reviewer Request for ".$journalname;
    $first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
	$country = $_POST['country'];
	
	$email = $_POST['email'];
	$field_of_expertise = $_POST['field_of_expertise'];
	$comments = $_POST['comments'];

    // standard mail headers
    $header = "From: " . $from . "\r\n";
    $header.="Bcc: urooj@benthamscience.net"."\r\n";
    $header.= "Reply-To: " . $to . "\r\n";
    $header.= "MIME-Version: 1.0\r\n";
    $header.= "Content-Type: multipart/mixed; boundary=\"" . $uid . "\"\r\n\r\n";
    $message.=
	"Registration Type: Reviewer Panel". "\r\n" ."Name: " . $first_name ." ". $last_name . "\r\n" ."Email: " . $email . "\r\n"  ."Country:" . $country . "\r\n" ."Field Of Expertise: ". $field_of_expertise . "\r\n"."General Comments: ". $comments .  "\r\n";

    // plain text part
    $message.= "--" . $uid . "\r\n";
    $message.= "Content-Type:text/plain; charset=iso-8859-1\r\n";
    $message.= "Content-Transfer-Encoding: 7bit\r\n\r\n";
    $message.= $message . "\r\n\r\n";
	

    // if there is an attachment
    if ($hasAttachment) {
        // store some varables
        $file_name = $_FILES['attachment']['name'];
        $temp_name = $_FILES['attachment']['tmp_name'];
        $file_type = $_FILES['attachment']['type'];

        // get the extension of the file
        $base = basename($file_name);
        $extension = substr($base, strlen($base) - 4, strlen($base));

        // only thes file types will be allowed
        $allowed_extensions = array( ".doc", ".docx", ".pdf", ".rtf");

        // check that this file type is allowed
        if (in_array($extension, $allowed_extensions)) {

            // things you need
            $file = $temp_name;
            $content = chunk_split(base64_encode(file_get_contents($file)));

            // file attachment
            $message.= "--" . $uid . "\r\n";
            $message.= "Content-Type: " . $file_type . "; name=\"" . $file_name . "\"\r\n";
            $message.= "Content-Transfer-Encoding: base64\r\n";
            $message.= "Content-Disposition: attachment; filename=\"" . $file_name . "\"\r\n";
            //$message.= $encoded2."\r\n";
            $message.= $content . "\r\n\r\n";
            $message.= "--$seperator2--\r\n";
        }
    }

    $msg = "";

    // send the mail
    if (mail($to, $subject, $message, $header)) {
        header('Location: ../../../../../../journals/'.$journalcode.'/');
    } else {
       echo "error";
    }
	
}
?>