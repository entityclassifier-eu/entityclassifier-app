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
    <script src="/thd/public/script/publications.js" type="text/javascript">
    </script>
    <script type="text/javascript">
        window.onload = function() {
            fetch_publications();
        }
    </script>
    <body>
        <jsp:include page="../title.jsp" />
        <jsp:include page="../navigation-basic.jsp" >
            <jsp:param name="active-link" value="publications" />
        </jsp:include>
        <div id="main">
            <div class="sub-main">
                <div class="sub-main2" style="margin-top: -20px;">
                    <h1>Publications</h1>
                    <table id="publications" class="nice-table2">
                        <tbody>
                            <tr id="temp-elm1"><td><p class="loading">Loading data...</p></td></tr>
                        </tbody>
                    </table>
                    <p>If you are already using THD then please <a href="http://www.dojchinovski.mk/public/data/ECMLPKDD2013-DojchinovskiK.bib
"><img class="bibtex-icon" src="/thd/public/img/bibtex-icon.png">cite</a> our work!</p>
                </div>
            </div>
        </div>
        <jsp:include page="../footer.jsp" />

    </body>
</html>
