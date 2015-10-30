<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head-tag.jsp">
            <jsp:param name="title" value="THD Demo" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api, entity classifier" />
    </jsp:include>
    <script src="/thd/public/script/script.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $(".tooltipclass").tipTip({delay: 50, fadeIn: 150, fadeOut: 200});
      });
        $(document).ready(function () {
            $(".tooltipclass2").tipTip2({delay: 50, fadeIn: 150, fadeOut: 200});
      });
  </script>
    <body>
        <jsp:include page="title.jsp" />
        <jsp:include page="navigation-basic.jsp" >
            <jsp:param name="active-link" value="application" />
        </jsp:include>
        <div id="main">
                    <h2 style="text-align: center; padding-bottom: 17px; margin-top: -5px;">Extraction, Disambiguation and Classification of Entities and Named Entities</h1>
                    <div>
                        <div id="textframe">
                            <textarea id="textareacontainer" rows="23">The Charles Bridge is a famous historic bridge that crosses the Vltava river in Prague, Czech Republic.</textarea>
                        </div>

                        <div id="app-control">
                            <form onsubmit="invokeAPI2(this); return false;" method="get" id="parametersForm">
                                <div style="clear:both; padding-left: 20px; padding-top: 15px; ">
                                    <div style="float:left; width: 220px; margin-top: 2px;">Request timeout (in seconds):</div>
                                    <div style="float:left; ">
                                        <input id="q" class="requestTimeout" style="width: 80px;" placeholder="Type in the max. request timeout (in sec.)" type="number" min="1" max="500" step="1" value="60" required="">
                                    </div>
                                </div>
                                <div id="mycheckboxform" style="clear:both; float:left; padding-left: 20px; padding-top: 10px; ">
                                    <div>Language of the input text</div>
                                    <div style="display: block;"><input class="langchkbox" id="Check1" type="checkbox" value="en" onclick="selectOnlyThisLang(this.id)" checked>English</input></div>
                                    <div style="display: block;"><input class="langchkbox" id="Check2" type="checkbox" value="de" onclick="selectOnlyThisLang(this.id)">German</input></div>
                                    <div style="display: block;"><input class="langchkbox" id="Check3" type="checkbox" value="nl" onclick="selectOnlyThisLang(this.id)">Dutch</input></div>
                                </div>
                                <div id="mycheckboxform" style=" float:left; padding-left: 20px; padding-top: 10px; ">
                                    <div><span class='tooltipclass2' title="</br>Once entity is disambiguated, provenance defines </br> from which knowledge base the types assigned to</br>the entities come from." style="border-bottom:1px dashed;" >Provenance of types</span></div>
                                    <div style="display: block;"><input class="provenance" id="Check10" type="checkbox" value="thd" onclick="selectOnlyThisProv(this.id)" checked><span style="border-bottom:1px dashed;"   class="tooltipclass2" title="</br>Types are extracted from the free text of </br>Wikipedia articles.</br></br>">THD</span></input></div>
                                    <div style="display: block;"><input class="provenance" id="Check11" type="checkbox" value="dbpedia" onclick="selectOnlyThisProv(this.id)" checked><span style="border-bottom:1px dashed;" class="tooltipclass2" title="</br><a href='http://dbpedia.org'>DBpedia</a> (v3.8), languages: selected + English</br></br>">DBpedia</span></input></div>
                                    <div style="display: block;"><input class="provenance" id="Check12" type="checkbox" value="yago" onclick="selectOnlyThisProv(this.id)" checked><span style="border-bottom:1px dashed; width: 200px;" class="tooltipclass2" title="</br><a href='http://www.mpi-inf.mpg.de/yago-naga/yago/'>YAGO2s semantic knowledge base</a> </br></br>">Yago</span></input></div>
                                </div>
                                <div id="mycheckboxform" style="clear:both; float:left; padding-left: 20px; padding-top: 10px; ">
                                    <div>THD knowledge base</div>
                                    <div style="display: block;"><input class="knowledgebase" id="Check4" type="checkbox" value="linkedHypernymsDataset" onclick="selectOnlyThisKB(this.id)" checked><span style="border-bottom:1px dashed;" class='tooltipclass2' title="</br>THD types come from the <a href='http://ner.vse.cz/datasets/linkedhypernyms'>Linked Hypernyms Dataset</a></br></br>">Linked Hypernyms Dataset</span></input></div>
                                    <div style="display: block;"><input class="knowledgebase" id="Check5" type="checkbox" value="local" onclick="selectOnlyThisKB(this.id)"><span class="tooltipclass2" title="</br>THD types are extracted at query time from our</br>Wikipedia mirror(the date of the snapshot in the</br>page footer)</br></br>" style="border-bottom:1px dashed;">Local Wikipedia mirror</span></input></div>
                                    <div style="display: block;"><input class="knowledgebase" id="Check6" type="checkbox" value="live" onclick="selectOnlyThisKB(this.id)"><span class="tooltipclass2" title="</br>THD types are extracted at query time from *.wikipedia.org API.</br>Suitable for retrieving types for new, topical entities. You can</br>verify the difference by inserting entity names from the</br><a href='http://en.wikipedia.org/wiki/Wikipedia:New_articles_by_topic'>list of new Wikipedia articles</a>.</br>Note: slowest, not suitable for longer input text.</br></br>" style="border-bottom:1px dashed;">Live Wikipedia</span></input></div>
                                </div>
                                <div id="mycheckboxform" style="clear:both; float:left; padding-left: 20px; padding-top: 10px; ">
                                    <div>Entity Linking method</div>
                                    <div style="display: block;"><input class="linkingmethod" id="Check16" type="checkbox" value="SFISearch" onclick="selectOnlyThisLM(this.id)" checked><span class="tooltipclass2" title="</br>This approach approach uses a custom entity</br> Surfaces Form Index (SFI). The candidate index </br>contains all surfaces forms found in Wikpedia </br>articles together with their candidates.</br><u>Note:</u> slow but more effective than the Lucene</br>based linking approach.</br></br>" style="border-bottom:1px dashed;">SFI Based</span></input></div>
                                    <div style="display: block;"><input class="linkingmethod" id="Check17" type="checkbox" value="LuceneSearch" onclick="selectOnlyThisLM(this.id)" ><span style="border-bottom:1px dashed;" class='tooltipclass2' title="</br>This approach links the entity with the most-frequent-sense</br> entity found in the reference knowledge base (DBpedia).</br> We maintain own Lucene index.</br><u>Note:</u> fast and relatively effective entity linking.</br></br>">Lucene</span></input></div>
                                    <div style="display: block;"><input class="linkingmethod" id="Check18" type="checkbox" value="LuceneSearchSkipDisPage" onclick="selectOnlyThisLM(this.id)"><span class="tooltipclass2" title="</br>This approach links the entity with the most-frequent-sense</br> entity found in the reference knowledge base (DBpedia).</br>This approach skips the disambiguation DBpedia pages</br> and as a correct link considers the first non-disambiguation page.</br><u>Note:</u> fast and relatively effective entity linking.</br></br>" style="border-bottom:1px dashed;">Lucene (enhanced)</span></input></div>
                                    <div style="display: block;"><input class="linkingmethod" id="Check19" type="checkbox" value="WikipediaSearch" onclick="selectOnlyThisLM(this.id)"><span class="tooltipclass2" title="</br>This approach performs the entity linking with help of the</br> Wikipedia Search API. We maintain own Wikipedia mirrors </br>for English, German and Dutch Wikipedias.</br><u>Note:</u> fast and relatively effective entity linking.</br></br>" style="border-bottom:1px dashed;">Wikipedia Search</span></input></div>
                                    <div style="display: block;"><input class="linkingmethod" id="Check20" type="checkbox" value="AllVoting" onclick="selectOnlyThisLM(this.id)"><span class="tooltipclass2" title="</br>This approach performs the entity linking by agregating</br> the results from the SFI, Lucene (enhanced) and</br> Wikipedia Search based entity linking. </br><u>Note:</u> relatively slow but effective entity linking.</br></br>" style="border-bottom:1px dashed;">All Voting</span></input></div>
                                    <div style="display: block;"><input class="linkingmethod" id="Check21" type="checkbox" value="SurfaceFormSimilarity" onclick="selectOnlyThisLM(this.id)"><span class="tooltipclass2" title="</br>This approach first performs entity linking with the SFI, </br>Lucene (enhanced) and Wikipedia Search. And then, the article with </br>the most similar title to the entity surface form is considered as correct.</br><u>Note:</u> relatively slow but effective entity linking.</br></br>" style="border-bottom:1px dashed;">Surface Form Similarity</span></input></div>
                                </div>
                                <div id="mycheckboxform" style=" float:left; padding-left: 0px; padding-top: 10px; ">
                                    <div>Entity Spotting method</div>
                                    <div style="display: block;"><input class="spottingmethod" id="Check30" type="checkbox" value="grammars" onclick="selectOnlyThisSM(this.id)" checked><span class="tooltipclass2" title="</br>This entity spotting approachs uses hand-crafted </br>lexico-syntactic patterns writen as JAPE grammars.</br><u>Note:</u> fast entity spotting.</br></br>" style="border-bottom:1px dashed;">POS Pattern based</span></input></div>
                                    <div style="display: block;"><input class="spottingmethod" id="Check31" type="checkbox" value="CRF" onclick="selectOnlyThisSM(this.id)" ><span style="border-bottom:1px dashed;" class='tooltipclass2' title="</br>This entity spotting approach is based on the</br> state-of-the-art Conditional Random Fields model. </br>The model is trained on the CoNNL 2003 dataset.</br><u>Note:</u> slowlier but more efficient entity spotting. It </br>can be used to detect named entities only.</br></br>">Conditional Random Fields</span></input></div>
                                </div>
                                <div id="mycheckboxform" style="clear:both; float:left; padding-left: 20px; padding-top: 10px; ">
                                    <div><span class='tooltipclass2' title="</br>Filter types to selected namespaces (this option  </br> is valid only for types from LHD dataset)." style="border-bottom:1px dashed;" >THD type filter</span></div>
                                    <div style="display: block;"><input class="thdprovenance" id="Check13" type="checkbox" value="dbo" onclick="selectOnlyThisProv2(this.id)">DBpedia Ontology</input></div>
                                    <div style="display: block;"><input class="thdprovenance" id="Check14" type="checkbox" value="dbinstance" onclick="selectOnlyThisProv2(this.id)">DBpedia instances</input></div>
                                    <div style="display: block;"><input class="thdprovenance" id="Check15" type="checkbox" value="all" onclick="selectOnlyThisProv2(this.id)" checked>All</input></div>
                                </div>
                                <div id="mycheckboxform" style="float:left; padding-left: 20px; padding-top: 10px;">
                                    <div>Types of entities to extract</div>
                                    <div style="display: block;"><input class="entitytype" id="Check7" type="checkbox" value="ne" onclick="selectOnlyThisNEType(this.id)" checked>Named Entities</input></div>
                                    <div style="display: block;"><input class="entitytype" id="Check8" type="checkbox" value="ce" onclick="selectOnlyThisNEType(this.id)">Common Entities</input></div>
                                    <div style="display: block;"><input class="entitytype" id="Check9" type="checkbox" value="all" onclick="selectOnlyThisNEType(this.id)">All</input></div>
                                </div>
                                <div id="mycheckboxform" style="clear:both; float:left; padding-left: 20px; padding-top: 10px; padding-bottom: 20px;">
                                    <div><span class='tooltipclass2' title="</br>If checked, the system will prefer linking more </br>precise DBpedia desambiguation (longer entity name). </br> This option may result to less entities being assigned</br>types." style="border-bottom:1px dashed;" >Force long entity linking</span></div>
                                    <div style="float:left;"><input id="longEntityLinking" type="checkbox"> on </input></div>
                                </div>
                                <button type="submit" class="ga-button" form="parametersForm" style="margin-top: 20px;"> Run! </button>
                            </form>
                        </div>
                    </div>
                    <div id="results-container">
                        <h3>Results</h3>
                        <img id="loading-gif"src="/thd/public/img/loading.gif" style="display: none;" />
                        <div class="textResults">
                            <div class="finalResults">
                                <!--No <span class='mostsalient'>results</span> yet.-->
                                No results yet.
                            </div>
                            <div class="status"></div>     
                        </div>
                    </div>
                    <div style=" margin-bottom: 30px; color: crimson;">IMPORTANT NOTE: This system (on-line demo and Web API) can be used ONLY for <u>evaluation</u>, <u>research</u> and <u>teaching</u> purposes.
                        Any other usage of the system (in particular for commercial purposes) is not allowed.
                        THE SYSTEM IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND.</div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
        <div id="infobox">
            <center><h3 style="margin-left: 15px; margin-right: 45px; margin-top: 15px;">Detailed results</h3></center>
            <div id="showmore_results" style="margin-left: 15px; margin-right: 15px; margin-top: 15px;">
            </div>
            <div id="showmore_close" />
        </div>
    </body>
</html>