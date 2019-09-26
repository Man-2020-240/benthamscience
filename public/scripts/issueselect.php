<?php

$xml = new DOMDocument('1.0', 'UTF-8');
$xml = simplexml_load_file("../journal-meta/".$_GET['journalID'].".xml");
$journalseoname = $xml->{'journal-front'}->{'journal-meta'}->{'journal-seo-title'};
$journal=$_GET['journalID'];
$xml2 = simplexml_load_file("../contents/issue-xml/".$_GET['journalID']."/".$_GET['journalID']."-".$_GET['issueID']."-issue.xml");
$volume = $xml2->journal_details->volume;
$issue =  $xml2->journal_details->issue_title;
header("Location: ../../../../../../../../../journals/$journalseoname/volume/$volume/issue/$issue/");
?>