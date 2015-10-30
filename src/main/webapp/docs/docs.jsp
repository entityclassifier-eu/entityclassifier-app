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
                        Getting started with the EntityClassifier.eu is easy. Check out the documentation of the API <a href='/thd/docs/api/v1/extraction/'>version 1</a> and <a href='/thd/docs/api/v2/extraction/'>version 2 (recommended)</a>.  
                        You can use our API to perform the same NER tasks as our <a href="/thd">Web application</a> - named entity recognition, entity disambiguation and linking (using DBpedia URIs) or classification (with DBpedia and/or YAGO Ontology types).
                        <br/>
                        Even more, you can use our <a href='/thd/support-downloads/'>GATE plugin</a> to process documents in the GATE text engineering framework.
                    </p>
                    <h3>REST API version 2.0</a></h3>
                    <p>The most recent version of the REST API.</p>
                    <ul>
                        <li><a href='/thd/docs/api/v2/extraction/'>Entity Extraction API v2.0</a> - send text and get ranked list of entities linked and classified with DBpedia.</li>
                        <li><a href='/thd/docs/api/v2/classification/'>Entity Classification API v2.0</a> - classify an entity recognized with a DBpedia URI.</li>
                    </ul>
                    <h3>REST API version 1.0 (deprecated)</h3>
                    <p>Version 1.0 of the REST API is still available. However, we recommend migration to version 2.0.</p>
                    <ul>
                        <li><a href='/thd/docs/api/v1/extraction/'>Entity Extraction API v1.0</a> - send text and get list of entities linked and classified with DBpedia.</li>
                    </ul>

                    <h2>API Rate Limits</h2>
                    <p>All API requests are subject to rate limits applied to your API key. We apply rate-limits on a 24 hours basis - 1 day windows. With the FREE option you can make up to <b>10.000 requests per day</b>. If you need larger quota feel free to contact <a href='mailto:milan.dojchinovski@fit.cvut.cz?subject=API rate limit'>us</a>.</br>
                        You can check you API rate limits by submitting <tt>GET</tt> request at <a href="http://entityclassifier.eu/thd/api/v2/consumers/{apikey}">http://entityclassifier.eu/thd/api/v2/consumers/{apikey}</a> and looking at the following HTTP response headers.
                    </p>
                    <table class="errors-table">
                        <thead>
                            <tr>
                                <th>Header Name</th>
                                <th>Example Value</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>X-Rate-Limit-Limit</strong>
                                </td>
                                <td>10000</td>
                                <td>The number of allowed requests in time window (e.g., in 1 day window).</td>
                            </tr>
                            <tr>
                                <td><strong>X-Rate-Limit-Remaining</strong></td>
                                <td>2000</td>
                                <td>The number of requests left in the time window (e.g., in 1 day window).</td>
                            </tr>
                            <tr>
                                <td><strong>X-Rate-Limit-Reset</strong></td>
                                <td>600</td>
                                <td>The remaining time until the rate limit resets (in seconds). E.g., 600 seconds (10 minutes) until the 1 day window resests.</td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <h2 id ="apikeyform">API Key</h2>
                    <p>The REST API is secured using an API key to prevent abuse of the service. You can get an API key for FREE, just send API key request by filling the form bellow. Note that an API key is also required if you want to use the <a href="/thd/support-downloads/">GATE plugin</a>. If you encounter any problems, please contact <a href='mailto:milan.dojchinovski@fit.cvut.cz?subject=API key request'>Milan Dojchinovski</a>.
                    <div style=" margin-bottom: 30px; color: crimson;">IMPORTANT NOTE: This system (on-line demo and Web API) can be used ONLY for <u>evaluation</u>, <u>research</u> and <u>teaching</u> purposes.
                        Any other usage of the system (in particular for commercial purposes) is not allowed.
                        THE SYSTEM IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND.</div>                    </p>
                    
                    <iframe src="https://docs.google.com/forms/d/1pQrsJjqxjUWPIp5tKC7Ac0yqjez67fdjuKlDY_YQL9E/viewform?embedded=true" width="700" height="1130" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>
