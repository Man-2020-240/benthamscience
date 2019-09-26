// JavaScript Document
	function issue_type(txt) {
		if(txt=="mini")
		{

		document.rlForm.TotalArticles.innerHTML ="<option value='null'>Select number of articles</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option>"; 
		}
		else if(txt=="fulllength")
		{
		document.rlForm.TotalArticles.innerHTML ="<option value='null'>Select number of articles</option><option value='6'>6</option><option value='7'>7</option><option value='8'>8</option><option value='9'>9</option><option value='10'>10</option>"; 

		}
	}

	function total_article(txt) {
		var articles="";
		articles = articles + "<div style='padding-left:40px;'>";
		for (var i = 0; i < txt; i++) { 
		
		articles = articles + "<div style='-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;box-shadow: 0px 2px 10px #cccccc; padding:10px;'>";
		articles = articles + "<table>";
		articles = articles + "<tr><td></td><td><h2>Details of Article #"+(i+1)+": </h2></td></tr>";
		articles = articles + "<tr><td></td><td><strong>Title of the proposed Article:</strong></td></tr>";
        articles = articles + "<tr><td></td><td><input name='AbstractTitle"+(i+1)+"' id='AbstractTitle"+(i+1)+"' type='text' size='80' /></td></tr>";
        articles = articles + "<tr><td></td><td><strong>Contributing Authors:</strong></td></tr>";
        articles = articles + "<tr><td></td><td><textarea name='Authors"+(i+1)+"' id='Authors"+(i+1)+"' cols='80' rows='3'></textarea></td></tr>";
        articles = articles + "<tr><td></td><td><strong>Author Affiliations:</strong></td></tr>";
        articles = articles + "<tr><td></td><td><textarea name='AuthorAff"+(i+1)+"' id='AuthorAff"+(i+1)+"' cols='80' rows='3'></textarea></td></tr>";
		articles = articles + "</table>";
		articles = articles + "<br/>";
		articles = articles + "</div>";
		articles = articles + "<br/><br/>";
		}
		articles = articles + "</div>";
		document.getElementById("articlesDiv").innerHTML = articles;
	}
