<%-- 
    Document   : search
    Created on : May 29, 2018, 6:31:26 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <%

        int totalPage = Integer.parseInt(request.getAttribute("totalpage").toString());
        int pagegap = Integer.parseInt(request.getAttribute("pagegap").toString());
        int pageIndex = Integer.parseInt(request.getAttribute("pageindex").toString());
        String title = (String) request.getAttribute("title");
    %>
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
            <div class="wrapper">
                <div class="content">
                <div class="news">

                    <ul>                    
                        <c:forEach var="n" items="${results}">

                            <div class="result">
                                <h2><a href="news?id=${n.id}">${n.title}</a></h2>
                                <img src="${n.image}">
                                <p>${n.content}</p>
                            </div>
                        </c:forEach>

                    </ul>
                    <%=util.HtmlHelper.pagger(pageIndex, pagegap, totalPage, title)%>
                </div>
                <div class="right-bar">
                    <%@include file="rightbar.jsp" %>
                </div>
            </div> 
            </div>
            
        </div>
        <div class="footer">

        </div>
    </div>
</body>
</html>
