<%-- 
    Document   : navigation
    Created on : Aug 30, 2012, 4:00:32 AM
    Author     : Milan Dojčinovski 
 * <dojcinovski.milan (at) gmail.com> 
 * Twitter: @m1ci 
 * www: http://dojchinovski.mk 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<div id="navigation">
    <div class="sub-navigation">
        <ul>
            <li class="
                <%
                String s = request.getParameter("active-link");
                if(s.equals("home"))
                    out.println("active");
                %>
            ">
                <a href="/thd/about/">About</a>
            </li>
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("application"))
                    out.println("active");
                %>
                ">
                <a href="/thd/">Demo</a>
            </li>
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("api"))
                    out.println("active");
                %>
                ">
                <a href="/thd/docs/">Web API</a>
            </li>
      
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("support"))
                    out.println("active");
                %>
                ">
                <a href="/thd/support-downloads/">Support & Downloads</a>
            </li>
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("screencasts"))
                    out.println("active");
                %>
                ">
                <a href="/thd/screencasts/">Screencasts</a>
            </li>
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("publications"))
                    out.println("active");
                %>
                ">
                <a href="/thd/publications/">Publications</a>
            </li>
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("releases"))
                    out.println("active");
                %>
                ">
                <a href="/thd/releases/">Releases</a>
            </li>
            <li class="
                <%
                s = request.getParameter("active-link");
                if(s.equals("contact"))
                    out.println("active");
                %>
                ">
                <a href="/thd/contact/">Contact</a>
            </li>
        </ul>
    </div>
</div>