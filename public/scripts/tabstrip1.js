// JavaScript Document
var activeTab = 1;
	function openTab(tabId) {
		// reset old tab and content
		document.getElementById("tabLink"+activeTab).className = "tabLink";
		document.getElementById("tabContent"+activeTab).className = "tabContent";
		// set new tab and content
		document.getElementById("tabLink"+tabId).className = "tabLinkActive";
		document.getElementById("tabContent"+tabId).className = "tabContentActive1";
		activeTab = tabId;
	}
	
	
