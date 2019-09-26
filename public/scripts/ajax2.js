// JavaScript Document

function init_onup() {
var ajaxRequest;  // The variable that makes Ajax possible!
	try {
			// Opera 8.0+, Firefox, Safari
			ajaxRequest = new XMLHttpRequest();
	} 
	catch (e) {
		// Internet Explorer Browsers
		try {
		
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
			} 
		catch (e)  {
			try {
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} 
			catch (e) {
							// Something went wrong
							alert("Your browser broke!");
							return false;
			}
		}
	}
	return ajaxRequest;
}



function fillissue2() {      
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index = document.getElementById('Customer').selectedIndex;
                uid = document.getElementById('Customer').options[index].value;
                //alert(uid);
                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('Dept').innerHTML = ajaxRequest.responseText;
                                                GetMainLabel();
                                                GetSizeLabel();
                                                GetBatchLabel();
                                                GetGarment();
                                                GetCarePlacement();
                                                GetCareIns();
                                                GetGarments();
                                                GetBundle();
                                                GetHangTag();
                                                GetCPack();
                                                GetPTicket();
                                                GetDTag();
                                                GetSStrip();
                                }                                                                              
                                
                } //call back function                                       
                

                
                rand = Math.random();
                ajaxRequest.open("GET", "include/Dept.php?uid="+uid+"&rand="+rand, true);
                ajaxRequest.send(null);
                
                
}  //

function GetMainLabel() {           
                
                
                

                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;
                
                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                
                                                document.getElementById('MainLabel').innerHTML = ajaxRequest.responseText;
                                                
                                                GetSizeLabel();
                                                GetBatchLabel();
                                                GetGarment();
                                                GetCarePlacement();
                                                GetCareIns();
                                                GetGarments();
                                                GetBundle();
                                                GetHangTag();
                                                GetCPack();
                                                GetPTicket();
                                                GetDTag();
                                                GetSStrip();
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/MainLabel.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  //ShowScore

function GetSizeLabel() {              
                
                
                

                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;
                
                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                
                                                document.getElementById('SizeLabel').innerHTML = ajaxRequest.responseText;
                                                
                                                //GetSizeLabel();
                                //            GetMainLabel(deptid);
                                                
                                                //GetGarment(deptid);
                                                
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/SizeLabel.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  //ShowScore

function GetBatchLabel() {          
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('BatcLabel').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/BatcLabel.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  //ShowScore



function GetGarment() {              
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('Garment').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/Garment.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  //ShowScore

function GetCarePlacement() { 
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('CarePlacement').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/CarePlacement.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  

function GetCareIns() { 
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('CareIns').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/CareIns.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  


function GetGarments() {            
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('Garments').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/Garments.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  

function GetBundle() {  
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('Bundle').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/Bundle.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  

function GetHangTag() {               
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('HangTag').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/HangTag.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  

function GetCPack() {    
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('CPack').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/CPack.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  


function GetPTicket() {  
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('PTicket').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/PTicket.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  

function GetDTag() {      
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('DTag').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/DTag.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  

function GetSStrip() {     
                
                
                
                var ajaxRequest;
                ajaxRequest=init_onup();            
                
                index2 = document.getElementById('Dept').selectedIndex;
                deptid = document.getElementById('Dept').options[index2].value;

                ajaxRequest.onreadystatechange = function(){
                                
                                if(ajaxRequest.readyState == 4) {
                                                
                                                document.getElementById('SStrip').innerHTML = ajaxRequest.responseText;
                                                
                                }                                                                              
                                
                } //call back function                                       
                
                
                rand2 = Math.random();
                ajaxRequest.open("GET", "include/SStrip.php?deptid="+deptid+"&rand="+rand2, true);
                ajaxRequest.send(null);
                
                
}  