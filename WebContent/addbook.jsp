<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<%@page import="dao.BookDao"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="bean.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i= BookDao.save(u);  
if(i>0){  
response.sendRedirect("addbook-success.jsp");  
}else{  
response.sendRedirect("addbook-error.jsp");  
}  
%>  
</body>
</html>