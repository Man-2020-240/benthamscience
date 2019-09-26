// JavaScript Document


function loadXMLDoc(dname)
{
if (window.XMLHttpRequest)
  {
  xhttp=new XMLHttpRequest();
  }
else
  {
  xhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xhttp.open("GET",dname,false);
xhttp.send();
return xhttp.responseXML;
}



function initializeForms() {

	document.rjournal.journalID.selectedIndex = 1;
	document.rjournal.journalID.selectedIndex = 0;
	fillissue2(getnid(document.rjournal.journalID.value));
	document.rissue.issueID.selectedIndex = 1;
	document.rissue.issueID.selectedIndex = 0;
	
	}

function getnid(jcode) {
	document.rissue.journalID.value = jcode;
	document.rarticle.journalID.value = jcode;
	code = "../../../../../../../../../journal-meta/"+jcode+".xml";
	xmlDoc=loadXMLDoc(code);
	
	x=xmlDoc.getElementsByTagName("nid");
	nid = x[0].childNodes[0].nodeValue;
	return nid;
}

function filljournal(txt) {
	code = "../../../../../../../../../journal-meta/"+txt+".xml";
	xmlDoc=loadXMLDoc(code);
	
	x=xmlDoc.getElementsByTagName("journal-title");
	document.rlForm.JournalName.value = x[0].childNodes[0].nodeValue;
	y=xmlDoc.getElementsByTagName("nid");
	
	
	issues=y[0].childNodes[0].nodeValue;
	
	fillissue(issues);
}

var xmlHttp;
var loadflag;

function fillissue2(str)
{
	
loadflag=1;
var get=str;
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request");
 return;
 }
var url="../../../../../../../../../GetIssues.php";
//var product = document.getElementById('products').value;
url=url+"?q="+str;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged2;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}




function fillcategories(str1,str2)
{
	
loadflag=1;
var get=str1;
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request");
 return;
 }
var url="../GetRates.php";
//var product = document.getElementById('products').value;
url=url+"?q="+str1;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChangedcategories;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

document.rlForm.SubType.value = "";
document.rlForm.Price.value = "";
document.rlForm.Volume.value = "";
document.rlForm.Frequency.value = "";
document.rlForm.Year.value = "";
document.rlForm.JournalCode.value = str1;
document.rlForm.JournalName.value = str2;
}


function fillarticle(str1)
{
	
loadflag=1;
var get=str1;
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request");
 return;
 }
var url="../GetArticles.php";
//var product = document.getElementById('products').value;
url=url+"?q="+str1;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChangedarticle;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
document.getElementById("submit_art").disabled=false;
}

function fillissue(str)
{ 
loadflag=1;
var get=str;
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request");
 return;
 }
var url="../GetIssues.php";
//var product = document.getElementById('products').value;
url=url+"?q="+str;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged2;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}

function showRole(str)
{ 
loadflag = 2;
var get=str;
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request");
 return;
 }
var url="GetMulti3.php";
var product = document.getElementById('products2').value;
url=url+"?q="+str+ "&product=" + product;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged2;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);

}

function stateChangedcategories() 
{ 
	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete" )
	{ 
		document.rlForm.SubscriptionCategory.innerHTML=xmlHttp.responseText;
	} 
}

function stateChangedarticle() 
{ 


if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete" )
 { 
  	document.rarticle.articleID.innerHTML=xmlHttp.responseText;
} 
 
 
}


function stateChanged2() 
{ 


if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete" )
 { 
  	document.rissue.issueID.innerHTML=xmlHttp.responseText;
	fillarticle(document.rissue.issueID.value);
} 
 
 
}

function GetXmlHttpObject()
{
var xmlHttp=null;
try
 {
 // Firefox, Opera 8.0+, Safari
 xmlHttp=new XMLHttpRequest();
 }
catch (e)
 {
 //Internet Explorer
 try
  {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e)
  {
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
	