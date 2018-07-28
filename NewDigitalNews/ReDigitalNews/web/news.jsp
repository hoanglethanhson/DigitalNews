<%-- 
    Document   : news
    Created on : Jun 4, 2018, 8:40:38 PM
    Author     : dell
--%>

<h2>${news.title}</h2>
<img id="news-image" src="${news.image}" height="150px" width="500px">
<div class="news-wrapper">
    <p class="news-content">${news.content}</p>
</div>

<pre class="writer"><img src="images/timeicon.gif" alt=""/>By ${news.writer}  |  ${news.date}</pre>
