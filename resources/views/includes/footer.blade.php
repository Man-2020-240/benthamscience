      <div class="row" style="padding-left:15px; padding-right:15px;">
            <div class="col-xs-12" style="border: solid; border-color: #CCC; border-width:thin; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;box-shadow: 0px 2px 10px #cccccc; padding:5px;">
                <div style="float:left; padding:5px; width:48%;">
                    <xsl:text>Webmaster Contact: </xsl:text><a>
                    <xsl:attribute name="href">
                        <xsl:text>mailto:</xsl:text> info@abc.net<xsl:value-of select="document('site-conf/publisher.xml')/publisher/webmaster-email"/>
                    </xsl:attribute>
                    <xsl:value-of select="document('site-conf/publisher.xml')/publisher/webmaster-email"/></a>
                </div>
                <div align="right" style="float:left; padding:5px; width:50%;">
                    <a href="terms-conditions.php">
                    <xsl:value-of select="document('site-conf/publisher.xml')/publisher/copyright-statement" disable-output-escaping="yes"/>
                    </a>
                    <xsl:text> | </xsl:text>
                    <a href="https://benthamscience.com/privacy-policy.php">Privacy Policy</a>
                </div>
            </div>
        </div>
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
    <script src="scripts/js/bootstrap.min.js"></script>
