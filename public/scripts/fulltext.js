/* artnology mouseOver fix, js, 19.6.2003 */


function getImgWidth(imgSrc)
{
var newImg = new Image();
newImg.src = imgSrc;
var width = newImg.width;
return width;
}

function getImgHeight(imgSrc)
{
var newImg = new Image();
newImg.src = imgSrc;
var height = newImg.height;
return height;
}

function changeImageSrc(imageName,imagePath, imageLayer)
{
	if (document.images){
		if(document.layers){
			if (imageLayer == undefined || imageLayer == null || imageLayer == "" ){
				document.images[imageName].src = imagePath;
			}else{
				eval("document.layers." + imageLayer +".document.images['"+ imageName + "'].src = '"+ imagePath+"'");
			}
		}else
		{
			document.images[imageName].src = imagePath;
		}
	}
}

var myWidth = "0";
var myHeight = "0";
var fenster;

var sgw_dos = new Array();
var sgw_dos_index=0;

function preloadImage(imagePath)
{
	if(document.images){
		sgw_dos[sgw_dos_index]=new Image();
		sgw_dos[sgw_dos_index].src=imagePath;
		sgw_dos_index++;
	}
}

function getPrefixURL(){
	return "http://" + window.location.host + "/";
}

/* js 2.7.03 - report function added*/
function report()
	{
	var msg = "";
	msg += "artnology browser report for:\n";
	msg += "html title: " + document.title+ "\n";
	msg += "at: " + document.URL + "\n";
	msg += "last update: " + document.lastModified+"\n";
	msg += "host: " +window.location.host+"\n";
	msg += "hostname: "+ window.location.hostname+"\n";
	msg += "pathname: " + window.location.pathname+"\n";
	msg += "port: " + window.location.port+"\n";
	msg += "protocol: " +window.location.protocol +"\n";
	if(document.cookie.lenght == 0) 
	{
		msg += "cookies found or deactivated !\n";
	
	}else{
		msg += "cookie: " + document.cookie+ "\n";
	}
	msg += "linked from: " + document.referrer + "\n";
	if(document.layers){
		msg += "netscape v4 with layers. \n";
	}else{
		msg += "Good choice, no netscape v4 with layers. \n";
	}
	msg += "current charset: " + document.charset+"\n";
	msg += "default charset: " + document.defaultCharset+"\n";
	msg += "history.length: " + history.length+"\n";
	msg += "appName: " + navigator.appName+"\n";
	msg += "appVersion: "+ navigator.appVersion+"\n";
	msg += "language: "+navigator.language+"\n";
	msg += "platform: "+navigator.platform+"\n";
	msg += "userAgent: "+navigator.userAgent+"\n";

	msg += document.links.length + " links"+"\n";
	for(i=0; i < document.links.length; ++i){
		msg += document.links[i] + "\n";
	}

	if(document.images){
		msg += document.images.length + " images"+"\n";
		for(i=0; i < document.images.length; ++i){
			msg += document.images[i].src +"\n";
		}
	}else{
		msg += "no images. \n\n";	
	}

	for(i=0; i<navigator.plugins.length; i++){
		msg += navigator.plugins[i].name + "\n";
		msg += navigator.plugins[i].description + "\n";
	}
	return msg;
}

function checkCookiesEnabled()
{
	if (!document.cookie || document.cookie.search(/JSESSIONID=/) == -1)
	{
		centerPopup("message_window","/sgw/cda/nocookies",539, 391);
	}
}

function artnology(){openReportWindow();}

function openReportWindow(){
	var report_window = window.open();
	report_window.document.open("text/html");
	report_window.document.write("<html><head><title>sgw support - artnology GmbH, milastr. 4, 10437 berlin</title></head><body>");
	report_window.document.write("<br><a href='mailto:sgw-support@artnology.com'>please attach this html page.</a><br>");
	report_window.document.write("<pre>");
	report_window.document.write(report());
	report_window.document.write("</pre>");
	report_window.document.write("<br><br>");
	report_window.document.write("<a href='javascript:window.close()'>close this window.</a>");
	report_window.document.write("</body></html>");
	report_window.document.close();
	report_window.focus();
}

function delegateEasy()
{	
	if(document.layers){
		window.setTimeout("document.layers['topmenu2'].document.forms['easySearch'].submit()",42);
	}else
	{
		window.setTimeout("document.easySearch.submit()",42);
	}
}

function delegateAdvanced()
{	
	if(document.layers){
		document.layers['topmenu2'].document.forms['easySearch'].propagate.value = "true";
		window.setTimeout("document.layers['topmenu2'].document.forms['easySearch'].submit()",42);
	}else{
		document.easySearch.propagate.value = "true";
		window.setTimeout("document.easySearch.submit()",42);
	}
}

function forwardTo(Aussage)
{
	var Ergebnis = Aussage.match(/\/sgw\/cda\/pageitems\/document\/cda_downloaddocument\//);
	if (Ergebnis != null)
	{
		//Es handelt sich um ein ungeschütztes Dokument
		window.open(Aussage);
	}

	Ergebnis = Aussage.match(/\/sgw\/cda\/frontpage\//);
	if (Ergebnis != null)
	{
		// interner Verweis oder geschütztes Dokument
		document.location.href = Aussage;
	}
	if (Ergebnis == null && Aussage.substring(0,5) == "http:")
	{
		// Es handelt sich um ein ungeschütztes Dokument
		window.open(Aussage);
	}
}


// <!-- new stuff 06-2004 --> //

var NN 	= document.layers;
var MO  = document.documentElement;
if (document.all) {MO = false;}
var permanent = 0;
var MAC = false;
var myWidth = "0";
var myHeight = "0";

myPlatform = navigator.platform;
if(myPlatform.indexOf("Mac") >= 0){MAC = true;}

var pictures = new Array();
var userAgent = window.navigator.userAgent;
var bVers = parseInt(userAgent.charAt(userAgent.indexOf("/")+1),10);
var preLoadIsComplete = false;
var oldImg = "";
var oldCnt;
var ToggleStatus			= new Array ();


function chgclass(tagname,css) {
  if (NN) {}
	else if (!permanent) {
		if (MO) {eval("document.getElementById('"+tagname+"')"+".className='"+css+"'");} 
		else {eval("document.all."+tagname+".className='"+css+"'");}
  }
}

function NSStyle(s) {
	return findElement(s,0);
}

function activeImageConstructor(aName,aLowlightSrc,aHighlightSrc)
	{
	this.name  = aName;
	this.lowLight  = new Image();
	this.lowLight.src  = aLowlightSrc;
	this.highLight  = new Image();
	this.highLight.src  = aHighlightSrc;
	}

function findElement(n,ly) {
	var curDoc = ly ? ly.document : document;
	var elem = curDoc[n];
	if (bVers < 4)
		return document[n];
	if (!elem)
		{
		for (var i=0;i<curDoc.layers.length;i++)
			{
			elem = findElement(n,curDoc.layers[i]);
			if (elem)
				return elem;
			}
		}
	return elem;
}

function NSStyle(s) {
	return findElement(s,0);
}

function activeImageConstructor(aName,aLowlightSrc,aHighlightSrc)
	{
	this.name  = aName;
	this.lowLight  = new Image();
	this.lowLight.src  = aLowlightSrc;
	this.highLight  = new Image();
	this.highLight.src  = aHighlightSrc;
	}

function preLoad()
	{
	var preLoadedImgs = "";
	if (document.all) {
		for (i=0; i<document.all.tags("div").length; i++) {
			for (j=0; j<document.all.tags("div")[i].document.images.length; j++) {
				if (document.all.tags("div")[i].document.images[j].name) {
					if ( preLoadedImgs.indexOf(document.all.tags("div")[i].document.images[j].name) < 0) {
						var imgSrc = document.all.tags("div")[i].document.images[j].src;
						var tmpPrefix = imgSrc.substr(0,imgSrc.length-4);
						var tmpSuffix = imgSrc.substr(imgSrc.length-4,imgSrc.length-1);
						var tmpActiveSrc = tmpPrefix + "-a" + tmpSuffix;
						var IEFix = new activeImageConstructor(document.all.tags("div")[i].document.images[j].name,document.all.tags("div")[i].document.images[j].src,tmpActiveSrc);
						var tmpData = new Array(IEFix);
						pictures = pictures.concat(tmpData);
						preLoadedImgs = preLoadedImgs.concat(document.all.tags("div")[i].document.images[j].name);
					}
				}
			}
		}
	}
	if (document.layers) {
		for (i=0; i<document.layers.length; i++) {
			for (j=0; j<document.layers[i].document.images.length; j++)	{
				if (document.layers[i].document.images[j].name) {
					var imgSrc = document.layers[i].document.images[j].src;
					var tmpPrefix = imgSrc.substr(0,imgSrc.length-4);
					var tmpSuffix = imgSrc.substr(imgSrc.length-4,imgSrc.length-1);
					var tmpActiveSrc = tmpPrefix + "-a" + tmpSuffix;
					var IEFix = new activeImageConstructor(document.layers[i].document.images[j].name,document.layers[i].document.images[j].src,tmpActiveSrc);
					var tmpData = new Array(IEFix);
					pictures = pictures.concat(tmpData);
				}
			}
		}
	}

	for (i=0; i<document.images.length; i++) {
		if (document.images[i].name) {
			if ( preLoadedImgs.indexOf(document.images[i].name) == -1) {
				var imgSrc = document.images[i].src;
				var tmpPrefix = imgSrc.substr(0,imgSrc.length-4);
				var tmpSuffix = imgSrc.substr(imgSrc.length-4,imgSrc.length-1);
				var tmpActiveSrc = tmpPrefix + "-a" + tmpSuffix;
				var IEFix = new activeImageConstructor(document.images[i].name,document.images[i].src,tmpActiveSrc);
				var tmpData = new Array(IEFix);
				pictures = pictures.concat(tmpData);
			}
		}
	}
	preLoadIsComplete = true;
}

function mouseOver(aPic)
	{
	if (preLoadIsComplete)
		{
		for (i=0; i<pictures.length; i++)
			{
			if (pictures[i].name == aPic)
				{
					if (oldImg.length > 0)
						eval("document.images." + oldImg + ".src = pictures[" + oldCnt + "].lowLight.src");
				eval("document.images." + aPic + ".src = pictures[" + i + "].highLight.src");
				oldImg = aPic;
				oldCnt = i;
				}
			}
		}
	else
		preLoad();
}

function mouseOut(aPic)
	{
	oldImg = "";
	if (preLoadIsComplete)
		{
		for (i=0; i<pictures.length; i++)
			{
			if (pictures[i].name == aPic)
				eval("document.images." + aPic + ".src = pictures[" + i + "].lowLight.src");
			}
		}
	else
		preLoad();
}

function layerMouseOver(aPic,aLayer)
	{
	if (preLoadIsComplete)
		{
		for (i=0; i<pictures.length; i++)
			{
			if (pictures[i].name == aPic)
				if (document.layers)
					{
					if (oldImg.length > 0)
						{
						eval("NSStyle('"+aLayer+"').document.images['"+oldImg+"'].src = pictures["+oldCnt+"].lowLight.src");
				}
					eval("NSStyle('"+aLayer+"').document.images['"+aPic+"'].src = pictures["+i+"].highLight.src");
					}
				else
					if (document.all) {
						eval("document.all.tags('div')."+aLayer+".document.images['"+aPic+"'].src = pictures["+i+"].highLight.src");
					}
					else {
						eval("document.images['"+aPic+"'].src = pictures["+i+"].highLight.src");
					}
			}
		}
	else
		preLoad();
}

function layerMouseOut(aPic,aLayer)
	{
	oldImg = "";
	if (preLoadIsComplete)
		{
		for (i=0; i<pictures.length; i++)
			{
			if (pictures[i].name == aPic)
				if (document.layers)
					eval("NSStyle('"+aLayer+"').document.images['"+aPic+"'].src = pictures["+i+"].lowLight.src");
				else
					if(document.all) {
						eval("document.all.tags('div')."+aLayer+".document.images['"+aPic+"'].src = pictures["+i+"].lowLight.src");
					}
					else {
						eval("document.images['"+aPic+"'].src = pictures["+i+"].lowLight.src");
					}
			}
		}
	else
		preLoad();
}

function IEStyle(s)
	{
	return document.all.tags("div")[s].style;
}

function vSwitch(aLayer,aBool) {
	if (preLoadIsComplete) {
		if (document.all) {
			IEStyle(aLayer).visibility = (aBool == 0) ? "hidden" : "visible";
		}
		else {
			if (bVers < 5) {
				NSStyle(aLayer).visibility = (aBool == 0) ? 'hide' : 'show';
			}
			else if (bVers >= 5) {
				document.getElementById(aLayer).style.visibility= (aBool == 0) ? "hidden" : "visible";
			}
		}
	}
	else {
		preLoad();
	}
}


function Toggle(Layer) {
	if (ToggleStatus[Layer]) {
		vSwitch(Layer,0);
		ToggleStatus[Layer] = 0;
	}
	else {
		vSwitch(Layer,1);
		ToggleStatus[Layer] = 1;
	}
}

function centerPopup(popup_name,popup_url,popup_with,popup_height,myWidth,myHeight)
{
	if(!myWidth) {myWidth = 10;}
	if(!myHeight){myHeight = 50;}
	var popup_left = (window.screen.width/2)  - (popup_with/2 + myWidth);
	var popup_top  = (window.screen.height/2) - (popup_height/2 + myHeight);
	// do not declare variable here, several pages need access to it (like document - download).
	fenster = window.open(popup_url ,popup_name,"toolbar=1,location=0,status=0,menubar=0,scrollbars=1,resizable=0,width=" + popup_with + ",height=" + popup_height + ",left=" + popup_left + ",top=" + popup_top + ",screenX=" + popup_left + ",screenY=" + popup_top);
	fenster.focus();
}

function changeBg(category,id,flag) {
if (!NN){
	if (category == "service") {
		// background colour for services
		if (flag == 1)
			document.getElementById(id).style.background = "#FFF4C6";
		// set back background colour
		if (flag == 0)
			document.getElementById(id).style.background = "#E8F4FF";
	}
	if (category == "service2") {
		// background colour for services
		if (flag == 1)
			document.getElementById(id).style.background = "#FFE368";
		// set back background colour
		if (flag == 0)
			document.getElementById(id).style.background = "#E8F4FF";
	}
if (category == "Jsection") {
		// background colour for Journal section menu
		if (flag == 1)
			document.getElementById(id).style.background = "#FFE368";
		// set back background colour
		if (flag == 0)
			document.getElementById(id).style.background = "#EBFFEB";
	}
	if (category == "discipline") {
		// background colour for disciplines
		if (flag == 1)
			document.getElementById(id).style.background = "#FFE368";
		// set back background colour
		if (flag == 0)
			document.getElementById(id).style.background = "#BADDFF";
	}
}
}

function openPopup(url,name) {
	aWindow = window.open(url,name,"toolbar=yes,width=565,height=565,status=yes,scrollbars=yes,resize=no,menubar=yes,left=20,top=20");
}

function opwin(url) {
nwwin = window.open(url);
}

