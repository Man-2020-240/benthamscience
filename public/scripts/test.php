<?php

include('connection.php');
	$query =  "INSERT INTO abstract_submissions (Abstract_Journal_Code, Abstract_Day, Abstract_Month_ID, Abstract_Month, Abstract_Year, Abstract_Title, Abstract_Authors, Abstract_Author_Aff, Abstract_Text, Abstract_Keywords, Abstract_Sub_Date, Article_Sub_Date, Author_Title, Author_First_Name, Author_Last_Name, Author_Address, Author_City, Author_State, Author_Zip, Author_Country, Author_Email, REMOTE_ADDR, REMOTE_HOST, REMOTE_PORT, REQUEST_TIME, HTTP_REFERER, SCRIPT_FILENAME, IP_TO_COUNTRY) 
values ('cmc', '".date("d")."', '".date("m")."', '".date("F")."', '".date("Y")."', '".$abstracttitle."', '".$authors."', '".$authoraff."', '".$abstracttext."', '".$keywords."','".$_SERVER['REQUEST_TIME']."', '".$submissiondate."', '".$title."', '".$firstname."', '".$lastname."', '".$address."', '".$city."', '".$state."', '".$zip."', '".$country."', '".$useremail."', '".$_SERVER['REMOTE_ADDR']."','".$_SERVER['REMOTE_HOST']."', '".$_SERVER['REMOTE_PORT']."','".$_SERVER['REQUEST_TIME']."','".$_SERVER['HTTP_REFERER']."','".$_SERVER['SCRIPT_FILENAME']."', '".$iptocountry."')";
$result = mysql_query($query)or die(mysql_error());


?>