<?php

date_default_timezone_set('UTC')+5;
$conn = mysql_pconnect("benthamscience.com", "bentsci_admin", "W2fwB7L7f5eyAs7j") or die ('Cannot establish connection to the database because: ' . mysql_error());
mysql_select_db ("bentsci_db"); 
/*
define('DB_USER','benthamsbj');
define('DB_PASS','W2fwB7L7f5eyAs7j');
define('DB_HOST','urooj2.securesites.net');
define('DB_NAME','benthamsbj_repository'); 

$dbc = mysql_connect(DB_HOST,DB_USER,DB_PASS);

mysql_select_db(DB_NAME);
*/
?>