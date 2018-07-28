<%-- 
    Document   : index
    Created on : May 23, 2018, 10:42:20 PM
    Author     : dell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
        <script src="scripts/script.js" type="text/javascript"></script>
    </head>

    <body>

        <c:if test="${empt!= null}">
            <script>
                notice();
            </script>
        </c:if>

        <div class="container">
            <div class="preheader">

            </div>
            <div class="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="menu">
                <%@include file="menu.jsp" %>
            </div>
            <div class="wrapper">
                <div class="content">
                    <div class="news">
                        <%@include file="news.jsp" %>
                    </div>
                    <div class="right-bar">
                        <%@include file="rightbar.jsp" %>
                    </div> 
                </div>
            </div>

            <div class="footer">

            </div>
        </div>
    </body>
</html>
