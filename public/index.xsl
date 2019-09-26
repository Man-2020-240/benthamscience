<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output encoding="utf-8" method="html" />
    <xsl:template match="/*">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
        <xsl:variable name="sharethis">
        	<xsl:text>scripts/js/sharethis.js#property=5b602692f3815e0011ed2174&amp;product=social-ab</xsl:text>
        </xsl:variable>
        <html>
    
<body>
    <div class="container">
    	 
       
        <xsl:apply-templates select="/menu/menu-list" mode="main-menu" />
        <div class="row" style="padding:15px; padding-top:0px;">
        	<div class="col-md-12" style="border: solid; border-color: #CCC; border-width:thin; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px;box-shadow: 0px 2px 10px #cccccc; padding:10px; padding-top:0px; font-size:16px;">
            	<h1>About Bentham Science Publishers</h1>
                <p>Bentham Science is a science, technology, and medical (STM) publisher, providing academic researchers and industrial professionals with the latest information in diverse fields of science and technology. Our peer-reviewed scholarly journals and books have an ever-increasing readership of millions of researchers worldwide.</p>
                <p>Bentham Science currently publishes more than 100 journals in both electronic and printed formats. Our journals cover various disciplines in pharmaceutical research and development, medical subspecialties, engineering, technology, and social sciences. The journals are indexed in recognized indexing agencies, such as Journal Citation Reports/Science Edition, MEDLINE/Index Medicus, PubMed, Scopus, Chemical Abstracts, and EMBASE.</p>
                
                <a href="https://benthamscience.com/about-us.php">Read More</a>
        	</div>
        </div>
        
        <div class="row hidden-md hidden-sm hidden-xs" style="padding-left:15px; padding-right:15px;">
            <div class="col-lg-9" style="padding:10px; padding-left:0px; padding-right:5px;">
                <xsl:apply-templates select="document('common-xml/endorsements.xml')/endorsement/endorsement-body/endorsement-list" />
            </div>
            <div class="col-lg-3" style="padding:10px; padding-left:5px; padding-right:0px; height:100%;">
            	<div style="border: solid; border-color: #CCC; border-width:thin; box-shadow: 0px 2px 10px #cccccc; padding:10px; height:850px; overflow:hidden; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */       
                ">
                    <h1 class="bentham_home">Quick Links</h1>
                    <div class="btn-group-vertical" role="group" aria-label="...">
					<a class="btn btn-default" href="https://benthamscience.com/about-us.php" style="text-align:left; color:#000000;">About Bentham Science</a>
					<a class="btn btn-default" href="https://benthamscience.com/animated-abstract.php" style="text-align:left; color:#000000;">Animated Abstract</a>
                        
                    <a class="btn btn-default" href="https://benthamscience.com/brand-ambassador.php" style="text-align:left; color:#000000;">Brand Ambassadors</a>

                        <a class="btn btn-default" href="https://benthamscience.com/journals-by-title/A/1/" style="text-align:left; color:#000000;">Browse Bentham Science Titles</a>
                        <a class="btn btn-default" href="https://benthamscience.com/browse-by-subject/agriculture/" style="text-align:left; color:#000000;">Browse Subject Areas</a>
                        <a class="btn btn-default" href="https://ebooks.benthamscience.com/" style="text-align:left; color:#000000;">Browse eBooks Website</a>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Librarians <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/faqs-reprints.php">FAQ’s for e-prints/reprints</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="http://www.eurekaselect.com/library-recommendation">Library Recommendations</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-eprint">Order Bulk ePrints</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-reprint">Order Bulk Reprints</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                                <li><a href="https://benthamscience.com/bsptrials.php">Trial Requests</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Authors &amp; Editors <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/author-benefits.php">Author Benefits</a></li>
                                <li><a href="https://benthamscience.com/author-reprints.php">Author Reprints</a></li>
                                <li><a href="https://benthamscience.com/language-editing.php">Copyediting Services</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/editorial-policies-main.php">Editorial Policies</a></li>
                                <li><a href="https://benthamscience.com/faqs-general.php">General FAQ’s</a></li>
                                <li><a href="https://benthamscience.com/guest-editors-guidelines.php">Guidelines for Guest Editors</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="https://benthamscience.com/manuscript-transfer-facility.php">Manuscript Transfer Facility</a></li>
                                <li><a href="https://benthamscience.com/instructions.php">Online Manuscript Submission</a></li>
                                <li><a href="https://benthamscience.com/process-flowchart-main.php">Publication Cycle - Process Flowchart</a></li>
                                <li><a href="https://benthamscience.com/publishing-ethics-main.php">Publishing Ethics</a></li>
                                <li><a href="https://benthamscience.com/reviewers-guidelines-main.php">Reviewer Guidelines</a></li>
                                <li><a href="https://benthamscience.com/self-archiving-policies-main.php">Self-Archiving Policies</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">Marketing Opportunities <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/advertise-main.php">Advertise With Us</a></li>
                                <li><a href="https://benthamscience.com/catalogs-main.php">Journals and eBooks Catalog</a></li>
                                <li><a href="https://benthamscience.com/journal-files/Media-Pack-2019.pdf">Media-Pack-2019</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/region/north-america/">Events by Region</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/subject/agriculture/">Events by Subject Areas</a></li>
                                <li><a href="https://benthamscience.com/exhibit-schedule.php">Exhibit Schedule</a></li>
                                <li><a href="https://benthamscience.com/corporate-sales.php">Healthcare Industry Resources</a></li>
                                <li><a href="https://benthamscience.com/kudos.php">Kudos</a></li>
                                <li><a href="https://benthamscience.com/media-partners-main.php">Media Partners</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/">Partnering Events</a></li>
                                <li><a href="https://benthamscience.com/promotional-services.php">Promotional Services</a></li>
                            </ul>
                        </div>
                        
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-popular-thematic-issues.php" style="text-align:left; color:#000000;">Browse Popular Thematic Issues</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-open-access-articles.php" style="text-align:left; color:#000000;">Browse Open Access Articles</a>
						<a class="btn btn-default" href="https://benthamscience.com/journal/most-popular-articles.php" style="text-align:left; color:#000000;">Most Popular Articles</a>
                        <a class="btn btn-default" href="https://benthamscience.com/indexing-agencies.php" style="text-align:left; color:#000000;">Indexing Information</a>
                        <a class="btn btn-default" href="https://benthamscience.com/new-journals/2019/" style="text-align:left; color:#000000;">New Journals by Bentham Science</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/free-online-samples.php" style="text-align:left; color:#000000;">Free Online Samples</a>
                        
                        <a class="btn btn-default" href="http://benthamalerts.com/" style="text-align:left; color:#000000;">Alerting Services</a>
                        <a class="btn btn-default" href="https://benthamscience.com/author-reprints.php" style="text-align:left; color:#000000;">Author Reprints</a>
                        <a class="btn btn-default" href="https://benthamscience.com/corporate-sales.php" style="text-align:left; color:#000000;">Healthcare Industry Resources</a>
                        <a class="btn btn-default" href="https://benthamscience.com/open-access-plus-main.php" style="text-align:left; color:#000000;">Open Access Plus</a>
                        <a class="btn btn-default" href="http://eurekaselect.com/" style="text-align:left; color:#000000;">Online Store</a>
                        <a class="btn btn-default" href="https://benthamscience.com/testimonial.php" style="text-align:left; color:#000000;">Author Comments &amp; Testimonials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/press-release-main.php" style="text-align:left; color:#000000;">Press Release</a>
                        <a class="btn btn-default" href="https://benthamscience.com/faqs-general.php" style="text-align:left; color:#000000;">Frequently Asked Questions (FAQs)</a>
						
                        
                        
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row hidden-lg hidden-sm hidden-xs" style="padding-left:15px; padding-right:15px;">
            <div class="col-md-8" style="padding:10px; padding-left:0px; padding-right:5px;">
                <xsl:apply-templates select="document('common-xml/endorsements.xml')/endorsement/endorsement-body/endorsement-list" mode="md" />
            </div>
            <div class="col-md-4" style="padding:10px; padding-left:5px; padding-right:0px;">
            	<div style="border: solid; border-color: #CCC; border-width:thin; box-shadow: 0px 2px 10px #cccccc; padding:10px; height:850px; overflow:hidden; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */       
                ">
                    <h1 class="bentham_home">Quick Links</h1>
                    <div class="btn-group-vertical" role="group" aria-label="...">
                        <a class="btn btn-default" href="https://benthamscience.com/journals-by-title/A/1/" style="text-align:left; color:#000000;">Browse Journals by Title</a>
                        <a class="btn btn-default" href="https://benthamscience.com/browse-by-subject/agriculture/" style="text-align:left; color:#000000;">Browse Subject Areas</a>
                        <a class="btn btn-default" href="https://benthamscience.comhttps://ebooks.benthamscience.com/" style="text-align:left; color:#000000;">Browse eBooks Website</a>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Librarians <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/faqs-reprints.php">FAQ’s for e-prints/reprints</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="http://www.eurekaselect.com/library-recommendation">Library Recommendations</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-eprint">Order Bulk ePrints</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-reprint">Order Bulk Reprints</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                                <li><a href="https://benthamscience.com/bsptrials.php">Trial Requests</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Authors &amp; Editors <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/author-benefits.php">Author Benefits</a></li>
                                <li><a href="https://benthamscience.com/author-reprints.php">Author Reprints</a></li>
                                <li><a href="https://benthamscience.com/language-editing.php">Copyediting Services</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/editorial-policies-main.php">Editorial Policies</a></li>
                                <li><a href="https://benthamscience.com/faqs-general.php">General FAQ’s</a></li>
                                <li><a href="https://benthamscience.com/guest-editors-guidelines.php">Guidelines for Guest Editors</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="https://benthamscience.com/manuscript-transfer-facility.php">Manuscript Transfer Facility</a></li>
                                <li><a href="https://benthamscience.com/instructions.php">Online Manuscript Submission</a></li>
                                <li><a href="https://benthamscience.com/process-flowchart-main.php">Publication Cycle - Process Flowchart</a></li>
                                <li><a href="https://benthamscience.com/publishing-ethics-main.php">Publishing Ethics</a></li>
                                <li><a href="https://benthamscience.com/reviewers-guidelines-main.php">Reviewer Guidelines</a></li>
                                <li><a href="https://benthamscience.com/self-archiving-policies-main.php">Self-Archiving Policies</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">Marketing Opportunities <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/advertise-main.php">Advertise With Us</a></li>
                                <li><a href="https://benthamscience.com/catalogs-main.php">Journals and eBooks Catalog</a></li>
                                <li><a href="https://benthamscience.com/journal-files/Media-Pack-2018.pdf">Media-Pack-2018</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/region/north-america/">Events by Region</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/subject/agriculture/">Events by Subject Areas</a></li>
                                <li><a href="https://benthamscience.com/exhibit-schedule.php">Exhibit Schedule</a></li>
                                <li><a href="https://benthamscience.com/corporate-sales.php">Healthcare Industry Resources</a></li>
                                <li><a href="https://benthamscience.com/kudos.php">Kudos</a></li>
                                <li><a href="https://benthamscience.com/media-partners-main.php">Media Partners</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/">Partnering Events</a></li>
                                <li><a href="https://benthamscience.com/promotional-services.php">Promotional Services</a></li>
                            </ul>
                        </div>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-popular-thematic-issues.php" style="text-align:left; color:#000000;">Browse Popular Thematic Issues</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-open-access-articles.php" style="text-align:left; color:#000000;">Browse Open Access Articles</a>
                        <a class="btn btn-default" href="https://benthamscience.com/indexing-agencies.php" style="text-align:left; color:#000000;">Indexing Information</a>
                        <a class="btn btn-default" href="https://benthamscience.com//new-journals/2019/" style="text-align:left; color:#000000;">New Journals by Bentham Science</a>
                        <a class="btn btn-default" href="https://benthamscience.com//journal/free-online-samples.php" style="text-align:left; color:#000000;">Free Online Samples</a>
                        <a class="btn btn-default" href="https://benthamscience.com/bsptrials.php" style="text-align:left; color:#000000;">Free Online Trials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/http://benthamalerts.com//" style="text-align:left; color:#000000;">Alerting Services</a>
                        <a class="btn btn-default" href="https://benthamscience.com/author-reprints.php" style="text-align:left; color:#000000;">Author Reprints</a>
                        <a class="btn btn-default" href="https://benthamscience.com/corporate-sales.php" style="text-align:left; color:#000000;">Healthcare Industry Resources</a>
                        <a class="btn btn-default" href="https://benthamscience.com/open-access-plus-main.php" style="text-align:left; color:#000000;">Open Access Plus</a>
                        <a class="btn btn-default" href="https://benthamscience.com/http://eurekaselect.com/" style="text-align:left; color:#000000;">Online Store</a>
                        <a class="btn btn-default" href="https://benthamscience.com/testimonial.php" style="text-align:left; color:#000000;">Author Comments &amp; Testimonials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/press-release-main.php" style="text-align:left; color:#000000;">Press Release</a>
                        <a class="btn btn-default" href="https://benthamscience.com/faqs-general.php" style="text-align:left; color:#000000;">Frequently Asked Questions (FAQs)</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row hidden-lg hidden-md hidden-xs" style="padding-left:15px; padding-right:15px;">
            <div class="col-sm-7" style="padding:10px; padding-left:0px; padding-right:5px;">
                <xsl:apply-templates select="document('common-xml/endorsements.xml')/endorsement/endorsement-body/endorsement-list" mode="sm" />
            </div>
            <div class="col-sm-5" style="padding:10px; padding-left:5px; padding-right:0px;">
            	<div style="border: solid; border-color: #CCC; border-width:thin; box-shadow: 0px 2px 10px #cccccc; padding:10px; height:850px; overflow:hidden; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */       
                ">
                    <h1 class="bentham_home">Quick Links</h1>
                    <div class="btn-group-vertical" role="group" aria-label="...">
                        <a class="btn btn-default" href="https://benthamscience.com/journals-by-title/A/1/" style="text-align:left; color:#000000;">Browse Journals by Title</a>
                        <a class="btn btn-default" href="https://benthamscience.com/browse-by-subject/agriculture/" style="text-align:left; color:#000000;">Browse Subject Areas</a>
                        <a class="btn btn-default" href="https://ebooks.benthamscience.com/" style="text-align:left; color:#000000;">Browse eBooks Website</a>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Librarians <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/faqs-reprints.php">FAQ’s for e-prints/reprints</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="http://www.eurekaselect.com/library-recommendation">Library Recommendations</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-eprint">Order Bulk ePrints</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-reprint">Order Bulk Reprints</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                                <li><a href="https://benthamscience.com/bsptrials.php">Trial Requests</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Authors &amp; Editors <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/author-benefits.php">Author Benefits</a></li>
                                <li><a href="https://benthamscience.com/author-reprints.php">Author Reprints</a></li>
                                <li><a href="https://benthamscience.com/language-editing.php">Copyediting Services</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/editorial-policies-main.php">Editorial Policies</a></li>
                                <li><a href="https://benthamscience.com/faqs-general.php">General FAQ’s</a></li>
                                <li><a href="https://benthamscience.com/guest-editors-guidelines.php">Guidelines for Guest Editors</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="https://benthamscience.com/manuscript-transfer-facility.php">Manuscript Transfer Facility</a></li>
                                <li><a href="https://benthamscience.com/instructions.php">Online Manuscript Submission</a></li>
                                <li><a href="https://benthamscience.com/process-flowchart-main.php">Publication Cycle - Process Flowchart</a></li>
                                <li><a href="https://benthamscience.com/publishing-ethics-main.php">Publishing Ethics</a></li>
                                <li><a href="https://benthamscience.com/reviewers-guidelines-main.php">Reviewer Guidelines</a></li>
                                <li><a href="https://benthamscience.com/self-archiving-policies-main.php">Self-Archiving Policies</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">Marketing Opportunities <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                            	<li><a href="https://benthamscience.com/advertise-main.php">Advertise With Us</a></li>
                                <li><a href="https://benthamscience.com/catalogs-main.php">Journals and eBooks Catalog</a></li>
                                <li><a href="https://benthamscience.com/journal-files/Media-Pack-2018.pdf">Media-Pack-2018</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/region/north-america/">Events by Region</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/subject/agriculture/">Events by Subject Areas</a></li>
                                <li><a href="https://benthamscience.com/exhibit-schedule.php">Exhibit Schedule</a></li>
                                <li><a href="https://benthamscience.com/corporate-sales.php">Healthcare Industry Resources</a></li>
                                <li><a href="https://benthamscience.com/kudos.php">Kudos</a></li>
                                <li><a href="https://benthamscience.com/media-partners-main.php">Media Partners</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/">Partnering Events</a></li>
                                <li><a href="https://benthamscience.com/promotional-services.php">Promotional Services</a></li>
                            </ul>
                        </div>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-popular-thematic-issues.php" style="text-align:left; color:#000000;">Browse Popular Thematic Issues</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-open-access-articles.php" style="text-align:left; color:#000000;">Browse Open Access Articles</a>
                        <a class="btn btn-default" href="https://benthamscience.com/indexing-agencies.php" style="text-align:left; color:#000000;">Indexing Information</a>
                        <a class="btn btn-default" href="https://benthamscience.com/new-journals/2019/" style="text-align:left; color:#000000;">New Journals by Bentham Science</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/free-online-samples.php" style="text-align:left; color:#000000;">Free Online Samples</a>
                        <a class="btn btn-default" href="https://benthamscience.com/bsptrials.php" style="text-align:left; color:#000000;">Free Online Trials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/http://benthamalerts.com//" style="text-align:left; color:#000000;">Alerting Services</a>
                        <a class="btn btn-default" href="https://benthamscience.com/author-reprints.php" style="text-align:left; color:#000000;">Author Reprints</a>
                        <a class="btn btn-default" href="https://benthamscience.com/corporate-sales.php" style="text-align:left; color:#000000;">Healthcare Industry Resources</a>
                        <a class="btn btn-default" href="https://benthamscience.com/open-access-plus-main.php" style="text-align:left; color:#000000;">Open Access Plus</a>
                        <a class="btn btn-default" href="http://eurekaselect.com/" style="text-align:left; color:#000000;">Online Store</a>
                        <a class="btn btn-default" href="https://benthamscience.com/testimonial.php" style="text-align:left; color:#000000;">Author Comments &amp; Testimonials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/press-release-main.php" style="text-align:left; color:#000000;">Press Release</a>
                        <a class="btn btn-default" href="https://benthamscience.com/faqs-general.php" style="text-align:left; color:#000000;">Frequently Asked Questions (FAQs)</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row hidden-lg hidden-md hidden-sm" style="padding-left:15px; padding-right:15px;">
            <div class="col-xs-12" style="padding:10px; padding-left:0px; padding-right:0px;">
                <xsl:apply-templates select="document('common-xml/endorsements.xml')/endorsement/endorsement-body/endorsement-list" mode="xs" />
            </div>
            <div class="col-xs-12" style="padding:10px; padding-left:0px; padding-right:0px;">
            	<div style="border: solid; border-color: #CCC; border-width:thin; box-shadow: 0px 2px 10px #cccccc; padding:100px; height:850px; overflow:hidden; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */       
                ">
                    <h1 class="bentham_home">Quick Links</h1>
                    <div class="btn-group-vertical" role="group" aria-label="...">
                        <a class="btn btn-default" href="https://benthamscience.com/journals-by-title/A/1/" style="text-align:left; color:#000000;">Browse Journals by Title</a>
                        <a class="btn btn-default" href="https://benthamscience.com/browse-by-subject/agriculture/" style="text-align:left; color:#000000;">Browse Subject Areas</a>
                        <a class="btn btn-default" href="https://ebooks.benthamscience.com/" style="text-align:left; color:#000000;">Browse eBooks Website</a>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Librarians <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                                <li><a href="https://benthamscience.com/faqs-reprints.php">FAQ’s for e-prints/reprints</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="http://www.eurekaselect.com/library-recommendation">Library Recommendations</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-eprint">Order Bulk ePrints</a></li>
                                <li><a href="http://www.eurekaselect.com/direct-order-reprint">Order Bulk Reprints</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                                <li><a href="https://benthamscience.com/bsptrials.php">Trial Requests</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">For Authors &amp; Editors <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                                <li><a href="https://benthamscience.com/author-benefits.php">Author Benefits</a></li>
                                <li><a href="https://benthamscience.com/author-reprints.php">Author Reprints</a></li>
                                <li><a href="https://benthamscience.com/language-editing.php">Copyediting Services</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/editorial-policies-main.php">Editorial Policies</a></li>
                                <li><a href="https://benthamscience.com/faqs-general.php">General FAQ’s</a></li>
                                <li><a href="https://benthamscience.com/guest-editors-guidelines.php">Guidelines for Guest Editors</a></li>
                                <li><a href="https://benthamscience.com/catalog/catalog-files/JournalCatalog2019.pdf">Journal Catalog 2019</a></li>
                                <li><a href="https://benthamscience.com/manuscript-transfer-facility.php">Manuscript Transfer Facility</a></li>
                                <li><a href="https://benthamscience.com/instructions.php">Online Manuscript Submission</a></li>
                                <li><a href="https://benthamscience.com/process-flowchart-main.php">Publication Cycle - Process Flowchart</a></li>
                                <li><a href="https://benthamscience.com/publishing-ethics-main.php">Publishing Ethics</a></li>
                                <li><a href="https://benthamscience.com/reviewers-guidelines-main.php">Reviewer Guidelines</a></li>
                                <li><a href="https://benthamscience.com/self-archiving-policies-main.php">Self-Archiving Policies</a></li>
                                <li><a href="http://benthamalerts.com/">Table of Contents Alert</a></li>
                            </ul>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="text-align:left;">Marketing Opportunities <span class="caret"></span></button>
                            <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                                <li><a href="https://benthamscience.com/advertise-main.php">Advertise With Us</a></li>
                                <li><a href="https://benthamscience.com/catalogs-main.php">Journals and eBooks Catalog</a></li>
                                <li><a href="https://benthamscience.com/journal-files/Media-Pack-2018.pdf">Media-Pack-2018</a></li>
                                <li><a href="https://benthamscience.com/journal-files/AUTHORS-BENEFITS-GUIDE-BSP.pdf">Author's Benefits Guide</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/region/north-america/">Events by Region</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/subject/agriculture/">Events by Subject Areas</a></li>
                                <li><a href="https://benthamscience.com/exhibit-schedule.php">Exhibit Schedule</a></li>
                                <li><a href="https://benthamscience.com/corporate-sales.php">Healthcare Industry Resources</a></li>
                                <li><a href="https://benthamscience.com/kudos.php">Kudos</a></li>
                                <li><a href="https://benthamscience.com/media-partners-main.php">Media Partners</a></li>
                                <li><a href="https://benthamscience.com/partnering-events/">Partnering Events</a></li>
                                <li><a href="https://benthamscience.com/promotional-services.php">Promotional Services</a></li>
                            </ul>
                        </div>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-popular-thematic-issues.php" style="text-align:left; color:#000000;">Browse Popular Thematic Issues</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/browse-open-access-articles.php" style="text-align:left; color:#000000;">Browse Open Access Articles</a>
                        <a class="btn btn-default" href="https://benthamscience.com/indexing-agencies.php" style="text-align:left; color:#000000;">Indexing Information</a>
                        <a class="btn btn-default" href="https://benthamscience.com/new-journals/2019/" style="text-align:left; color:#000000;">New Journals by Bentham Science</a>
                        <a class="btn btn-default" href="https://benthamscience.com/journal/free-online-samples.php" style="text-align:left; color:#000000;">Free Online Samples</a>
                        <a class="btn btn-default" href="https://benthamscience.com/bsptrials.php" style="text-align:left; color:#000000;">Free Online Trials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/http://benthamalerts.com//" style="text-align:left; color:#000000;">Alerting Services</a>
                        <a class="btn btn-default" href="https://benthamscience.com/author-reprints.php" style="text-align:left; color:#000000;">Author Reprints</a>
                        <a class="btn btn-default" href="https://benthamscience.com/corporate-sales.php" style="text-align:left; color:#000000;">Healthcare Industry Resources</a>
                        <a class="btn btn-default" href="https://benthamscience.com/open-access-plus-main.php" style="text-align:left; color:#000000;">Open Access Plus</a>
                        <a class="btn btn-default" href="http://eurekaselect.com/" style="text-align:left; color:#000000;">Online Store</a>
                        <a class="btn btn-default" href="https://benthamscience.com/testimonial.php" style="text-align:left; color:#000000;">Author Comments &amp; Testimonials</a>
                        <a class="btn btn-default" href="https://benthamscience.com/press-release-main.php" style="text-align:left; color:#000000;">Press Release</a>
                        <a class="btn btn-default" href="https://benthamscience.com/faqs-general.php" style="text-align:left; color:#000000;">Frequently Asked Questions (FAQs)</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row hidden-md hidden-sm hidden-xs" style="padding-left:15px; padding-right:15px;">  
            <div class="col-lg-4" style="padding:10px; padding-left:0px; padding-right:5px;">
                <xsl:apply-templates select="document('common-xml/journals-impacting-science.xml')/high-impact-factor/high-impact-factor-body/journal-list" mode="full" />
            </div>
            <div class="col-lg-8" style="padding:10px; padding-left:5px; padding-right:0px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/recent-trends.xml')/recent-trends/recent-trends-list" />
            </div>
        </div>
        
        <div class="row hidden-lg hidden-sm hidden-xs" style="padding-left:15px; padding-right:15px;">  
            <div class="col-md-5" style="padding:10px; padding-left:0px; padding-right:5px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/journals-impacting-science.xml')/high-impact-factor/high-impact-factor-body/journal-list" mode="full" />
            </div>
            <div class="col-md-7" style="padding:10px; padding-left:5px; padding-right:0px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/recent-trends.xml')/recent-trends/recent-trends-list" mode="md" />
            </div>
        </div>
        
        <div class="row hidden-lg hidden-md hidden-xs" style="padding-left:15px; padding-right:15px;">  
            <div class="col-sm-12" style="padding:10px; padding-left:0px; padding-right:0px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/journals-impacting-science.xml')/high-impact-factor/high-impact-factor-body/journal-list" mode="full" />
            </div>
            <div class="col-sm-12" style="padding:10px; padding-left:0px; padding-right:0px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/recent-trends.xml')/recent-trends/recent-trends-list" />
            </div>
        </div>
        
        <div class="row hidden-lg hidden-md hidden-sm" style="padding-left:15px; padding-right:15px;">  
            <div class="col-xs-12" style="padding:10px; padding-left:0px; padding-right:0px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/journals-impacting-science.xml')/high-impact-factor/high-impact-factor-body/journal-list" mode="full" />
            </div>
            <div class="col-xs-12" style="padding:10px; padding-left:0px; padding-right:0px;">
                <xsl:apply-templates select="document('https://benthamscience.com/common-xml/recent-trends.xml')/recent-trends/recent-trends-list" />
            </div>
        </div>
        
        <br/>
        
    </div>
	<script>
        $(function(){
        $('div.product-chooser').not('.disabled').find('div.product-chooser-item').on('click', function(){
        $(this).parent().parent().find('div.product-chooser-item').removeClass('selected');
        $(this).addClass('selected');
        $(this).find('input[type="radio"]').prop("checked", true);
        
        });
        });
    </script>
    <script src="{{asset('scripts/js/bootstrap.min.js'}}"></script>
   
    </body>
</html>
</xsl:template>

<xsl:template match="/ebook/front/ebook-meta/ebook-id" mode="doi">
	<xsl:if test="@pub-id-type='doi'">
    	<strong>DOI: </strong>
        <a target="_blank">
        <xsl:attribute name="href">
            <xsl:text>http://dx.doi.org/</xsl:text><xsl:value-of select="." disable-output-escaping="yes"/>
        </xsl:attribute>
        <xsl:value-of select="." disable-output-escaping="yes"/>
        </a>
    </xsl:if>
</xsl:template>

<xsl:template match="/ebook/front/ebook-meta/contributor-list" mode="editors">
    <xsl:if test="@contributor-list-type='editor'">
    	<strong>Edited by: </strong>
        <xsl:for-each select="contributor-member">
            <xsl:value-of select="name/given-names"/><xsl:text> </xsl:text>
            <xsl:value-of select="name/surname"/>
            <xsl:if test="following-sibling::contributor-member"><xsl:text>, </xsl:text></xsl:if>
        </xsl:for-each>
    </xsl:if>
</xsl:template>

<xsl:template match="/ebook/front/ebook-meta/contributor-list" mode="co-editors">
    <xsl:if test="@contributor-list-type='co-editor'">
    	<strong>Edited by: </strong>
        <xsl:for-each select="contributor-member">
            <xsl:value-of select="name/given-names"/><xsl:text> </xsl:text>
            <xsl:value-of select="name/surname"/>
            <xsl:if test="following-sibling::contributor-member"><xsl:text>, </xsl:text></xsl:if>
        </xsl:for-each>
    </xsl:if>
</xsl:template>

<xsl:template match="/ebook/front/ebook-meta/contributor-list" mode="authors">
    <xsl:if test="@contributor-list-type='author'">
    	<strong>Authored by: </strong>
        <xsl:for-each select="contributor-member">
            <xsl:value-of select="name/given-names"/><xsl:text> </xsl:text>
            <xsl:value-of select="name/surname"/>
            <xsl:if test="following-sibling::contributor-member"><xsl:text>, </xsl:text></xsl:if>
        </xsl:for-each>
    </xsl:if>
</xsl:template>

<xsl:key name="new_ebook_entry" match="/new_ebooks/new_ebook_entry/text()" use="." />

<xsl:template match="/new_ebooks">
	<div style="box-shadow: 0px 2px 10px #cccccc; background-color:#ffffff; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:10px; text-align:justify; height:700px;">
		<div style=" box-shadow: 0px 2px 10px #cccccc;
		background: #ffffff; /* Old browsers */
		background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
		background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
		-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:10px; text-align:justify;">
		 	
				<h1 class="bentham_home">New eBooks</h1>
				<div style="padding-right:10px;">
				<xsl:for-each select="new_ebook_entry/text()[generate-id()
                                       = generate-id(key('new_ebook_entry',.)[1])]">
					<xsl:variable name="ebookid" select="."/>
                    <xsl:if test="position() &lt; 4">
					<table>
						<tr>
							<td valign="top">
								<a target="_blank">
									<xsl:attribute name="href">
										<xsl:text>https://ebooks.benthamscience.com/book/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>/</xsl:text>
									</xsl:attribute>
									<img border="0" height="100">
										<xsl:attribute name="src">
											<xsl:text>https://ebooks.benthamscience.com/ebook-images/ebook-covers/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>-cover.jpg</xsl:text>
										</xsl:attribute>
									</img>
								</a>
							</td>
							<td align="left" valign="top" style="padding-left:5px;">
								<xsl:variable name="book">
									<xsl:text>https://ebooks.benthamscience.com/ebook-meta/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>.xml</xsl:text>
								</xsl:variable>
								<a target="_blank">
									<xsl:attribute name="href">
										<xsl:text>https://ebooks.benthamscience.com/book/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>/</xsl:text>
									</xsl:attribute>
									<xsl:value-of select="document($book)/ebook/front/ebook-meta/ebook-title/ebook-volume-title"/>
								</a>
								<br/>
								<strong>eISBN: </strong><xsl:value-of select="document($book)/ebook/front/ebook-meta/ebook-issn-list/eisbn"/>
								<br/>
								<strong>ISBN: </strong><xsl:value-of select="document($book)/ebook/front/ebook-meta/ebook-issn-list/isbn"/>
								<br/>
								<xsl:apply-templates select="document($book)/ebook/front/ebook-meta/contributor-list" mode="editors"/>
		                        <xsl:if test="not(document($book)/ebook/front/ebook-meta/contributor-list/@contributor-list-type='editor')">
		                            <xsl:apply-templates select="document($book)/ebook/front/ebook-meta/contributor-list" mode="co-editors"/>
		                        </xsl:if>
		                      	<xsl:apply-templates select="document($book)/ebook/front/ebook-meta/contributor-list" mode="authors"/>
		                        <!--
		                        <br />
		                        
		                        <xsl:if test="document($book)/ebook/front/ebook-meta/ebook-id/@pub-id-type='doi'">
		                            <xsl:apply-templates select="document($book)/ebook/front/ebook-meta/ebook-id" mode="doi"/>
		                            <br />
		                        </xsl:if>
								-->
							</td>
						</tr>
					</table>
					<hr/>
                    </xsl:if>
				</xsl:for-each>
				</div>
			</div>
            <div style="width:100%;text-align:right;padding-top:5px; text-decoration:underline;">
                <a href="https://ebooks.benthamscience.com">view more eBooks &gt;&gt;</a>
            </div>
		</div>

</xsl:template>

<xsl:template match="/new_ebooks" mode="md">
	<div style="box-shadow: 0px 2px 10px #cccccc; background-color:#ffffff; padding:10px; text-align:justify; height:700px;">
		<div style="box-shadow: 0px 2px 10px #cccccc;
		background: #ffffff; /* Old browsers */
		background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
		background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
		-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:10px; text-align:justify;">
		 	
				<h1 class="bentham_home">New eBooks</h1>
				<div style="padding-right:10px;">
				<xsl:for-each select="new_ebook_entry/text()[generate-id()
                                       = generate-id(key('new_ebook_entry',.)[1])]">
					<xsl:variable name="ebookid" select="."/>
                    <xsl:if test="position() &lt; 4">
					<table>
						<tr>
							<td valign="top">
								<a target="_blank">
									<xsl:attribute name="href">
										<xsl:text>https://ebooks.benthamscience.com/book/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>/</xsl:text>
									</xsl:attribute>
									<img border="0" height="100">
										<xsl:attribute name="src">
											<xsl:text>https://ebooks.benthamscience.com/ebook-images/ebook-covers/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>-cover.jpg</xsl:text>
										</xsl:attribute>
									</img>
								</a>
							</td>
							<td align="left" valign="top" style="padding-left:5px;">
								<xsl:variable name="book">
									<xsl:text>https://ebooks.benthamscience.com/ebook-meta/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>.xml</xsl:text>
								</xsl:variable>
								<a target="_blank">
									<xsl:attribute name="href">
										<xsl:text>https://ebooks.benthamscience.com/book/</xsl:text><xsl:value-of select="$ebookid"/><xsl:text>/</xsl:text>
									</xsl:attribute>
									<xsl:value-of select="document($book)/ebook/front/ebook-meta/ebook-title/ebook-volume-title"/>
								</a>
								<br/>
								<strong>eISBN: </strong><xsl:value-of select="document($book)/ebook/front/ebook-meta/ebook-issn-list/eisbn"/>
								<br/>
								<strong>ISBN: </strong><xsl:value-of select="document($book)/ebook/front/ebook-meta/ebook-issn-list/isbn"/>
								<br/>
								<xsl:apply-templates select="document($book)/ebook/front/ebook-meta/contributor-list" mode="editors"/>
		                        <xsl:if test="not(document($book)/ebook/front/ebook-meta/contributor-list/@contributor-list-type='editor')">
		                            <xsl:apply-templates select="document($book)/ebook/front/ebook-meta/contributor-list" mode="co-editors"/>
		                        </xsl:if>
		                      	<xsl:apply-templates select="document($book)/ebook/front/ebook-meta/contributor-list" mode="authors"/>
		                        <!--
		                        <br />
		                        
		                        <xsl:if test="document($book)/ebook/front/ebook-meta/ebook-id/@pub-id-type='doi'">
		                            <xsl:apply-templates select="document($book)/ebook/front/ebook-meta/ebook-id" mode="doi"/>
		                            <br />
		                        </xsl:if>
								-->
							</td>
						</tr>
					</table>
					<hr/>
                    </xsl:if>
				</xsl:for-each>
				
				</div>
			</div>
            <div style="width:100%;text-align:right;padding-top:5px; text-decoration:underline;">
                <a href="https://ebooks.benthamscience.com">view more eBooks &gt;&gt;</a>
            </div>
		</div>

</xsl:template>

<xsl:template match="/testimonial/testimonial-list">
	<table>
	<tr>
    <xsl:for-each select="testimonial-entry">
    <xsl:variable name="jcode"><xsl:value-of select="journal-code"/></xsl:variable>
    <xsl:variable name="jid"><xsl:text>journal-meta/</xsl:text><xsl:value-of select="journal-code"/><xsl:text>.xml</xsl:text></xsl:variable>
    
    <xsl:if test="position() &lt; 4">
    <td width="33%" valign="top" style="border: solid; border-color: #CCC; border-width:thin; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;box-shadow: 0px 2px 10px #cccccc;">
    <div style="float:left; overflow:hidden;">
	    <div style="box-shadow: 0px 2px 10px #cccccc;">
	        <div style="overflow:hidden;">
	            <div style="float:left; overflow:hidden;">
		            
	            	<div style="padding:10px; overflow:hidden; text-align:justify;">
			            <!--
			            <h4 style="display:inline;">Comments</h4>
			            -->
			            <i><xsl:apply-templates select="comment" mode="testimonial"/></i>
		            </div>
	            </div>
	        </div>
	        <div style="overflow:hidden;">
	            <div style="padding:10px; overflow:hidden;">
		            <div style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:10px; background-color:#ebebeb; overflow:hidden;">
			            <div style="overflow:hidden; width: 140px; text-align:center; float:left;">
		                <xsl:variable name="jour">journal-meta/<xsl:value-of select="journal-code"/>.xml</xsl:variable>
		                <a>
		                <xsl:attribute name="href">
		                	<xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/</xsl:text>
		                </xsl:attribute>
		                <img border="0">
		                    <xsl:attribute name="src">
		                        <xsl:text>../../../../../../../../journal-cover/</xsl:text><xsl:value-of select="document($jour)/journal/journal-front/journal-meta/journal-cover-image" />
		                    </xsl:attribute>
		                </img>
		                </a>
		                <!--
		                <br /><br />
		                <center>
		                <a>
		                <xsl:attribute name="href">
		                	<xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/subscribe-to-this-journal/</xsl:text>
		                </xsl:attribute>
		                <div class="sea-cool-button" onmouseover="this.className='sea-cool-out'" onmouseout="this.className='sea-cool'" style="-webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; width:100px; height:20px; text-align:center; padding-top:3px;">
		                Subscribe Here
		                </div>
		                </a>
		                </center>
		                -->
	            	</div>
			            <div style="overflow:hidden;">    
			                <xsl:apply-templates select="contrib-group" mode="testimonial"/>
			                <br />
							<xsl:if test="contrib-article/article-nid">
			                <br />
			                <b>Has contributed following article:</b>
			                <br />
							<a target="_blank">
			                    <xsl:attribute name="href">
			                    	<xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/article/</xsl:text><xsl:value-of select="contrib-article/article-nid" /><xsl:text>/</xsl:text>
			                    </xsl:attribute>
			                    <xsl:value-of select="contrib-article/article-title" />
			                </a>
			                </xsl:if>
			           	</div>
		            </div>
	            </div>
	        </div>
	    </div>
    </div>
    </td>
    </xsl:if>
    </xsl:for-each>
    </tr>
    </table>
    <div style="width:100%;text-align:right;padding-top:5px; text-decoration:underline;">
    	<a href="../testimonial.php">view more Author Comments &gt;&gt;</a>
    </div>
</xsl:template>

<xsl:template match="comment" mode="testimonial">
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="contrib-group" mode="testimonial">
	<xsl:for-each select="contrib">
        <strong>
        <xsl:value-of select="name/prefix"/><xsl:text> </xsl:text>
        <xsl:value-of select="name/given-names"/><xsl:text> </xsl:text>
        <xsl:value-of select="name/surname"/>
        </strong>
        <br />
        <xsl:value-of select="affiliation/institute"/>
        <br />
        <xsl:value-of select="affiliation/country"/>
        <br />
		<xsl:if test="position() != last()">
        <br />
		</xsl:if>
    </xsl:for-each>
</xsl:template>



<xsl:template match="media-partner/media-partner-list">
	<xsl:for-each select="media-entry">
		<xsl:if test="media-image">
			<xsl:choose>
				<xsl:when test="media-link">
					<a target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of select="media-link/uri"/>
						</xsl:attribute>
						<img border="0" style="padding:3px;">
							<xsl:choose>
								<xsl:when test="@logo-orientation='vertical'">
									<xsl:attribute name="height">100</xsl:attribute>
								</xsl:when>
								<xsl:when test="@logo-orientation='horizontal'">
									<xsl:attribute name="width">100</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="height">50</xsl:attribute>
									<xsl:attribute name="width">50</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:attribute name="src">
								<xsl:text>../../../../../../../../../../conference-images/media-partner/</xsl:text><xsl:value-of select="media-image"/>
							</xsl:attribute>
						</img>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<img border="0" style="padding:3px;">
						<xsl:choose>
							<xsl:when test="@logo-orientation='vertical'">
								<xsl:attribute name="width">100</xsl:attribute>
							</xsl:when>
							<xsl:when test="@logo-orientation='horizontal'">
								<xsl:attribute name="height">100</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="height">50</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:attribute name="src">
							<xsl:text>../../../../../../../../../../conference-images/media-partner/</xsl:text><xsl:value-of select="media-image"/>
						</xsl:attribute>
					</img>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:for-each>
</xsl:template>


<xsl:template match="corporate-affiliations/corporate-affiliation-list">
	<xsl:for-each select="corporate-affiliation-entry">
		<xsl:if test="corporate-affiliation-logo">
			<xsl:choose>
				<xsl:when test="corporate-affiliation-link">
					<a target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of select="corporate-affiliation-link"/>
						</xsl:attribute>
						<img border="0" style="padding:10px;">
							<xsl:choose>
								<xsl:when test="@logo-orientation='vertical'">
									<xsl:attribute name="height">100</xsl:attribute>
								</xsl:when>
								<xsl:when test="@logo-orientation='horizontal'">
									<xsl:attribute name="width">100</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="height">50</xsl:attribute>
									<xsl:attribute name="width">50</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:attribute name="src">
								<xsl:text>../../../../../../../../../../journal-images/corporate-affiliation-logo/</xsl:text><xsl:value-of select="corporate-affiliation-logo"/>
							</xsl:attribute>
						</img>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<img border="0" style="padding:10px;">
						<xsl:choose>
							<xsl:when test="@logo-orientation='vertical'">
								<xsl:attribute name="width">100</xsl:attribute>
							</xsl:when>
							<xsl:when test="@logo-orientation='horizontal'">
								<xsl:attribute name="height">100</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="height">50</xsl:attribute>
								<xsl:attribute name="width">50</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:attribute name="src">
							<xsl:text>../../../../../../../../../../journal-images/corporate-affiliation-logo/</xsl:text><xsl:value-of select="corporate-affiliation-logo"/>
						</xsl:attribute>
					</img>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template match="list">
		<xsl:if test="label | title">
			<xsl:apply-templates select="label | title"/>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="@list-type='simple' or list-item/label">
				<ul style="list-style-type: none;">
					<xsl:apply-templates select="list-item"/>
				</ul>
			</xsl:when>
			<xsl:when test="@list-type='bullet'">
				<ul>
					<xsl:apply-templates select="list-item"/>
				</ul>
			</xsl:when>
			<xsl:otherwise>
				<ol>
					<xsl:apply-templates select="list-item"/>
				</ol>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="list-item">
		<li>
			<xsl:apply-templates/>
		</li>
	</xsl:template>


<xsl:template match="indexing-agencies/indexing-agency-list">
	<xsl:for-each select="indexing-agency-entry">
		<xsl:if test="@display-master-status='yes' and not(not(indexing-agency-logo))">
			<xsl:choose>
				<xsl:when test="indexing-agency-link">
					<a target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of select="indexing-agency-link"/>
						</xsl:attribute>
						<img border="0" style="padding:10px;">
                        	<xsl:attribute name="height">
                                <xsl:choose>
                                    <xsl:when test="indexing-agency-logo/@height">
                                        <xsl:value-of select="indexing-agency-logo/@height"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>60</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
							<xsl:attribute name="src">
								<xsl:text>../../../../../../../../../../journal-images/indexing-agencies/</xsl:text><xsl:value-of select="indexing-agency-logo"/>
							</xsl:attribute>
						</img>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<img border="0" style="padding:10px;">
                        <xsl:attribute name="height">
                            <xsl:choose>
                                <xsl:when test="indexing-agency-logo/@height">
                                    <xsl:value-of select="indexing-agency-logo/@height"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>60</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:attribute>
						<xsl:attribute name="src">
							<xsl:text>../../../../../../../../../../journal-images/indexing-agencies/</xsl:text><xsl:value-of select="indexing-agency-logo"/>
						</xsl:attribute>
					</img>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template match="/subject-area/subject-area-body/subject-area-list">
	<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden;height:650px;">
	<h2>Subject Areas</h2>
	<div style="height:565px; padding:10px; padding-top:0px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden;">
        <!--
        <ul id="navigation" style="">
        -->
	        <xsl:for-each select="subject-area-entry">
		        <xsl:variable name="subj">../subject-list/subject-areas/<xsl:value-of select="subject-area-id" />.xml</xsl:variable>
		        <!--
		        <li style="list-style-type: none;">
		        -->
			        <a>
				        <xsl:attribute name="href">
				            <!--
				            	<xsl:variable name="subqty"><xsl:apply-templates select="document($subj)/subject-area-journal/subject-area-journal-body/subject-area-journal-list" mode="qty"/></xsl:variable>
				            -->
				            <xsl:text>../../../../../../../../../browse-by-subject/</xsl:text><xsl:value-of select="subject-area-seo-name" /><xsl:text>/</xsl:text>
				        </xsl:attribute>
				        <xsl:value-of select="subject-area-title" />
			        </a>
			        <br/>
			        <!--
			        	<xsl:apply-templates select="document($subj)/subject-area-journal/subject-area-journal-body/subject-area-sub-cat-list"/>
			        -->
		        <!--
		        </li>
		        -->
		    </xsl:for-each>
	    <!--
	    </ul>
	    -->
    </div>
    </div>
</xsl:template>

<xsl:template match="/subject-area/subject-area-body/subject-area-list" mode="md">
	<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden;height:700px;">
	<h2>Subject Areas</h2>
	<div style="height:565px; padding:10px; padding-top:0px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden;">
        <!--
        <ul id="navigation" style="">
        -->
	        <xsl:for-each select="subject-area-entry">
		        <xsl:variable name="subj">../subject-list/subject-areas/<xsl:value-of select="subject-area-id" />.xml</xsl:variable>
		        <!--
		        <li style="list-style-type: none;">
		        -->
			        <a>
				        <xsl:attribute name="href">
				            <!--
				            	<xsl:variable name="subqty"><xsl:apply-templates select="document($subj)/subject-area-journal/subject-area-journal-body/subject-area-journal-list" mode="qty"/></xsl:variable>
				            -->
				            <xsl:text>../../../../../../../../../browse-by-subject/</xsl:text><xsl:value-of select="subject-area-seo-name" /><xsl:text>/</xsl:text>
				        </xsl:attribute>
				        <xsl:value-of select="subject-area-title" />
			        </a>
			        <br/>
			        <!--
			        	<xsl:apply-templates select="document($subj)/subject-area-journal/subject-area-journal-body/subject-area-sub-cat-list"/>
			        -->
		        <!--
		        </li>
		        -->
		    </xsl:for-each>
	    <!--
	    </ul>
	    -->
    </div>
    </div>
</xsl:template>

<xsl:template match="subject-area-journal/subject-area-journal-body/subject-area-sub-cat-list">
	<!--
	<ul>
	-->
		<xsl:for-each select="subject-area-sub-cat-entry">
			<!--
			<li style="list-style-type: none;">
			-->
	            <a>
	            <xsl:attribute name="href">
	                <xsl:variable name="subj1">../subject-list/subject-areas/sub-categories/<xsl:value-of select="subject-area-sub-cat-id" />.xml</xsl:variable>
                    <xsl:text>../../../../../../../../../browse-by-subject/</xsl:text><xsl:value-of select="/subject-area-journal/subject-area-journal-front/subject-area-journal-meta/subject-area-seo-name" /><xsl:text>/sub-category/</xsl:text><xsl:value-of select="subject-area-sub-cat-seo-name" /><xsl:text>/</xsl:text>
	            </xsl:attribute>
	            <xsl:value-of select="subject-area-sub-cat-name" />
	            </a>
			<!--
			</li>
			-->
		</xsl:for-each>
	<!--
	</ul>
	-->
</xsl:template>

<xsl:template match="/disp/disp-body/disp-list">
	<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden;">
<h1 class="bentham_home">Subject Areas</h1>
    	<div style="padding:10px; padding-top:0px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden;">
    
            <xsl:for-each select="disp-entry">
            
            <a>
            <xsl:attribute name="href">
                <xsl:variable name="subj">../title-list/by-disciplines/<xsl:value-of select="disp-id" />.xml</xsl:variable>
                <xsl:variable name="subqty"><xsl:apply-templates select="document($subj)/disp-journal/disp-journal-body/disp-journal-list" mode="qty"/></xsl:variable>
                <xsl:choose>
                    <xsl:when test="$subqty &gt; 10">
                        <xsl:text>journals-by-subject/</xsl:text><xsl:value-of select="disp-seo-name" /><xsl:text>/1/</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>journals-by-subject/</xsl:text><xsl:value-of select="disp-seo-name" /><xsl:text>/1/</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:value-of select="disp-title" />
            </a>
            <br />
            
        </xsl:for-each>
        </div>
        </div>
</xsl:template>

<xsl:template match="/online-banners/online-banner-list">
	<xsl:param name="day_id1"/>
    <xsl:param name="month_id1"/>
    <xsl:param name="year_id1"/>
    <xsl:variable name="currdate"><xsl:value-of select="$year_id"/><xsl:value-of select="$month_id"/><xsl:value-of select="$day_id"/></xsl:variable>
    <xsl:variable name="vsortKey" select="'banner-activation-year'"/>
    <xsl:variable name="vsortKey1" select="'banner-activation-month'"/>
    <xsl:variable name="vsortKey2" select="'banner-activation-day'"/>
    <xsl:variable name="vsortOrder" select="'descending'"/>
    
    
		    <div id="transition-timer-carousel" class="carousel slide transition-timer-carousel" data-ride="carousel">
			<!-- Indicators -->
	            <ol class="carousel-indicators">
	            <xsl:for-each select="//online-banner-entry[number(concat(banner-activation-year,banner-activation-month,banner-activation-day)) &lt;= $currdate and number(concat(banner-removal-year,banner-removal-month,banner-removal-day)) &gt;= $currdate]">
	                <xsl:sort select="*[name() = $vsortKey]" order="{$vsortOrder}"/>
	                <xsl:sort select="*[name() = $vsortKey1]" order="{$vsortOrder}"/>
	                <xsl:sort select="*[name() = $vsortKey2]" order="{$vsortOrder}"/>
	                <li data-target="#transition-timer-carousel">
	                    <xsl:attribute name="data-slide-to"><xsl:value-of select="position()"/></xsl:attribute>
	                    <xsl:if test="position() = 1">
	                        <xsl:attribute name="class"><xsl:text>active</xsl:text></xsl:attribute>
	                    </xsl:if>
	                </li>
	            </xsl:for-each>
				</ol>
				<div class="carousel-inner">
				    <xsl:for-each select="//online-banner-entry[number(concat(banner-activation-year,banner-activation-month,banner-activation-day)) &lt;= $currdate and number(concat(banner-removal-year,banner-removal-month,banner-removal-day)) &gt;= $currdate]">
				    	<xsl:sort select="*[name() = $vsortKey]" order="{$vsortOrder}"/>
				        <xsl:sort select="*[name() = $vsortKey1]" order="{$vsortOrder}"/>
				        <xsl:sort select="*[name() = $vsortKey2]" order="{$vsortOrder}"/>
		                <xsl:choose>
				            <xsl:when test="banner-link">
				            	<div>
				                    <xsl:attribute name="class">
				                        <xsl:choose>
                                            <xsl:when test="position() = 1">
                                                <xsl:text>item active</xsl:text>
                                            </xsl:when>
                                            <xsl:otherwise><xsl:text>item</xsl:text></xsl:otherwise>
				                        </xsl:choose>
				                    </xsl:attribute>
					                <a target="_blank">
					                    <xsl:attribute name="href">
					                        <xsl:value-of select="banner-link" disable-output-escaping="yes"/>
					                    </xsl:attribute>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:text>../banner-images/</xsl:text><xsl:value-of select="banner-file" />
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="banner-name" />
                                            </xsl:attribute>
					                    </img>
					                </a>
				                </div>
				            </xsl:when>
				            <xsl:otherwise>
				                <div>
				                    <xsl:attribute name="class">
				                        <xsl:choose>
				                        <xsl:when test="position() = 1">
				                        	<xsl:text>item active</xsl:text>
				                        </xsl:when>
				                        <xsl:otherwise><xsl:text>item</xsl:text></xsl:otherwise>
				                        </xsl:choose>
				                    </xsl:attribute>
					                <img>
					                    <xsl:attribute name="src">
					                        <xsl:text>../banner-images/</xsl:text><xsl:value-of select="banner-file" />
					                    </xsl:attribute>
					                    <xsl:attribute name="alt">
					                        <xsl:value-of select="banner-name" />
					                    </xsl:attribute>
					                    
					                    <xsl:if test="position() = last()">
					                        <xsl:attribute name="data-transition">
					                            <xsl:text>slideInLeft</xsl:text>
					                        </xsl:attribute>
					                    </xsl:if>
					                    
					                </img>
				                </div>
				            </xsl:otherwise>
				        </xsl:choose>
		            </xsl:for-each>
			    </div>
				
                
                <a class="left carousel-control" href="#transition-timer-carousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#transition-timer-carousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
				<!-- Controls 
				<a class="left carousel-control" href="#transition-timer-carousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#transition-timer-carousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
	            -->
	            <!-- Timer "progress bar" -->
	            <!--
                <hr class="transition-timer-carousel-progress-bar animate" />
                -->
			</div>

</xsl:template>

<xsl:template match="/online-banners/online-banner-list" mode="old2">
	<xsl:param name="day_id1"/>
    <xsl:param name="month_id1"/>
    <xsl:param name="year_id1"/>
    <xsl:variable name="currdate"><xsl:value-of select="$year_id"/><xsl:value-of select="$month_id"/><xsl:value-of select="$day_id"/></xsl:variable>
    <xsl:variable name="vsortKey" select="'banner-activation-year'"/>
    <xsl:variable name="vsortKey1" select="'banner-activation-month'"/>
    <xsl:variable name="vsortKey2" select="'banner-activation-day'"/>
    <xsl:variable name="vsortOrder" select="'descending'"/>
    
    
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
    
    <xsl:for-each select="online-banner-entry">
    	<xsl:sort select="*[name() = $vsortKey]" order="{$vsortOrder}"/>
        <xsl:sort select="*[name() = $vsortKey1]" order="{$vsortOrder}"/>
        <xsl:sort select="*[name() = $vsortKey2]" order="{$vsortOrder}"/>
        <xsl:variable name="activatedate"><xsl:value-of select="banner-activation-year"/><xsl:value-of select="banner-activation-month"/><xsl:value-of select="banner-activation-day"/></xsl:variable>
        <xsl:variable name="removaldate"><xsl:value-of select="banner-removal-year"/><xsl:value-of select="banner-removal-month"/><xsl:value-of select="banner-removal-day"/></xsl:variable>
        
        <!--
        <xsl:if test="banner-activation-year &lt;= $year_id1 and banner-activation-month &lt;= $month_id1 and banner-activation-day &lt;= $day_id1 and banner-removal-year &gt;= $year_id1 and banner-removal-month &gt;= $month_id1 and banner-removal-day &gt;= $day_id1">
        -->
        
        <xsl:if test="$activatedate &lt;= $currdate and $removaldate &gt;= $currdate">
            <li data-target="#myCarousel">
            	<xsl:attribute name="data-slide-to">
                	<xsl:value-of select="position()"/>
                </xsl:attribute>
                <xsl:if test="position()=1">
                	<xsl:attribute name="class">
                        <xsl:text>active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
            </li>
        </xsl:if>
    </xsl:for-each>
    </ol>
    
    <xsl:for-each select="online-banner-entry">
    	<xsl:sort select="*[name() = $vsortKey]" order="{$vsortOrder}"/>
        <xsl:sort select="*[name() = $vsortKey1]" order="{$vsortOrder}"/>
        <xsl:sort select="*[name() = $vsortKey2]" order="{$vsortOrder}"/>
        <xsl:variable name="activatedate1"><xsl:value-of select="banner-activation-year"/><xsl:value-of select="banner-activation-month"/><xsl:value-of select="banner-activation-day"/></xsl:variable>
        <xsl:variable name="removaldate1"><xsl:value-of select="banner-removal-year"/><xsl:value-of select="banner-removal-month"/><xsl:value-of select="banner-removal-day"/></xsl:variable>
        <xsl:if test="$activatedate1 &lt;= $currdate and $removaldate1 &gt;= $currdate">
          <div class="carousel-inner" role="listbox">
            <div>
            <xsl:choose>
            <xsl:when test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text>item active</xsl:text>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
            	<xsl:attribute name="class">
                    <xsl:text>item</xsl:text>
                </xsl:attribute>
            </xsl:otherwise>
            </xsl:choose>
              <img>
              	<xsl:attribute name="src">
                    <xsl:text>../banner-images/</xsl:text><xsl:value-of select="banner-file" />
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="banner-name" />
                </xsl:attribute>
              </img>
            </div>
          </div>
        </xsl:if>
      </xsl:for-each>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
</div>
</xsl:template>

<xsl:template match="/online-banners/online-banner-list" mode="old">
	<xsl:param name="day_id1"/>
    <xsl:param name="month_id1"/>
    <xsl:param name="year_id1"/>
    <xsl:variable name="currdate"><xsl:value-of select="$year_id"/><xsl:value-of select="$month_id"/><xsl:value-of select="$day_id"/></xsl:variable>
    <xsl:variable name="vsortKey" select="'banner-activation-year'"/>
    <xsl:variable name="vsortKey1" select="'banner-activation-month'"/>
    <xsl:variable name="vsortKey2" select="'banner-activation-day'"/>
    <xsl:variable name="vsortOrder" select="'descending'"/>
    <xsl:for-each select="online-banner-entry">
    	<xsl:sort select="*[name() = $vsortKey]" order="{$vsortOrder}"/>
        <xsl:sort select="*[name() = $vsortKey1]" order="{$vsortOrder}"/>
        <xsl:sort select="*[name() = $vsortKey2]" order="{$vsortOrder}"/>
        <xsl:variable name="activatedate"><xsl:value-of select="banner-activation-year"/><xsl:value-of select="banner-activation-month"/><xsl:value-of select="banner-activation-day"/></xsl:variable>
        <xsl:variable name="removaldate"><xsl:value-of select="banner-removal-year"/><xsl:value-of select="banner-removal-month"/><xsl:value-of select="banner-removal-day"/></xsl:variable>
        
        <!--
        <xsl:if test="banner-activation-year &lt;= $year_id1 and banner-activation-month &lt;= $month_id1 and banner-activation-day &lt;= $day_id1 and banner-removal-year &gt;= $year_id1 and banner-removal-month &gt;= $month_id1 and banner-removal-day &gt;= $day_id1">
        -->
        
        <xsl:if test="$activatedate &lt;= $currdate and $removaldate &gt;= $currdate">
        <xsl:choose>
            <xsl:when test="banner-link">
                <a target="_blank">
                    <xsl:attribute name="href">
                        <xsl:value-of select="banner-link" disable-output-escaping="yes"/>
                    </xsl:attribute>
                    <img class="mySlides">
                    <xsl:attribute name="src">
                        <xsl:text>../banner-images/</xsl:text><xsl:value-of select="banner-file" />
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="banner-name" />
                    </xsl:attribute>
                    <!--
                    <xsl:if test="position()=1">
                        <xsl:attribute name="width">
                            <xsl:text>1074</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="height">
                            <xsl:text>348</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    -->
                    <xsl:attribute name="border">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                    </img>
                </a>
            </xsl:when>
            <xsl:otherwise>
                <img class="mySlides">
                    <xsl:attribute name="src">
                        <xsl:text>../banner-images/</xsl:text><xsl:value-of select="banner-file" />
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="banner-name" />
                    </xsl:attribute>
                    <xsl:if test="position()=1">
                        <xsl:attribute name="width">
                            <xsl:text>1074</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="height">
                            <xsl:text>348</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    
                    <xsl:attribute name="border">
                        <xsl:text>0</xsl:text>
                    </xsl:attribute>
                </img>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:if>
    </xsl:for-each>
</xsl:template>


<xsl:template match="/recent-trends/recent-trends-list">
	<div style="padding:10px; text-align:justify; box-shadow: 0px 2px 10px #cccccc;
    background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
    <h1 class="bentham_home">Bentham Setting Recent Trends</h1>
    <div style="padding:10px; padding-bottom:0px; padding-top:10px; text-align:left; background-color:#FFF; border:solid thin #ddd; overflow:hidden;">
    <!--<marquee behavior="slide" direction="down" scrolldelay="10" style="padding-top:0px;">-->
	<div style="overflow:hidden; ">
	<xsl:for-each select="recent-trends-entry">
	<xsl:variable name="rtart">
		<xsl:text>recent-trends-xml/</xsl:text><xsl:value-of select="."/><xsl:text>.xml</xsl:text>
	</xsl:variable>
    <xsl:if test="position() &lt; 8">
        <div style="padding:4px; text-align:left; border:thin solid #dddddd;
    background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
        
        <a target="_blank">
        	<xsl:attribute name="href">
        		<xsl:text>https://benthamscience.com/recent-trends/</xsl:text><xsl:value-of select="."/><xsl:text>/</xsl:text>
        	</xsl:attribute>
        	<h2 class="bentham_home"><xsl:value-of select="document($rtart)/article/front/article-meta/title-group/article-title" disable-output-escaping="yes"/></h2>
        </a>
        
        <em><xsl:apply-templates select="document($rtart)/article/front/article-meta/abstract/p"/></em>
        <!--
        <div style="padding-top:5px; overflow:hidden;">
        <div class="sharethis-inline-share-buttons">
        	<xsl:attribute name="data-url">
            	<xsl:text>http://benthamscience.com/recent-trends/</xsl:text><xsl:value-of select="."/><xsl:text>/</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="data-title">
            	<xsl:value-of select="document($rtart)/article/front/article-meta/title-group/article-title" disable-output-escaping="yes"/>
            </xsl:attribute>
        </div>
		</div>
        -->
        </div>
        <!--<xsl:apply-templates select="news-text" />-->
        <br/>
        </xsl:if>
    </xsl:for-each>
    <!--</marquee>-->
    </div>
    </div>
    <xsl:if test="count(recent-trends-entry) &gt; 1">
            <div align="right" style="padding-top:10px;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/recent-trends-main.php</xsl:text>
                    </xsl:attribute>
                    view more Articles &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
        </div>
</xsl:template>

<xsl:template match="/recent-trends/recent-trends-list" mode="md">
	<div style="padding:10px; text-align:justify; box-shadow: 0px 2px 10px #cccccc;
    background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
    <h1 class="bentham_home">Bentham Setting Recent Trends</h1>
    <div style="padding:10px; padding-bottom:0px; padding-top:10px; text-align:left; background-color:#FFF; border:solid thin #ddd; overflow:hidden;">
    <!--<marquee behavior="slide" direction="down" scrolldelay="10" style="padding-top:0px;">-->
	<div style="overflow:hidden; ">
	<xsl:for-each select="recent-trends-entry">
	<xsl:variable name="rtart">
		<xsl:text>recent-trends-xml/</xsl:text><xsl:value-of select="."/><xsl:text>.xml</xsl:text>
	</xsl:variable>
    <xsl:if test="position() &lt; 6">
        <div style="padding:4px; text-align:left; border:thin solid #dddddd;
    background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
        
        <a target="_blank">
        	<xsl:attribute name="href">
        		<xsl:text>https://www.benthamscience.com/recent-trends/</xsl:text><xsl:value-of select="."/><xsl:text>/</xsl:text>
        	</xsl:attribute>
        	<h2 class="bentham_home"><xsl:value-of select="document($rtart)/article/front/article-meta/title-group/article-title" disable-output-escaping="yes"/></h2>
        </a>
        
        <em><xsl:apply-templates select="document($rtart)/article/front/article-meta/abstract/p"/></em>
        <!--
        <div style="padding-top:5px; overflow:hidden;">
        <div class="sharethis-inline-share-buttons">
        	<xsl:attribute name="data-url">
            	<xsl:text>http://benthamscience.com/recent-trends/</xsl:text><xsl:value-of select="."/><xsl:text>/</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="data-title">
            	<xsl:value-of select="document($rtart)/article/front/article-meta/title-group/article-title" disable-output-escaping="yes"/>
            </xsl:attribute>
        </div>
		</div>
        -->
        </div>
        <!--<xsl:apply-templates select="news-text" />-->
        <br/>
        </xsl:if>
    </xsl:for-each>
    <!--</marquee>-->
    </div>
    </div>
    <xsl:if test="count(recent-trends-entry) &gt; 1">
            <div align="right" style="padding-top:10px;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/recent-trends-main.php</xsl:text>
                    </xsl:attribute>
                    view more Articles &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
        </div>
</xsl:template>


<xsl:template match="/news/news-body/news-list">
	<div style=" padding:10px; text-align:justify; box-shadow: 0px 2px 10px #cccccc; height:650px;
    background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
    <h1 class="bentham_home">Bentham Press Release -- <i>NEWS </i><a target="_blank" href="https://benthamscience.com/press_release_rss.php"><img style="float:right;" src="../images/rss.png" width="25"/></a></h1>
    
    <div style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:10px; padding-bottom:20px; padding-top:10px; text-align:left; background-color:#FFF; border:solid thin #ddd; overflow:hidden; ">
    <!--<marquee behavior="slide" direction="down" scrolldelay="10" style="padding-top:0px;">-->
	<div style="overflow:hidden;">
	<xsl:for-each select="news-entry">
    <xsl:if test="position() &lt; 4">
        <a target="_blank">
        	<xsl:attribute name="href">
        		<xsl:text>https://benthamscience.com/press-releases/</xsl:text><xsl:value-of select="news-id"/><xsl:text>/</xsl:text>
        	</xsl:attribute>
        	<h2 class="bentham_home"><xsl:apply-templates select="news-title" /></h2>
        </a>
        <em><xsl:text> (</xsl:text><xsl:value-of select="news-history/publication-date/month" /><xsl:text> </xsl:text>
            <xsl:value-of select="news-history/publication-date/day" /><xsl:text>, </xsl:text>
        <xsl:value-of select="news-history/publication-date/year" /><xsl:text>)</xsl:text></em>
        <br />
        <div class="sharethis-inline-share-buttons" style="padding-top:5px;">
            <xsl:attribute name="data-url">
                <xsl:text>https://benthamscience.com/press-releases/</xsl:text><xsl:value-of select="news-id"/><xsl:text>/</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="data-title">
                <xsl:apply-templates select="news-title" />
            </xsl:attribute>
        </div>
        <!--<xsl:apply-templates select="news-text" />-->
        <hr />
        </xsl:if>
    </xsl:for-each>
    <!--</marquee>-->
    </div>
    </div>
    <xsl:if test="count(news-entry) &gt; 1">
            <div align="right" style="padding-top:10px;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>press-release-main.php</xsl:text>
                    </xsl:attribute>
                    view more Press Releases &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
        </div>
</xsl:template>

<xsl:template match="/news/news-body/news-list" mode="md">
	<div style=" padding:10px; text-align:justify; box-shadow: 0px 2px 10px #cccccc; height:700px;
    background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
    <h1 class="bentham_home">Bentham Press Release -- <i>NEWS</i></h1>
    <div style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:10px; padding-bottom:20px; padding-top:20px; text-align:left; background-color:#FFF; border:solid thin #ddd; overflow:hidden; ">
    <!--<marquee behavior="slide" direction="down" scrolldelay="10" style="padding-top:0px;">-->
	<div style="overflow:hidden;">
	<xsl:for-each select="news-entry">
    <xsl:if test="position() &lt; 4">
        <a target="_blank">
        	<xsl:attribute name="href">
        		<xsl:text>../../../../../press-releases/</xsl:text><xsl:value-of select="news-id"/><xsl:text>/</xsl:text>
        	</xsl:attribute>
        	<h2 class="bentham_home"><xsl:apply-templates select="news-title" /></h2>
        </a>
        <em><xsl:text> (</xsl:text><xsl:value-of select="news-history/publication-date/month" /><xsl:text> </xsl:text>
            <xsl:value-of select="news-history/publication-date/day" /><xsl:text>, </xsl:text>
        <xsl:value-of select="news-history/publication-date/year" /><xsl:text>)</xsl:text></em>
        <br />
        <div class="sharethis-inline-share-buttons" style="padding-top:5px;">
            <xsl:attribute name="data-url">
                <xsl:text>https://benthamscience.com/press-releases/</xsl:text><xsl:value-of select="news-id"/><xsl:text>/</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="data-title">
                <xsl:apply-templates select="news-title" />
            </xsl:attribute>
        </div>

        <!--<xsl:apply-templates select="news-text" />-->
        <hr />
        </xsl:if>
    </xsl:for-each>
    <!--</marquee>-->
    </div>
    </div>
    <xsl:if test="count(news-entry) &gt; 1">
            <div align="right" style="padding-top:10px;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>press-release-main.php</xsl:text>
                    </xsl:attribute>
                    view more Press Releases &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
        </div>
</xsl:template>

<xsl:template match="sub">
		<sub>
			<xsl:apply-templates/>
		</sub>
	</xsl:template>

	<xsl:template match="sup">
		<sup>
			<xsl:apply-templates/>
		</sup>
	</xsl:template>

<xsl:template match="news-text">
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="ext-link | uri ">
		<xsl:choose>
			<xsl:when test="@xlink:href">
				<a target="xrefwindow" >
					<xsl:call-template name="make-href"/>
					<xsl:call-template name="make-id"/>
					<xsl:apply-templates/>
				</a>
			</xsl:when>
			<xsl:otherwise>
				<span class="capture-id">
					<xsl:call-template name="make-id"/>
					<xsl:apply-templates/>
				</span>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

<xsl:template match="p">
		<xsl:choose>
			<xsl:when test="parent::list-item">
				<xsl:apply-templates/>
				<xsl:if test="following-sibling::p">
					<br/>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<p>
					<xsl:call-template name="make-id"/>
					<xsl:apply-templates/>
				</p>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

<xsl:template name="nl-1">
		<xsl:text>&#xA;</xsl:text>
	</xsl:template>

	<xsl:template name="nl-2">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
	</xsl:template>


<xsl:template name="make-id">
		<xsl:if test="@id">
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>






	<xsl:template name="make-href">
		<xsl:if test="@xlink:href">
			<xsl:attribute name="href">
				<xsl:value-of select="@xlink:href"/>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>


	

	
	
	
    
    <xsl:template match="email" mode="front">
		<xsl:choose>
			<xsl:when test="@xlink:href">
				<a>
					<xsl:call-template name="make-href"/>
					<span class="gen">
						<xsl:text>Email: </xsl:text>
					</span>
					<xsl:apply-templates/>
				</a>
			</xsl:when>
			<xsl:otherwise>
				<span class="gen">
					<xsl:text>Email: </xsl:text>
				</span>
				<xsl:apply-templates/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

<xsl:template match="/new-journal/new-journal-list" mode="full">
    <xsl:variable name="yr" select="$year_id"/>
    <xsl:if test="@journal-list-year = $yr+1">
    <div style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:20px; text-align:justify; box-shadow: 0px 2px 10px #cccccc; overflow:hidden; height:700px;">
    <h1 class="bentham_home">New Journals by Bentham Science</h1>
    
	<xsl:for-each select="journal-entry">
    	
            <xsl:variable name="jid">journal-meta/<xsl:value-of select="."/></xsl:variable>
            <xsl:if test="position() &lt; 4">
            <div style="overflow:hidden;">
                	<div style="float: left; overflow:hidden; width:120px;">
                        <img width="100">
                            <xsl:attribute name="src">
                                <xsl:text>journal-cover/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-cover-image"/>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div style="overflow:hidden; padding:10px; padding-left:0px; text-align:left;">
                    
                        <a target="_blank">
                            <xsl:attribute name="href">
                                <xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/</xsl:text>
                            </xsl:attribute>
                            <h2 class="bentham_home"><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-title" /></h2>
                        </a>
                        <br />
                        <xsl:apply-templates select="document($jid)//journal/journal-front/journal-meta/journal-issn-list/journal-issn" />
						<br />
						<div style="padding-bottom:5px;">
                    	<a target="_parent" class="btn btn-primary">
                            <xsl:attribute name="href">
                                <xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/submit-abstracts-online/</xsl:text>
                            </xsl:attribute>
                            <xsl:text>Submit Abstract Online</xsl:text>
                        </a>
                        </div>
					</div>
                        

                        
                        
                    </div>

						<br />
        
		</xsl:if>
	</xsl:for-each>
    
    <xsl:if test="count(journal-entry) &gt; 3">
            <div align="right">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>new-journals/</xsl:text><xsl:value-of select="$yr+1"/><xsl:text>/</xsl:text>
                    </xsl:attribute>
                    view more Journals &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
    </div>
    </xsl:if>
</xsl:template>

<xsl:template match="/new-journal/new-journal-list" mode="full-md">
    <xsl:variable name="yr" select="$year_id"/>
    <xsl:if test="@journal-list-year = $yr+1">
    <div style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:20px; text-align:justify; box-shadow: 0px 2px 10px #cccccc; overflow:hidden; height:700px;">
    <h1 class="bentham_home">New Journals by Bentham Science</h1>
    
	<xsl:for-each select="journal-entry">
    	
            <xsl:variable name="jid">journal-meta/<xsl:value-of select="."/></xsl:variable>
            <xsl:if test="position() &lt; 4">
            <div style="overflow:hidden;">
                	<div style="float: left; overflow:hidden; width:120px;">
                        <img width="100">
                            <xsl:attribute name="src">
                                <xsl:text>journal-cover/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-cover-image"/>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div style="overflow:hidden; padding:10px; padding-left:0px; text-align:left;">
                    
                        <a target="_blank">
                            <xsl:attribute name="href">
                                <xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/</xsl:text>
                            </xsl:attribute>
                            <h2 class="bentham_home"><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-title" /></h2>
                        </a>
                        <br />
                        <xsl:apply-templates select="document($jid)//journal/journal-front/journal-meta/journal-issn-list/journal-issn" />
						<br />
						<div style="padding-bottom:5px;">
                    	<a target="_parent" class="btn btn-primary btn-sm">
                            <xsl:attribute name="href">
                                <xsl:text>../../../../../../../../../journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/submit-abstracts-online/</xsl:text>
                            </xsl:attribute>
                            <xsl:text>Submit Abstract Online</xsl:text>
                        </a>
                        </div>
					</div>
                        

                        
                        
                    </div>

                    <br />
        
		</xsl:if>
	</xsl:for-each>
    
    <xsl:if test="count(journal-entry) &gt; 3">
            <div align="right">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>new-journals/</xsl:text><xsl:value-of select="$yr+1"/><xsl:text>/</xsl:text>
                    </xsl:attribute>
                    view more Journals &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
    </div>
    </xsl:if>
</xsl:template>

<xsl:template match="/journal/journal-front/journal-meta/journal-issn-list/journal-issn">
    	<xsl:choose>
			<xsl:when test="@issn-type='online'">
            	<strong>ISSN: <xsl:value-of select="."/> (Online)</strong><br />
			</xsl:when>
            <xsl:when test="@issn-type='print'">
				<strong>ISSN: <xsl:value-of select="."/> (Print)</strong><br />
			</xsl:when>
		</xsl:choose>
    </xsl:template>
    
<xsl:template match="/high-impact-factor/high-impact-factor-body/journal-list" mode="full">
    <div style="padding:20px; text-align:justify; box-shadow: 0px 2px 10px #cccccc; overflow:hidden;">
    <h1 class="bentham_home">Journals Impacting Science</h1>
    
	<xsl:for-each select="journal-entry">
    	<xsl:if test="position() &lt; 4">
            <xsl:variable name="jid">journal-meta/<xsl:value-of select="."/></xsl:variable>
                <div style="overflow:hidden;">
                	<div style="float: left; overflow:hidden; width:120px;">
                        <img width="100">
                            <xsl:attribute name="src">
                                <xsl:text>journal-cover/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-cover-image"/>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div style="overflow:hidden;  padding:10px; padding-left:0px; text-align:left;">
                    
                        <a target="_blank">
                            <xsl:attribute name="href">
                                <xsl:text>https://benthamscience.com/journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/</xsl:text>
                            </xsl:attribute>
                            <h2 class="bentham_home"><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-title" /></h2>
                        </a>
                        <br />
						<br />
						<div style="padding-bottom:5px;">
                    	<a target="_parent" class="btn btn-primary">
                            <xsl:attribute name="href">
                                <xsl:text>https://benthamscience.com/journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/subscribe-to-this-journal/</xsl:text>
                            </xsl:attribute>
                            <xsl:text>Subscribe</xsl:text>
                        </a>
                        </div>
                        <br />



                        <xsl:if test="document($jid)/journal/journal-front/journal-meta/impact-factor">
                            <h2 class="bentham_home"><xsl:text>Impact Factor</xsl:text></h2><b><xsl:text>: </xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/impact-factor" /></b><br />
                        </xsl:if>
                        <xsl:if test="document($jid)/journal/journal-front/journal-meta/five-year-impact-factor">
                            <b><xsl:text>5-Year Impact Factor: </xsl:text>
                            <xsl:value-of select="document($jid)/journal/journal-front/journal-meta/five-year-impact-factor" /></b><br />
						</xsl:if>
                        <br />

                        
                        
                    </div>
            </div>
        
        
        </xsl:if>
	</xsl:for-each>
    
        <xsl:if test="count(journal-entry) &gt; 3">
            <div align="right">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/journal/journals-impacting-science.php</xsl:text>
                    </xsl:attribute>
                    view more Journals &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
    </div>
    
</xsl:template>


<xsl:template match="/high-impact-factor/high-impact-factor-body/journal-list" mode="full-md">
    <div style="-webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px; padding:20px; text-align:justify; box-shadow: 0px 2px 10px #cccccc; overflow:hidden; height:700px;">
    <h1 class="bentham_home">Journals Impacting Science</h1>
    
	<xsl:for-each select="journal-entry">
    	<xsl:if test="position() &lt; 4">
            <xsl:variable name="jid">journal-meta/<xsl:value-of select="."/></xsl:variable>
                <div style="overflow:hidden;">
                	<div style="float: left; overflow:hidden; width:120px;">
                        <img width="100">
                            <xsl:attribute name="src">
                                <xsl:text>journal-cover/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-cover-image"/>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div style="overflow:hidden;  padding:10px; padding-left:0px; text-align:left;">
                    
                        <a target="_blank">
                            <xsl:attribute name="href">
                                <xsl:text>https://benthamscience.com/journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/</xsl:text>
                            </xsl:attribute>
                            <h2 class="bentham_home"><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-title" /></h2>
                        </a>
                        <br />
						<br />
						<div style="padding-bottom:5px;">
                    	<a target="_parent" class="btn btn-primary btn-sm">
                            <xsl:attribute name="href">
                                <xsl:text>https://benthamscience.com/journals/</xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/journal-seo-title"/><xsl:text>/subscribe-to-this-journal/</xsl:text>
                            </xsl:attribute>
                            <xsl:text>Subscribe</xsl:text>
                        </a>
                        </div>
                        <br />



                        <xsl:if test="document($jid)/journal/journal-front/journal-meta/impact-factor">
                            <h2 class="bentham_home"><xsl:text>Impact Factor</xsl:text></h2><b><xsl:text>: </xsl:text><xsl:value-of select="document($jid)/journal/journal-front/journal-meta/impact-factor" /></b><br />
                        </xsl:if>
                        <xsl:if test="document($jid)/journal/journal-front/journal-meta/five-year-impact-factor">
                            <b><xsl:text>5-Year Impact Factor: </xsl:text>
                            <xsl:value-of select="document($jid)/journal/journal-front/journal-meta/five-year-impact-factor" /></b><br />
						</xsl:if>
                        <br />

                        
                        
                    </div>
            </div>
        
        
        </xsl:if>
	</xsl:for-each>
    
    <xsl:if test="count(journal-entry) &gt; 3">
            <div align="right">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/journal/journals-impacting-science.php</xsl:text>
                    </xsl:attribute>
                    view more Journals &#x003E;&#x003E;</a>
                </span>
            </div>
        </xsl:if>
    </div>
    
</xsl:template>

<xsl:template match="/journal/journal-front/journal-meta/journal-issn-list/journal-issn">
    	<xsl:choose>
			<xsl:when test="@issn-type='online'">
            	<strong>ISSN: <xsl:value-of select="."/> (Online)</strong><br />
			</xsl:when>
            <xsl:when test="@issn-type='print'">
				<strong>ISSN: <xsl:value-of select="."/> (Print)</strong><br />
			</xsl:when>
		</xsl:choose>
    </xsl:template>

<xsl:template match="/endorsement/endorsement-body/endorsement-list">
<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden; height:850px;">
<h1 class="bentham_home">Endorsements from Nobel Laureates</h1>
    	<div style="padding:10px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
			<xsl:for-each select="display-quote">
	        	<xsl:if test="position() &lt; 4">
                    <div style="overflow:hidden;" >
                        <div style="float:left;overflow:hidden;width:80px;">
                            <img border="0" height="90">
                                <xsl:attribute name="src">
                                    <xsl:text>endorsements-images/</xsl:text><xsl:value-of select="display-quote-image" />
                                </xsl:attribute>
                            </img>
                        </div>
                        <div style="overflow:hidden; text-align:left;">
                            <h2 class="bentham_home"><xsl:value-of select="attrib" /></h2>
                            <br />
                            <em><xsl:value-of select="aff" /></em>
                        </div>
                        <em><xsl:apply-templates select="p" /></em>
                    </div>
                	<hr/>
                </xsl:if>
    	</xsl:for-each>
        </div>
        <br />
            <div align="right" style="overflow:hidden;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/endorsements-main.php</xsl:text>
                    </xsl:attribute>
                    view Endorsements &#x003E;&#x003E;</a>
                </span>
            </div>
        
        
        </div>
    </xsl:template>
    
    
    <xsl:template match="/endorsement/endorsement-body/endorsement-list" mode="md">
<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden; height:1000px;">
<h1 class="bentham_home">Endorsements from Nobel Laureates</h1>
    	<div style="padding:10px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
			<xsl:for-each select="display-quote">
	        	<xsl:if test="position() &lt; 4">
                    <div style="overflow:hidden;" >
                        <div style="float:left;overflow:hidden;width:80px;">
                            <img border="0" height="80">
                                <xsl:attribute name="src">
                                    <xsl:text>endorsements-images/</xsl:text><xsl:value-of select="display-quote-image" />
                                </xsl:attribute>
                            </img>
                        </div>
                        <div style="overflow:hidden; text-align:left;">
                            <h2 class="bentham_home"><xsl:value-of select="attrib" /></h2>
                            <br />
                            <em><xsl:value-of select="aff" /></em>
                        </div>
                        <em><xsl:apply-templates select="p" /></em>
                    </div>
                	<hr/>
                </xsl:if>
    	</xsl:for-each>
        </div>
        <br />
            <div align="right" style="overflow:hidden;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/endorsements-main.php</xsl:text>
                    </xsl:attribute>
                    view Endorsements &#x003E;&#x003E;</a>
                </span>
            </div>
        
        
        </div>
    </xsl:template>
    
    <xsl:template match="/endorsement/endorsement-body/endorsement-list" mode="sm">
<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden;">
<h1 class="bentham_home">Endorsements from Nobel Laureates</h1>
    	<div style="padding:10px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
			<xsl:for-each select="display-quote">
	        	<xsl:if test="position() &lt; 4">
                    <div style="overflow:hidden;" >
                        <div style="float:left;overflow:hidden;width:80px;">
                            <img border="0" height="80">
                                <xsl:attribute name="src">
                                    <xsl:text>endorsements-images/</xsl:text><xsl:value-of select="display-quote-image" />
                                </xsl:attribute>
                            </img>
                        </div>
                        <div style="overflow:hidden; text-align:left;">
                            <h2 class="bentham_home"><xsl:value-of select="attrib" /></h2>
                            <br />
                            <em><xsl:value-of select="aff" /></em>
                        </div>
                        <em><xsl:apply-templates select="p" /></em>
                    </div>
                	<hr/>
                </xsl:if>
    	</xsl:for-each>
        </div>
        <br />
            <div align="right" style="overflow:hidden;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/endorsements-main.php</xsl:text>
                    </xsl:attribute>
                    view Endorsements &#x003E;&#x003E;</a>
                </span>
            </div>
        
        
        </div>
    </xsl:template>

 
<xsl:template match="/endorsement/endorsement-body/endorsement-list" mode="xs">
<div style="box-shadow: 0px 2px 10px #cccccc; padding:10px; overflow:hidden;">
<h1 class="bentham_home">Endorsements from Nobel Laureates</h1>
    	<div style="padding:10px; background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #ffffff 0%, #f6f6f6 47%, #ededed 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(47%,#f6f6f6), color-stop(100%,#ededed)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffffff 0%,#f6f6f6 47%,#ededed 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
overflow:hidden; ">
			<xsl:for-each select="display-quote">
	        	<xsl:if test="position() &lt; 4">
                    <div style="overflow:hidden;" >
                        <div style="float:left;overflow:hidden;width:80px;">
                            <img border="0" height="80">
                                <xsl:attribute name="src">
                                    <xsl:text>endorsements-images/</xsl:text><xsl:value-of select="display-quote-image" />
                                </xsl:attribute>
                            </img>
                        </div>
                        <div style="overflow:hidden; text-align:left;">
                            <h2 class="bentham_home"><xsl:value-of select="attrib" /></h2>
                            <br />
                            <em><xsl:value-of select="aff" /></em>
                        </div>
                        <em><xsl:apply-templates select="p" /></em>
                    </div>
                	<hr/>
                </xsl:if>
    	</xsl:for-each>
        </div>
        <br />
            <div align="right" style="overflow:hidden;">
                <span style="color:#01599a; text-decoration:underline;">
                <a>
                    <xsl:attribute name="href">
                    <xsl:text>https://benthamscience.com/endorsements-main.php</xsl:text>
                    </xsl:attribute>
                    view Endorsements &#x003E;&#x003E;</a>
                </span>
            </div>
        
        
        </div>
    </xsl:template>
    


<xsl:template match="/menu/menu-list" mode="social">
		<xsl:choose>
			<xsl:when test="@menu-list-type='social'">
            	
                <xsl:for-each select="menu-item">
                
                <a data-dir="v" data-offsets="8,0" style="color: #01599a;">
                <xsl:attribute name="href">
                	<xsl:value-of select="menu-link" />
                </xsl:attribute>
                <xsl:attribute name="data-flexmenu">
                	<xsl:value-of select="menu-id" />
                </xsl:attribute>
                <xsl:value-of select="menu-title" />
                </a>
                <ul class="flexdropdownmenu">
                <xsl:attribute name="id">
                	<xsl:value-of select="menu-id" />
                </xsl:attribute>
                	<xsl:for-each select="sub-menu-item">
                            <li>
                                <a>
                                    <xsl:choose>
                                        <xsl:when test="menu-link">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="menu-link" />
                                            </xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="href">
                                                <xsl:text>#</xsl:text>
                                            </xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                   <xsl:value-of select="menu-title" />
                                </a>
                            </li>
                            </xsl:for-each>
                            </ul>
                </xsl:for-each>
                
			</xsl:when>
		</xsl:choose>
    </xsl:template>

<xsl:template match="/disease">
	<div style="padding-left:15px; padding-right:15px; padding-top:5px; float:left; overflow:hidden;">
        <a data-dir="v" data-offsets="8,0" data-flexmenu="ARTDIS" style="color: #01599a;" href="#">
        <b>Articles by Disease</b>
        </a>
    </div>
    <xsl:apply-templates select="ul" mode="flexdropdownmenu"/>
</xsl:template>

<xsl:template match="ul" mode="flexdropdownmenu">
	<ul class="flexdropdownmenu" id="ARTDIS">
    	<xsl:apply-templates/>
   	</ul>
</xsl:template>

<xsl:template match="ul">
	<ul id="ADD">
    	<xsl:apply-templates/>
   	</ul>
</xsl:template>

<xsl:template match="li">
	<li>
    	<xsl:apply-templates/>
   	</li>
</xsl:template>

<xsl:template match="a">
	<a href="{@href}">
        <xsl:choose>
            <xsl:when test="*|text()">
                <xsl:apply-templates/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@href"/>
            </xsl:otherwise>
        </xsl:choose>
    </a>
</xsl:template>

<xsl:template match="/menu/menu-list" mode="main-menu-3">
<nav class="navbar navbar-inverse" role="navigation">
                <div class="container-fluid">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                  </div>

                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeInDown fadeInRight fadeInUp fadeInLeft">
                    <ul class="nav navbar-nav">
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdownhover-bottom" role="menu">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                          <li class="divider"></li>
                          <li><a href="#">One more separated link</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown 1 <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdownhover-bottom" role="menu">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li class="dropdown">
                            <a href="#">Another dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdownhover-right">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                              <li class="divider"></li>
                              <li><a href="#">One more separated link</a></li>
                            </ul>
                          </li>
                          <li class="dropdown">
                            <a href="#">Another dropdown 2 <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdownhover-right" style="bottom: auto; top: -65px;">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li class="dropdown">
                                <a href="#">Another dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                  <li><a href="#">Action</a></li>
                                  <li><a href="#">Another action</a></li>
                                  <li><a href="#">Something else here</a></li>
                                  <li class="divider"></li>
                                  <li><a href="#">Separated link</a></li>
                                  <li class="divider"></li>
                                  <li><a href="#">One more separated link</a></li>
                                </ul>
                              </li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                              <li class="divider"></li>
                              <li><a href="#">One more separated link</a></li>
                            </ul>
                          </li>
                          <li><a href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                          <li class="divider"></li>
                          <li><a href="#">One more separated link</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown 2 <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdownhover-bottom" role="menu">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                          <li class="divider"></li>
                          <li><a href="#">One more separated link</a></li>
                        </ul>
                      </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdownhover-bottom" role="menu">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li class="dropdown">
                            <a href="#">Another dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdownhover-left">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                              <li class="divider"></li>
                              <li><a href="#">One more separated link</a></li>
                            </ul>
                          </li>
                          <li class="dropdown">
                            <a href="#">Another dropdown 2 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li class="dropdown">
                                <a href="#">Another dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                  <li><a href="#">Action</a></li>
                                  <li><a href="#">Another action</a></li>
                                  <li><a href="#">Something else here</a></li>
                                  <li class="divider"></li>
                                  <li><a href="#">Separated link</a></li>
                                  <li class="divider"></li>
                                  <li><a href="#">One more separated link</a></li>
                                </ul>
                              </li>
                              <li><a href="#">Something else here</a></li>
                              <li class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                              <li class="divider"></li>
                              <li><a href="#">One more separated link</a></li>
                            </ul>
                          </li>
                          <li><a href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                          <li class="divider"></li>
                          <li><a href="#">One more separated link</a></li>
                        </ul>
                      </li>
                    </ul>
                  </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
              </nav>
</xsl:template>


<xsl:template match="/menu/menu-list" mode="main-menu">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	<xsl:for-each select="menu-item">
        	<li>
            	<xsl:choose>
                    <xsl:when test="position()=1 and not(sub-menu-item)">
                        <xsl:attribute name="class">
                            <xsl:text>active</xsl:text>
                        </xsl:attribute>
                    </xsl:when>
                    <xsl:when test="not(position()=1) and sub-menu-item">
                        <xsl:attribute name="class">
                            <xsl:text>dropdown</xsl:text>
                        </xsl:attribute>
                    </xsl:when>
                    <xsl:when test="position()=1 and sub-menu-item">
                        <xsl:attribute name="class">
                            <xsl:text>active dropdown</xsl:text>
                        </xsl:attribute>
                    </xsl:when>
				</xsl:choose>                
                <xsl:choose>
                    <xsl:when test="sub-menu-item">
                        <a>
                            <xsl:attribute name="class">
                                <xsl:text>dropdown-toggle</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="data-toggle">
                                <xsl:text>dropdown</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="role">
                                <xsl:text>button</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="aria-haspopup">
                                <xsl:text>true</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="aria-expanded">
                                <xsl:text>false</xsl:text>
                            </xsl:attribute>
                        
                            <xsl:attribute name="href">
                                <xsl:value-of select="menu-link"/>
                            </xsl:attribute>
                            <xsl:value-of select="menu-title"/> <span class="caret"/>
                        </a>
                        <ul class="dropdown-menu">
                            <xsl:for-each select="sub-menu-item">
                                <li>
                                	<xsl:if test="sub-menu-extension">
                                    	<xsl:attribute name="class">
                                            <xsl:text>dropdown-submenu</xsl:text>
                                        </xsl:attribute>
                                    </xsl:if>
                                    <a>
                                    	<xsl:if test="sub-menu-extension">
                                            <xsl:attribute name="tabindex">
                                                <xsl:text>-1</xsl:text>
                                            </xsl:attribute>
                                        </xsl:if>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="menu-link"/>
                                        </xsl:attribute>
                                        <xsl:value-of select="menu-title"/>
                                    </a>
                                    <xsl:if test="sub-menu-extension">
                                        <ul class="dropdown-menu">
                                        	<xsl:for-each select="sub-menu-extension">
                                            	<li>
                                                    <a>
                                                    	<xsl:if test="position()=1">
                                                            <xsl:attribute name="tabindex">
                                                                <xsl:text>-1</xsl:text>
                                                            </xsl:attribute>
                                                        </xsl:if>
                                                        <xsl:attribute name="href">
                                                            <xsl:value-of select="menu-link"/>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="menu-title"/>
                                                    </a>
                                                </li>
                                        	</xsl:for-each>
                                        </ul>
                                    </xsl:if>
                                </li>
                                <xsl:if test="menu-divider">
                                	<li class="divider"></li>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </xsl:when>
                    <xsl:otherwise>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="menu-link"/>
                            </xsl:attribute>
                            <xsl:value-of select="menu-title"/>
                        </a>
                    </xsl:otherwise>
                </xsl:choose>
            </li>
        </xsl:for-each>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</xsl:template>
    
    
    <xsl:template match="/menu/menu-list" mode="main-menu-old">
		<xsl:choose>
			<xsl:when test="@menu-list-type='main'">
            	<ul id="menu" class="menu">
                <xsl:for-each select="menu-item">
<!--                    <img src="../images/spacer.jpg" width="5" height="30" style="margin-bottom:-10px;" /> -->
                    <xsl:choose>
                    	<xsl:when test="sub-menu-item">
                            <li>
                                <a>
                                    <xsl:choose>
                                        <xsl:when test="menu-link">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="menu-link" />
                                            </xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="href">
                                                <xsl:text>#</xsl:text>
                                            </xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                        <xsl:value-of select="menu-title" />
                                </a>
                            
                            <ul>
                        	<xsl:for-each select="sub-menu-item">
                            	<xsl:choose>
                                        <xsl:when test="sub-menu-extension">
                                        	<li class="submenu">
                                                <a>
                                                    <xsl:choose>
                                                        <xsl:when test="menu-link">
                                                            <xsl:attribute name="href">
                                                                <xsl:value-of select="menu-link" />
                                                            </xsl:attribute>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:attribute name="href">
                                                                <xsl:text>#</xsl:text>
                                                            </xsl:attribute>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                    <xsl:value-of select="menu-title" />
                                                </a>
                                                <ul>
                                                <xsl:for-each select="sub-menu-extension">
                                                	<xsl:choose>
                                                        <xsl:when test="position()=1">
                                                        	<li class="noborder">
                                                            <a>
                                                            <xsl:choose>
                                                                <xsl:when test="menu-link">
                                                                    <xsl:attribute name="href">
                                                                        <xsl:value-of select="menu-link" />
                                                                    </xsl:attribute>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <xsl:attribute name="href">
                                                                        <xsl:text>#</xsl:text>
                                                                    </xsl:attribute>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                            <xsl:value-of select="menu-title" />
                                                            </a>
                                                            </li>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                        	<li>
                                                            <a>
                                                            <xsl:choose>
                                                                <xsl:when test="menu-link">
                                                                    <xsl:attribute name="href">
                                                                        <xsl:value-of select="menu-link" />
                                                                    </xsl:attribute>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <xsl:attribute name="href">
                                                                        <xsl:text>#</xsl:text>
                                                                    </xsl:attribute>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                            <xsl:value-of select="menu-title" />
                                                            </a>
                                                            </li>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </xsl:for-each>
                                                </ul>
											</li>
                                        </xsl:when>
									<xsl:otherwise>
                            	<li>
                                    <a>
                                        <xsl:choose>
                                            <xsl:when test="menu-link">
                                                <xsl:attribute name="href">
                                                    <xsl:value-of select="menu-link" />
                                                </xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:attribute name="href">
                                                    <xsl:text>#</xsl:text>
                                                </xsl:attribute>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                            <xsl:value-of select="menu-title" />
                                    </a>
                                </li>
                                </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each>
                            </ul>
                            </li>
                        </xsl:when>
                    	<xsl:otherwise>
                        	<li class="nodiv">
                            	<a>
                                    <xsl:choose>
                                        <xsl:when test="menu-link">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="menu-link" />
                                            </xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="href">
                                                <xsl:text>#</xsl:text>
                                            </xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                        <xsl:value-of select="menu-title" />

                                </a>
                            </li>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                </ul>
			</xsl:when>
		</xsl:choose>
    </xsl:template>
    
    
    <xsl:template match="table-wrap">
		<div class="capture-id">
			<xsl:call-template name="make-id"/>
			
			<xsl:apply-templates/>
			<br/>
		</div>
		<xsl:call-template name="nl-1"/>
	</xsl:template>


	


	<xsl:template match="table">
		<table width="100%" class="bm">

			<xsl:if test="@frame">
				<xsl:attribute name="frame">
					<xsl:value-of select="@frame"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@rules">
				<xsl:attribute name="rules">
					<xsl:value-of select="@rules"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:call-template name="nl-1"/>

			<xsl:apply-templates/>
			<xsl:call-template name="nl-1"/>
		</table>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

	<xsl:template match="thead">
		<thead>
			<xsl:call-template name="make-id"/>
			<xsl:apply-templates/>
		</thead>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

	<xsl:template match="th">
		<th>
			<xsl:call-template name="make-id"/>
			<xsl:for-each select="@*">
				<xsl:attribute name="{name(.)}">
					<xsl:value-of select="."/>
				</xsl:attribute>
			</xsl:for-each>
			<xsl:apply-templates/>
		</th>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

	<xsl:template match="tr">
		<tr>
			<xsl:call-template name="make-id"/>
			<xsl:apply-templates/>
		</tr>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

	<xsl:template match="td">
		<td valign="top">
			<xsl:call-template name="make-id"/>
			<xsl:for-each select="@*">
				<xsl:attribute name="{name(.)}">
					<xsl:value-of select="."/>
				</xsl:attribute>
			</xsl:for-each>
			<xsl:apply-templates/>
		</td>
		<xsl:call-template name="nl-1"/>
	</xsl:template>

	<xsl:template match="tfoot | table-wrap-foot">
		<div class="capture-id">
			<xsl:call-template name="make-id"/>
			<xsl:apply-templates/>
		</div>
		<xsl:call-template name="nl-1"/>
	</xsl:template>
    
    
</xsl:stylesheet>