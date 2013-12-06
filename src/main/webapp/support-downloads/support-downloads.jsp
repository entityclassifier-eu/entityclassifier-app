<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="THD Gate Plugin" />
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
                        <h2>Gate Plugin</h2>
                        <p>
                            In addition to the web interface and the web service, the GATE plugin
                            provides the third way to interface with THD. The plugin is provided
                            as <b>processing resource (PR)</b> for the <a href="http://gate.ac.uk">GATE platform</a>.
                        </p>
                        <p>
                            The GATE THDClientPR  submits a GATE document to the THD web service,
                            and adds the annotations from the THD response as GATE annotations in
                            the GATE document for use by other PRs. The entities appearing in the
                            document are thus  provided with DBpedia Ontology concepts and
                            resources. These annotation can be easily mapped to Wikipedia pages if
                            needed.
                        </p>
                        <p>
                            To load this PR, you need to put it to the GATE/plugins directory. In
                            order to use the THDClientPR , you will need to obtain a <a href="/thd/contact/">THD API key</a>. Provide your api key as an
                            configuration parameter when you use the THDClientPR in GATE. Additionally, various runtime parameters are available from the OpenCalais API, and
                            are named the same as in that <a href="/thd/docs/">API documentation</a>.
                        </p>
                        <ul>
                            <li>THDClientPR source code (<a href="http://ner.vse.cz/datasets/evaluation/tools/THDClientPR-src.zip">download</a>)</li>
                            <li>THDClientPR binary (<a href="http://ner.vse.cz/datasets/evaluation/tools/THDClientPR-bin.zip">download</a>)</li>
                        </ul>
                        <h2>Evaluation framework</h2>
                        <p>
                            This plugin is supplemented by a GATE-based <a href="http://ner.vse.cz/datasets/evaluation/">NER Evaluation framework</a>, a collection
                            of datasets and GATE plugins for benchmarking of THD against other
                            wikifiers.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />

    </body>
</html>
