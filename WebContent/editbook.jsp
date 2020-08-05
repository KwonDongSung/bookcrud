<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="dao.BookDao"%>
	<jsp:useBean id="u" class="bean.Book"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
		int i = BookDao.update(u);
	response.sendRedirect("index.jsp");
	%>
</body>
</html>