<%-- 
    Document   : rightbar
    Created on : Jun 4, 2018, 8:41:48 PM
    Author     : dell
--%>

<div class="latest-news">
    <h2><a href="news?id=${latest.id}">${latest.title}</a></h2>
    <p>${latest.content}</p>
</div>
<div class="search">
    <h2>Search</h2>
    <form action="list" method="GET">
        <input type="text" name="title">
        <input type="hidden" name="old" value="${title}">
        <input type="submit" value="Go">
    </form>
</div>
<div class="top5">
    <h2>Last Articles</h2>
    <ul>
        <c:forEach var="news" items="${list}">
            <li class="list-item">
                <h3><a href="news?id=${news.id}">${news.title}</a></h3>
            </li>
        </c:forEach>    
    </ul>
</div>
