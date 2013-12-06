<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="Targeted Hypernym Discovery" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="home" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2">
                    <div style="float:left; width: 400px;">
                        <h1>Targeted Hypernym Discovery</h1>
                        <p style="font-size: 15px;" align="justify">                            
                            THD is advanced unsupervised entity discovery and classification system.
                            The system can recognize entities in free texts written in English, 
                            German and Dutch language. Recognized entities are enriched with links from Wikipedia 
                            (resp. DBpedia) and types from DBpedia and YAGO knowledge bases providing 
                            high semantic interoperability. More about the technology behind the system you can read 
                            in our recent <a href="/thd/publications">publications</a>.
                        </p>
                        <a class="ga-button" href="/thd/" style="margin-top: 0px; margin-bottom: 80px;">Try it now!</a>
                    </div>
                    <div style="float:left; width: 350px; margin-left: 30px;">
                        <img src="https://docs.google.com/drawings/pub?id=1bAnCvKt7O4PSi18xyMVLVwxSuswsuke_HuzLDe9u6wI&amp;w=323&amp;h=285"/>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>
