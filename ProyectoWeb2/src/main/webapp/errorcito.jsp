<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="styleSheet" href="<%= request.getContextPath() %>/CSS/bootstrap.min.css"/>
</head>
<body>
	<div class="alert alert-danger">
  		<strong>¡ERROR!</strong> <%= exception.getMessage() %>
	</div>
	<h1>ERROR</h1>
	<%= exception.getMessage() %>
</body>
</html>