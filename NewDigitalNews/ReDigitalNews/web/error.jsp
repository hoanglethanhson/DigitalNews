<%-- 
    Document   : error
    Created on : Jun 11, 2018, 7:19:27 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="preheader">

            </div>
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <%@include file="menu.jsp" %>
            </div>
            <div class="content">
                <div class="news">
                    <h2>Sorry, something went wrong ...</h2>
                </div>
                <div class="right-bar">
                    <%@include file="rightbar.jsp" %>
                </div> 
            </div>
            <div class="footer">

            </div>
        </div>
    </body>
</html>
