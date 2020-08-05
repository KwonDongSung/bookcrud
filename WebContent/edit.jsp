<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

	<%@page import="dao.BookDao,bean.Book"%>

	<%
		String id = request.getParameter("id");
	Book u = BookDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="editbook.jsp" method="post">
		<div class="form-horizontal">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="title">Title</label>
				<div class="col-sm-8">
					<input autofocus class="form-control" name="title"
						value="<%=u.getTitle()%>">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="author">Author</label>
				<div class="col-sm-7">
					<input class="form-control" name="author"
						value="<%=u.getAuthor()%>">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="comments">Comments</label>
				<div class="col-sm-10">
					<textarea class="form-control" name="comments" rows="7" cols="20"
						placeholder="<%=u.getComments()%>"></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2"></label>
				<div class="col-sm-10">
					<input type="submit" value="Save" class="btn btn-default btn-success"> 
					<a href="index.jsp" class="btn btn-outline-dark cancel">Cancel</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>