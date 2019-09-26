<?php

$xml = new DOMDocument('1.0', 'UTF-8');
$xml = simplexml_load_file("../journal-meta/".$_GET['journalID'].".xml");
$journalseoname = $xml->{'journal-front'}->{'journal-meta'}->{'journal-seo-title'};
$journal=$_GET['journalID'];

header("Location: ../../../../../../../../../journals/$journalseoname/");
?>