<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="THD Screencasts" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="screencasts" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2" style="margin-top: -20px;">
                    <div>
                        <h1>Screencasts</h1>
                        <p>
                            The following screencasts are currently available:
                            <div><a href="http://ner.vse.cz/screencasts/thd/screencast-1/" target="_blank">Screencast 1: Introduction and Simple Example</a></div>
                            <div><a href="http://ner.vse.cz/screencasts/thd/screencast-2/" target="_blank">Screencast 2: Classification of Entities in Real-time</a></div>
                            <div><a href="http://ner.vse.cz/screencasts/thd/screencast-3/" target="_blank">Screencast 3: Processing of German and Dutch Texts</a></div>
                            <div><a href="http://ner.vse.cz/screencasts/thd/screencast-4/" target="_blank">Screencast 4: Complementarity to DBpedia and YAGO knowledge bases</a></div>
                        </p>
                        <p>
                            Note that the current THD user interface might be slightly different from the version shown at the screencast.                            
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />

    </body>
</html>
