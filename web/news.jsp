<%@ page import="entity.News" %>
<%@ page import="dao.NewsDao" %><%--
  Created by IntelliJ IDEA.
  User: naim
  Date: 3/5/2020
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  long newsId = Long.valueOf(request.getParameter("id").toString());
    NewsDao newsDao = new NewsDao();

  News news = newsDao.findNewsById(newsId);

    System.out.println(news.toString());
    //new line

%>
<h1>This is single news page.........</h1>
</body>
</html>
