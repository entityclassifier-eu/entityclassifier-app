<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="Contact" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="contact" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2" style="margin-top: -20px;">
                    <div class="contact-left">
                        <h1>Contact info</h1>
                        <p>
                            Should you have any comment, question or recommendation please do not hesitate to contact us. 
                        </p>
                    </div>
                    <div class="contact-right">
                        <h3>Milan Dojchinovski</h3>
                        <p style="margin-top: -9px;">
                            <a href="http://www.vse.cz/english/"><span>University of Economics, Prague, Czech Republic</span></a>
                            </br>
                            <a href="http://www.vse.cz/english/basic_information_fis.php"><span>Faculty of Informatics and Statistics</span></a>
                            </br>
                            <span>email: milan.dojchinovski-at-vse.cz</span>
                            </br>
                            <a href="http://dojchinovski.mk" style="color: steelblue;"><span>http://dojchinovski.mk</span></a>
                        <p style="margin-top: -9px;">
                        <h3>Tomas Kliegr</h3>
                        <p style="margin-top: -9px;">
                            <a href="http://www.vse.cz/english/"><span>University of Economics, Prague, Czech Republic</span></a>
                            </br>
                            <a href="http://www.vse.cz/english/basic_information_fis.php"><span>Faculty of Informatics and Statistics</span></a>
                            </br>
                            <span>email: tomas.kliegr-at-vse.cz</span>
                            </br>
                            <a href="http://kliegr.eu/" style="color: steelblue;"><span>http://kliegr.eu/</span></a>
                        <p style="margin-top: -9px;">
                    </div>
                    <div style="clear: both;">
                        <h3>Get your API key!</h3>
                        <p>API key is required to use the <a href="/thd/docs/">Web API</a> or the <a href="/thd/support-downloads/">light version of the GATE plugin</a>. To get an API key for FREE, just submit the form at: <a href="/thd/docs/#apikeyform">http://entityclassifier.eu/thd/docs/#apikeyform</a></p>
                    </div>
                </div>
                <div class="sub-main2" style="margin-top: -20px;">
                    <div class="contact-left">
                        <h1>Acknowledgments</h1>
                        <p>
                            The development of this software is supported by the <a href="http://www.linkedtv.eu" style="color: steelblue;">LinkedTV</a> and <a href="http://www.linkedtv.eu" style="color: steelblue;">LOD2</a> project.
                        </p>
                    </div>
                    <div class="contact-right" style="padding-top: 40px;">
                        <a href="http://www.linkedtv.eu"><img src="/thd/public/img/linkedTV-logo.jpg" alt="" style="height:100px; float:left;"></a>
                    <a href="http://lod2.eu/"><img src="/thd/public/img/lod2-logo.png" alt="" style="height:100px; margin-left: 30px;"></a>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />

    </body>
</html>
