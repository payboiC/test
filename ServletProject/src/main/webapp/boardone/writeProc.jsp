<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.boardone.BoardDAO" %>
<%@ page import="java.sql.Timestamp" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="article" class="com.boardone.BoardVO" scope="page">

<jsp:setProperty property="*" name="article"/>
</jsp:useBean>
<%
article.setRegdate(new Timestamp(System.currentTimeMillis()));
article.setIp(request.getRemoteAddr());

BoardDAO dbPro = BoardDAO.getInstance();
dbPro.insertArticle(article);

response.sendRedirect("list.jsp");



%>