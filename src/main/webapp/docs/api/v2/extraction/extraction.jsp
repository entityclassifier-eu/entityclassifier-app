<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../../../head-tag.jsp">
            <jsp:param name="title" value="Entity Extraction API v2" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <body>
        <jsp:include page="../../../../title.jsp" />
        <jsp:include page="../../../../navigation-basic.jsp" >
            <jsp:param name="active-link" value="api" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2">
                    <h1 style="margin-top: -5px;">Entity Extraction API version 2.0</h1>
                    <h3>Resource:</h3>
                    <p style="font-weight: 100; font-size: 16px;">
                        <code>POST api/v2/extraction</code>
                    </p>
                    <h3>Description: </h3>
                    <p style="font-weight: 100; font-size: 16px;">
                        Performs entity extraction and classification of entities for a given text. For each extracted entity its types are discovered. For both, the entities and the types, appropriate links to DBpedia or YAGO are provided (if available). Note that the length of the input text has influence on the processing time.
                    </p>
                    </br>
                    <table class="resources-table">
                        <thead>
                            <tr>
                                <th>Parameters</th>
                                <th>Description</th>
                            </tr>                        
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>lang</strong>
                                    <span>optional</span>
                                </td>
                                <td>
                                    Language of the input text. You can choose between English, German and Dutch. Values: <code>en/de/nl</code>.</br><b>Default value: </b><tt>en</tt>.</br><i>Example: </i><tt>lang=en</tt>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>format</strong>
                                    <span>optional</span>
                                </td>
                                <td>
                                    Requested response format. Possible values: <tt>xml/json/rdfxml</tt>. </br><b>Default value:</b> <tt>xml</tt></br><i>Example: </i><tt>format=xml</tt></br>The format can be also specified using the <tt>Accept</tt> request header. If <tt>format</tt> parameter is specified, then the format parameter will have higher priority.</br>
                                    Values for the Accept header:</br>
                                    <tt>application/xml</tt></br>
                                    <tt>application/json</tt></br>
                                    <tt>application/rdf+xml</tt></br>
                                    <tt>application/ld+json</tt></br>
                                    <tt>application/x-turtle</tt></br>
                                    <b><span style="color: darkred; display: inline;">Important note:</span></b> The results serialized in RDF are modelled using the <b>NIF 2.0</b> format.</br>Please refer to the <b><a href="http://persistence.uni-leipzig.org/nlp2rdf/">NIF 2.0</a></b> specification for more information.
                                </td>
                            <tr>
                                <td>
                                    <strong>provenance</strong>
                                    <span>optional</span>
                                </td>
                                <td>Provenance of the results. Values: <tt>thd/dbpedia/yago</tt>. The client can choose one or more. </br><b>Default value: </b> <tt>thd,dbpedia,yago</tt>.</br><i>Example: </i><tt>provenance=thd,dbpedia</tt>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>knowledge_base</strong>
                                    <span>optional</span>
                                </td>
                                <td>
                                    Defines, which knowledge base is  used to retrieve types for thd. Currently applicable only, when provenance is set to thd or all.
                                        Values: <tt>linkedHypernymsDataset/local/live</tt></br>
                                        <tt>linkedHypernymsDataset</tt> - use the <a href="http://ner.vse.cz/datasets/linkedhypernyms"> linked hypernyms dataset</a> (recommended),</br>
                                        <tt>local</tt> - local Wikipedia mirror (slight latency), for the date of the Wikipedia snapshot please refer to the technical information about application version in the page footer,</br>
                                        <tt>live</tt> - live Wikipedia (highest latency), <font style='color: firebrick;'>please be considerate and do not submit large amount of text or high number of requests.</font> Recommended use: issue query containing single candidate entity, for which the other options failed to provide a type.</br>
                                        Note: Only one option can be chosen.</br><b>Default value: </b><tt>linkedHypernymsDataset</tt></br>
                                        <i>Example: </i><tt>knowledge_base=linkedHypernymsDataset</tt>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <strong>entity_type</strong> 
                                    <span>optional</span>
                                </td>
                                <td>
                                    The types of entities to be processed from the text. Values: <tt>ne/ce/all</tt></br><tt>ne</tt> - extract only "named entities",</br>
                                        <tt>ce</tt> - only common entities will be extracted,</br>
                                        <tt>all</tt> - both, the named entities and the common entities will be extracted.</br><b>Default value: </b><tt>all</tt></br>
                                        <i>Example: </i><tt>entity_type=ne</tt>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <strong>priority_entity_linking</strong> 
                                    <span>optional</span>
                                </td>
                                <td>
                                    If set to <tt>true</tt>, the system will prefer linking more precise DBpedia disambiguation (longer entity name).
                                    This option may result to less entities being assigned types. Values: <tt>true/false</tt>
                                    </br><b>Default value: </b><tt>false</tt></br>
                                    <i>Example: </i><tt>priority_entity_linking=true</tt>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>types_filter</strong> 
                                    <span>optional</span>
                                    <span style='color: SteelBlue;'>NEW in the API version 2!</span>
                                </td>
                                <td>
                                    Filter types to selected namespaces for <tt>thd</tt> results. You can filter out only types as DBpedia instances, DBpedia Ontology types, or both of them. This setting has no effect for <tt>provenance=yago</tt> or <tt>provenance=dbpedia</tt>. Values:
                                        <tt>dbo/dbinstance/all</tt></br>
                                        <tt>dbo</tt> - filter only DBpedia Ontology types,</br>
                                        <tt>dbinstance</tt> - filter only types defined as DBpedia instances,</br>
                                        <tt>all</tt> - both, the entity types can be either DBpedia Ontology clases or DBpedia instances.</br><b>Default value: </b><tt>all</tt></br>
                                        <i>Example: </i><tt>types_filter=dbo</tt>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>linking_method</strong> 
                                    <span>optional</span>
                                    <span style='color: SteelBlue;'>NEW in THD version 3.9!</span>
                                </td>
                                <td>
                                    You can choose preferred entity linking (disambiguation) method. So far, you can choose between 6 entity linking approaches. Possible values:</br>
                                        <tt>SFISearch</tt> - This approach uses a custom entity Surfaces Form Index (SFI). The candidate index contains all surfaces forms found in Wikpedia articles together with their candidates.</br>
                                        <tt>LuceneSearch</tt> - Lucene based entity linking.</br>
                                        <tt>LuceneSearchSkipDisPage</tt> - This approach differs from the one above in the sense that it skips the disambiguation DBpedia pages and as a correct link considers the first non-disambiguation page.</br>
                                        <tt id="sec:wikipedia-search">WikipediaSearch</tt> - Wikipedia search based entity linking.</br>
                                        <tt>AllVoting</tt> - This approach performs the entity linking by aggregating the results from the SFI, Lucene (enhanced) and Wikipedia Search based entity linking.</br>
                                        <tt>SurfaceFormSimilarity</tt> - This approach first performs entity linking with the SFI, Lucene (enhanced) and Wikipedia Search. The article with the most similar title to the entity surface form is considered as correct.</br>
                                        <b>Default value: </b><tt>LuceneSearchSkipDisPage</tt> - if you do not specify this query parameter, than Lucene search (which skips disambiguation pages) is used as a linking method.</br>
                                        <i>Example: </i><tt>linking_method=WikipediaSearch</tt></br>
                                        <b><span style="color: darkred; display: inline;">Important note:</span></b> you can not at the same time use LuceneSearch and perform live types mining (<tt>knowledge_base=live</tt>).                                        
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>spotting_method</strong> 
                                    <span>optional</span>
                                    <span style='color: SteelBlue;'>NEW in THD version 3.9.2!</span>
                                </td>
                                <td>
                                    You can choose preferred entity spotting (recognition) method. So far, you can choose between spotting based on <i>lexico-syntactic grammars</i> and spotting based on <i>Conditional Random Fields</i> model. Possible values:</br>
                                        <tt>grammars</tt> - entity spotting based on manually crafted lexico-syntactic grammars.</br>
                                        <tt>CRF</tt> - entity spotting based on the state-of-the-art Conditional Random Fields model.</br>
                                        <b>Default value: </b><tt>grammars</tt> - if you do not specify this query parameter, than grammars based method is used for spotting entities.</br>
                                        <i>Example: </i><tt>spotting_method=grammars</tt></br>
                                        <b><span style="color: darkred; display: inline;">Important note:</span></b> CRF based entity spotting is slowlier but more efficient. It can be used to detect named entities only.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>apikey</strong>
                                    <span>required</span>
                                </td>
                                <td>
                                     Used for identification of a third-party application utilizing the service. Write <a href="/thd/contact">us</a> an email to get an api key.</br><i>Example:</i><tt> apikey=123456789</tt>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <h2>Response Object</h2>
                    <p></p>
                    <table class="object-params-table">
                        <thead>
                            <tr>
                                <th>Field</th>
                                <th>Type</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>startOffset</strong>
                                </td>
                                <td>
                                    Integer
                                </td>
                                <td>
                                    Start offset index of the found entity in the input text. The offset is counter from 0 from the beginning of the input text.
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>"startOffset": 4</pre></code></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>endOffset</strong>
                                </td>
                                <td>
                                    Integer
                                </td>
                                <td>
                                    End offset of the found entity in the input text. The offset is counter from 0 from the beginning of the input text.
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>"endOffset": 18</pre></code></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>underlyingString</strong>
                                </td>
                                <td>
                                    String
                                </td>
                                <td>
                                    The string considered as an entity.
<div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>"underlyingString": "Charles Bridge"</pre></code></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>entityType</strong>
                                </td>
                                <td>
                                    String
                                </td>
                                <td>
                                    The type of the extracted entity. Possible values: <tt>"named entity"</tt> or <tt>"common entity"</tt>.
<div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>"entityType": "named entity"</pre></code></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>types</strong>
                                </td>
                                <td>
                                    Array of <tt>types<tt>
                                </td>
                                <td>
                                    List of types for the found entity.
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>"types":  [
       {
        "typeLabel": "Country",
        "typeURI": "http://dbpedia.org/ontology/Country",
        "entityLabel": "Czech Republic",
        "entityURI": "http://dbpedia.org/resource/Czech_Republic",
        "classificationConfidence":  {
          "value": 0.857,
          "type": "classification"
        },
        "linkingConfidence":  {
          "value": 0.999,
          "type": "linking"
        },
        "salience":{
            "classLabel":"most_salient",
            "score":0.845,
            "confidence":0.715
        },
        "provenance": "thd"
      } ]</pre></code></div>
                                    The corresponding XML is:
<div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>&lt;types&gt;
    &lt;type&gt;
        &lt;typeLabel&gt;Country&lt;/typeLabel&gt;
        &lt;typeURI&gt;http://dbpedia.org/ontology/Country&lt;/typeURI&gt;
        &lt;entityLabel&gt;Czech Republic&lt;/entityLabel&gt;
        &lt;entityURI&gt;http://dbpedia.org/resource/Czech_Republic&lt;/entityURI&gt;
        &lt;confidence type="classification"&gt;0.857&lt;/confidence&gt;
        &lt;confidence type="linking"&gt;0.999&lt;/confidence&gt;
        &lt;salience&gt;
            &lt;score&gt;0.845&lt;/score&gt;
            &lt;confidence&gt;0.715&lt;/confidence&gt;
            &lt;class&gt;most_salient&lt;/class&gt;
        &lt;/salience&gt;
        &lt;provenance&gt;thd&lt;/provenance&gt;
    &lt;/type&gt;
&lt;types&gt;</pre></code></div>
<p><b>typeLabel</b> - name by which the type is formally known.</p>
<b>typeURI</b> - DBpedia/YAGO URI describing the entity type.</p>
<b>entityLabel</b> - name by which the disambiguated entity is formally known.</p>
<b>entityURI</b> - DBpedia/YAGO URI describing the disambiguated entity.</p>
<b>provenance</b> - Provenance of the results. Possible values are: <tt><b>thd</b></tt> - produced by THD, <tt><b>thd-derived</b></tt> - also produced by THD through searching for superclasses in the Dbpedia ontology, <tt><b>dbpedia</b></tt> - produced by DBpedia, and <tt><b>yago</b></tt> - produced by YAGO2s ontology. </p>
<b>confidence</b>  - estimated classification or linking (disambiguation) confidence.</br><i>Classification confidence</i> is the estimated probability that the <tt>typeLabel</tt> is correct for given <tt>entityURI</tt>.</br><i>Linking confidence</i> is the estimated probability of the <tt>entityURI</tt> being correct given the surface form of the entity.
</br>Confidence in XML: element &ltconfidence&gt; - Classification and linking confidence can be distinguished with the <tt>type</tt> attribute. Possible values for the <tt>type</tt> attribute are <tt>linking</tt> and <tt>classification</tt>. 
<div style="background-color: #f8f8ff; margin-bottom: 5px; border: lightgray solid 1px; padding: 4px;">
<code><pre>
&lt;confidence type="classification"&gt;0.857&lt;/confidence&gt;
&lt;confidence type="linking"&gt;0.999&lt;/confidence&gt;</pre></code>
</div>
Confidence in JSON: Classification confidence in <tt>classificationConfidence</tt> object, linking confidence in the <tt>linkingConfidence</tt> object. The actual confidence value is stored at the key <tt>value</tt>.
<div style="background-color: #f8f8ff; margin-bottom: 5px; border: lightgray solid 1px; padding: 4px;">
<code><pre>"classificationConfidence":  {
    "value": 0.857,
    "type": "classification"
},
"linkingConfidence":  {
    "value": 0.999,
    "type": "linking" 
}</pre></code>
</div>
Note: if you use <tt>WikipediaSearch</tt> as entity linking method (read more <a href="#sec:wikipedia-search">here</a>), the linking confidence will always be -1. We are unable to estimate the linking confidence for the Wikipedia search based linking.
</p>
<b>salience</b>  - estimated salience of the entity to the document. The level of salience determines whether or not the document is about the entity.
In XML the entity salience is encoded as follows:
<div style="background-color: #f8f8ff; margin-bottom: 5px; border: lightgray solid 1px; padding: 4px;">
<code><pre>
&lt;salience&gt;
    &lt;class&gt;most_salient&lt;/class&gt;
    &lt;score&gt;0.845&lt;/score&gt;
    &lt;confidence&gt;0.715&lt;/confidence&gt;
&lt;/salience&gt;
</pre></code>
</div>
<tt><b>class</b></tt> - one of the following three classes indicating level of salience:
<ul>
    <li><b>most_salient</b> - A most prominent entity with highest focus of attention in the document.</li>
    <li><b>less_salient</b> - A less prominent entity with focus of attention in some parts of the document.</li>
    <li><b>not_salient</b> - The document is not about the entity.</li>
</ul>
<tt><b>score</b></tt> - the entity salience score. High salience score indicates higher focus of attention.
<tt><b>confidence</b></tt> - estimated confidence (probability) that the entity salience class is correct.</br>
In JSON the entity salience is encoded as follows:
<div style="background-color: #f8f8ff; margin-bottom: 5px; border: lightgray solid 1px; padding: 4px;">
<code><pre>"salience":{
    "classLabel":"most_salient",
    "score": 0.845,
    "confidence": 0.715
}</pre></code>
</div>
</p>

</td>
                            </tr>
                        </tbody>
                    </table>                    
                                        
                    <h2>HTTP Status Codes</h2>
                    <p>The THD API attempts to return appropriate HTTP status codes for every request.</p>
                    <table class="errors-table">
                        <thead>
                            <tr>
                                <th>Code</th>
                                <th>Text</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>200</strong>
                                </td>
                                <td>
                                    OK
                                </td>
                                <td>
                                    Success!
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>400</strong>
                                </td>
                                <td>
                                    Bad Request
                                </td>
                                <td>
                                    The request was invalid. An accompanying error message will explain why.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>401</strong>
                                </td>
                                <td>
                                    Unauthorized
                                </td>
                                <td>
                                    Authentication credentials were missing or incorrect.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>406</strong>
                                </td>
                                <td>
                                    Not Acceptable
                                </td>
                                <td>
                                    Returned by the API when an invalid format is specified in the request.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>500</strong>
                                </td>
                                <td>
                                    Internal Server Error
                                </td>
                                <td>
                                    Something is broken. Please write us an email so the THD team can investigate.
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <h2>Error Messages</h2>
                    <p>When the THD API returns error messages, it does so in your requested format. For example, returned error in JSON might look like this:</p>
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>{ "code": 45, "value": "Empty body request" }</pre></code>
                    </div>
                    <p>The corresponding XML response would be:</p>
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code><pre>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;error code="45">Empty body request&lt;/error&gt;</pre></code></div>
                    <h2>Error Codes</h2>
                    <p>In addition to descriptive error text, error messages contain machine-parseable codes. The following table describes the codes which may appear when working with the API:</p>
                    <table class="errors-table">
                        <thead>
                            <tr>
                                <th>Code</th>
                                <th>Text</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>31</strong>
                                </td>
                                <td>
                                     Could not authenticate you
                                </td>
                                <td>
                                    Authentication credentials were missing. Needs security credentials specified by the apikey parameter.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>32</strong>
                                </td>
                                <td>
                                    Could not authenticate you
                                </td>
                                <td>
                                    Specified api key is not valid. The API could not authenticate you.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>41</strong>
                                </td>
                                <td>
                                    Not supported format
                                </td>
                                <td>
                                    The format specified in the <tt>format</tt> parameter is not supported.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>42</strong>
                                </td>
                                <td>
                                    Not supported format
                                </td>
                                <td>
                                    The format specified in the <tt>Accept</tt> header is not supported.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>43</strong>
                                </td>
                                <td>
                                    Not valid <tt>types_filter</tt> parameter
                                </td>
                                <td>
                                    The value of the types_filter parameter is not valid. You can choose between <tt>dbo</tt>, <tt>dbinstance</tt> and <tt>all</tt>.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>44</strong>
                                </td>
                                <td>
                                    Not valid <tt>linking_method</tt> parameter
                                </td>
                                <td>
                                    The value of the linking_method parameter is not valid. You can choose between <tt>LuceneSearch</tt> or <tt>WikipediaSearch</tt>.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>45</strong>
                                </td>
                                <td>
                                    Empty body request
                                </td>
                                <td>
                                    The body of the request is empty.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>46</strong>
                                </td>
                                <td>
                                    Not valid <tt>knowledge_base</tt> parameter
                                </td>
                                <td>
                                    Chosen knowledge base is not supported.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>47</strong>
                                </td>
                                <td>
                                    Not valid <tt>provenance</tt> parameter
                                </td>
                                <td>
                                    The value of the provenance parameter is not valid. You can choose between <tt>thd</tt>, <tt>dbpedia</tt> and <tt>yago</tt>.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>48</strong>
                                </td>
                                <td>
                                    Not correctly set <tt>entity_type</tt> parameter
                                </td>
                                <td>
                                    The value of the provenance parameter is not valid. You can choose between <tt>ne</tt>, <tt>ce</tt> and <tt>all</tt>.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>49</strong>
                                </td>
                                <td>
                                    Not supported language
                                </td>
                                <td>
                                    Specified language in the <tt>lang</tt> parameter is not valid. You can choose between <tt>en</tt>, <tt>de</tt> and <tt>nl</tt>.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>51</strong>
                                </td>
                                <td>
                                    Internal error
                                </td>
                                <td>
                                    Something went wrong on the server side. Please write us an <a href="/thd/contact/">email</a> so the THD team can investigate.
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <h2>Request example</h2>
                    <p><strong>POST</strong></br><code>https://entityclassifier.eu/thd/api/v2/extraction?apikey=123456789&format=xml&provenance=thd&priority_entity_linking=true&entity_type=all</code></p>
                    <p><strong>POST Data</strong></br><code>The Charles Bridge is a famous historic bridge that crosses the Vltava river in Prague, Czech Republic.</code></p>
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <code>curl -v "https://entityclassifier.eu/thd/api/v2/extraction?apikey=123456789&format=xml&provenance=thd&priority_entity_linking=true&entity_type=all" -d "The Charles Bridge is a famous historic bridge that crosses the 
Vltava river in Prague, Czech Republic."</code>
                    </div>
                    <h2>Response example</h2>
                    <div style="background-color: #f8f8ff; margin-bottom: 10px; border: lightgray solid 1px; padding: 4px;">
                        <pre><code>&lt;entities&gt;
    &lt;entity&gt;
        &lt;startOffset>4&lt;/startOffset&gt;
        &lt;endOffset>18&lt;/endOffset&gt;
        &lt;underlyingString&gt;Charles Bridge&lt;/underlyingString&gt;
        &lt;entityType&gt;named entity&lt;/entityType&gt;
        &lt;types&gt;
          &lt;type&gt;
            &lt;typeLabel&gt;Bridge&lt;/typeLabel&gt;
            &lt;typeURI&gt;http://dbpedia.org/ontology/Bridge&lt;/typeURI&gt;
            &lt;entityLabel&gt;Charles Bridge&lt;/entityURI&gt;
            &lt;entityURI&gt;http://dbpedia.org/resource/Charles_Bridge&lt;/entityURI&gt;
            &lt;confidence type="classification" &gt;0.857&lt;/confidence&gt;
            &lt;confidence type="linking" &gt;0.65&lt;/confidence&gt;
            &lt;salience&gt;
                &lt;score&gt;0.845&lt;/score&gt;
                &lt;confidence&gt;0.715&lt;/confidence&gt;
                &lt;class>most_salient&lt;/class&gt;
                &lt;/salience&gt;
            &lt;provenance&gt;thd&lt;/provenance&gt;
          &lt;/type&gt;
          &lt;type&gt;
            &lt;typeLabel&gt;route of transportation&lt;/typeLabel&gt;
            &lt;typeURI&gt;http://dbpedia.org/ontology/RouteOfTransportation&lt;/typeURI&gt;
            &lt;entityLabel&gt;Charles Bridge&lt;/entityURI&gt;
            &lt;entityURI&gt;http://dbpedia.org/resource/Charles_Bridge&lt;/entityURI&gt;
            &lt;confidence type="classification" &gt;0.857&lt;/confidence&gt;
            &lt;confidence type="linking" &gt;0.65&lt;/confidence&gt;
            &lt;salience&gt;
                &lt;score&gt;0.845&lt;/score&gt;
                &lt;confidence&gt;0.715&lt;/confidence&gt;
                &lt;class>most_salient&lt;/class&gt;
                &lt;/salience&gt;
            &lt;provenance&gt;thd-derived&lt;/provenance&gt;
          &lt;/type&gt;
          ...
    &lt;/entity&gt;
    ...
&lt;/entities&gt;</code></pre>
                    </div>
                    <!--<script src="https://gist.github.com/m1ci/53af0df6e9b814670d02.js"></script>-->
                    </br>                
                </div>
            </div>
        </div>
        <jsp:include page="../../../../footer.jsp" />
    </body>
</html>
