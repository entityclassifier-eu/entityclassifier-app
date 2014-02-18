<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="REST API Docs" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="api" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2">
                    <h1 style="margin-top: -5px;">Documentation</h1>
                    <p style="font-weight: 100; font-size: 16px;">
                        Getting started with the EntityClassifier.eu is easy. Check out the documentation of the API <a href='/thd/docs/api/v1/' target='_blank'>version 1</a> and <a href='/thd/docs/api/v2/' target='_blank'>version 2 (recommended)</a>.  
                        You can use our API to perform the same NER tasks as our <a href="/thd">Web application</a> - named entity recognition, entity disambiguation and linking (using DBpedia URIs) or classification (with DBpedia and/or YAGO Ontology types).
                        <br/>
                        Even more, you can use our <a href='/thd/support-downloads/' target="_blank">GATE plugin</a> to process documents in the GATE text engineering framework.
                    </p>
                    <h3><a href='/thd/docs/api/v2/' target='_blank'>REST API version 2</a></h3>
                    <p>The most recent version of the REST API.</p>
                    <h3><a href='/thd/docs/api/v1/' target='_blank'>REST API version 1</a></h3>
                    <p>Version 1 of the REST API is still available. However, we recommend migration to version 2.</p>
                    <div style="clear: both; margin-top: 60px;">
                        <h3>Get your API key!</h3>
                        <p>API key is required to use the <a href="/thd/docs/">REST API</a> or the <a href="/thd/support-downloads/">GATE plugin</a>. Write to <a href='mailto:milan.dojchinovski@fit.cvut.cz?subject=API key request'>Milan Dojchinovski</a> to request own API key.</p>
                    </div>                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>
