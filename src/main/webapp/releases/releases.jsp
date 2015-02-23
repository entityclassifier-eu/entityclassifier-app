<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../head-tag.jsp">
            <jsp:param name="title" value="THD Releases" />
            <jsp:param name="description" value="Unsupervised Targeted Hypernym Discovery tool" />
            <jsp:param name="keywords" value="algorithm, hypernym discovery, program, tool, api, web api" />
    </jsp:include>
    <script src="/thd/public/script/releases.js" type="text/javascript">
    </script>
    <script type="text/javascript">
        window.onload = function() {
            fetch_releases();
        }
    </script>    
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="releases" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2">
                    <h1 style="margin-top: -5px;">Releases Changelog</h1>
                    <p style="font-weight: 100; font-size: 16px;">
                        The list covers new features and refinements of the THD core, the Web application and the REST API. The code is maintained under the Bitbucket <a href="https://bitbucket.org/entityclassifier/" target="_blank">Entityclassifier.eu Project</a> repository.
                    </p>
                    <p id="temp-elm-data-loading">Data is loading...</p>
<!--                    <h3>v3.8.0 July 2014</h3>
                    <p>The most recent version of the REST API.</p>
                    <h3>v3.8.0 July 2014</h3>
                    <p>The most recent version of the REST API.</p>-->
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />
    </body>
</html>
