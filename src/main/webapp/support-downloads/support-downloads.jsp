<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="THD Support" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="support" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2" style="margin-top: -20px;">
                    <h1>Support and Downloads</h1>
                    <div>
                        <hr>
                        <h2>Gate Plugins</h2>
                        <p>We have developed two plugins for the GATE framework. A <b>Light plugin</b> for our REST API and a <b>Stand Alone plugin</b> version which is not dependent on any external resources.</p>
                        <div class="alert alert-info"><strong>Heads up!</strong> If you use our plugins for scientific publication, please
                            <a href="http://www.dojchinovski.mk/public/data/ECMLPKDD2013-DojchinovskiK.bib">cite <img class="bibtex-icon" src="/thd/public/img/bibtex-icon.png"></a> our work:</br>
                            M. Dojchinovski and T. Kliegr. Entityclassifier.eu: Real-time classification of entities in text with Wikipedia. In H. Blockeel, K. Kersting, S. Nijssen, and F. Zelezny, (eds.) Machine Learning and Knowledge Discovery in Databases, vol. 8190 of Lecture Notes in Computer Science, pp. 654-658. Springer Berlin Heidelberg, 2013.
                        </div>
                        <h3>Entityclassifier.eu NER Light plugin</h3>
                        <p>
                            This is a GATE plugin for the Entityclassifier.eu NER REST API. You can use it perform Named Entity Recognition over English, German and Dutch written texts. It is a light version of the GATE plugin.
                            If you don't want to depend on the REST API you can use the stand-alone plugin version (see bellow).
                            The plugin is provided as <b>processing resource (PR)</b> for the <a href="http://gate.ac.uk">GATE platform</a>.</br>
                            To use this plugin you need your own API key. To request own API key, feel in the form at: <a href="/thd/docs/#apikeyform">http://entityclassifier.eu/thd/docs/#apikeyform</a></br>
                        </p>
                        <b>How to use is</b>                        
                            <ul>
                                <li>The plugin is available through our <b>GATE plugin repository</b> <a href="http://ner.vse.cz/GATE/gate-update-site.xml">http://ner.vse.cz/GATE/gate-update-site.xml</a>. Add it in your GATE application.</li>
                                <li>The <b>source code</b> and detailed <b>instructions</b> on how to use it are available at: <a href="https://github.com/KIZI/entityclassifier-gate-light-plugin">https://github.com/KIZI/entityclassifier-gate-light-plugin</a></li>
                            </ul>
                        </p>
                        <h3>Entityclassifier.eu NER Stand Alone plugin</h3>
                        <p>
                            This is a GATE stand-alone plugin for the Entityclassifier.eu NER system.
                            You can use it perform Named Entity Recognition over English, German and Dutch written texts.
                            All resources you need for entity spotting, disambiguation and classification are provided with the plugin.
                            If you want, you can use the light plugin version, which is communicating with our REST API endpoint.
                        </p>
                        <b>How to use is</b>                        
                            <ul>
                                <li>The plugin is available through our <b>GATE plugin repository</b> <a href="http://ner.vse.cz/GATE/gate-update-site.xml">http://ner.vse.cz/GATE/gate-update-site.xml</a>. Add it in your GATE application.</li>
                                <li>The <b>source code</b> and detailed <b>instructions</b> on how to use it are available at: <a href="https://github.com/KIZI/entityclassifier-gate-stand-alone-plugin">https://github.com/KIZI/entityclassifier-gate-stand-alone-plugin</a></li>
                            </ul>
                        </p>
                        <hr>
                        <h2>Evaluation framework</h2>
                        <p>
                            This plugin is supplemented by a GATE-based <a href="http://ner.vse.cz/datasets/evaluation/">NER Evaluation framework</a>, a collection
                            of datasets and GATE plugins for benchmarking of THD against other
                            wikifiers.
                        </p>
                        </br>
                        </br>                        
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />

    </body>
</html>
