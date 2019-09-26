<?php
  require_once('recaptchalib.php');
  $privatekey = "6LfWe-oSAAAAAOxlmTBcVo13tfiLOFwEINHnAhPa";
  $resp = recaptcha_check_answer ($privatekey,
                                $_SERVER["REMOTE_ADDR"],
                                $_POST["recaptcha_challenge_field"],
                                $_POST["recaptcha_response_field"]);

  if (!$resp->is_valid) {
    // What happens when the CAPTCHA was entered incorrectly
    die ("Your have entered wrong verification phrase, please resubmit your query again. Your request has been rejected by our system, please accept apologies for inconvenience.");
  } else {
    // Your code here to handle a successful verification
  }
?>