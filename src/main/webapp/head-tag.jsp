<%-- 
    Document   : header
    Created on : Aug 30, 2012, 3:54:28 AM
    Author     : Milan Dojčinovski 
 * <dojcinovski.milan (at) gmail.com> 
 * Twitter: @m1ci 
 * www: http://dojchinovski.mk 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <%
        String title = request.getParameter("title");
        if(title.equals("")){
            out.println("<title>Welcome</title>");
        }else{
            out.println("<title>"+title+"</title>");
        }
        
        String description = request.getParameter("description");
        if(description.equals("")){
        }else{
            out.println("<meta name=\"description\" content=\"" + description + "\">");
        }
        
        String keywords = request.getParameter("keywords");
        if(keywords.equals("")){
        }else{
            out.println("<meta name=\"keywords\" content=\"" + keywords + "\">");
        }
    %>
    <link href="/thd/public/style/main.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-34970429-1']);
        _gaq.push(['_trackPageview']);
        (function() {
            if(!navigator.userAgent.match(/Milans_browser/i)){
                var ga = document.createElement('script');
                ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            }
        })();
    </script>
</head>