<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errorcito.jsp" %>
    <%@ taglib prefix = "z" uri = "WEB-INF/miTag.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="styleSheet" href="<%= request.getContextPath() %>/CSS/bootstrap.min.css"/>
</head>
<body>
	<h1>Bienvenido</h1>
	<h2><%= 2 + 0 %></h2>
	<br/>
	
	<z:Jumbo titulo = "Gran TAG" mensaje="hola a todos desde el atributo"/>
	<br/>
	<z:Jumbo>
		Este mensaje está en medio del cuerpo
	</z:Jumbo>
</body>
</html>