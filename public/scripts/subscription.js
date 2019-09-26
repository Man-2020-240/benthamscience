// JavaScript Document

function fillform(txt) {
	
	tmp = txt;
	tmp_subtype=txt.substring((txt.search("-")+1),txt.search("~"));
	tmp_price=txt.substring(0,txt.search("-"));
	tmp_volume=txt.substring((txt.search("~")+1),txt.search("`"));
	tmp_freq=txt.substring((txt.search("`")+1),txt.search("%"));
	tmp_year=txt.substring((txt.search("%")+1),(txt.search("$")-1));
	document.rlForm.SubType.value = tmp_subtype;
	document.rlForm.Price.value = tmp_price;
	document.rlForm.Volume.value = tmp_volume;
	document.rlForm.Frequency.value = tmp_freq;
	document.rlForm.Year.value = tmp_year;
}

function fillcategories(txt) {
	
	
}