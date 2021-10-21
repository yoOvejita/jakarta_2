<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>TikTakToe</title>
	<link rel="styleSheet" href="<%= request.getContextPath() %>/CSS/bootstrap.min.css"/>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-4 col-md-1"></div>
			<div class="col-sm-4 col-lg-10">
				<form action="login" method="POST">
					<input type="text" name="usuario"/><br/>
					<input type="text" name="password"/><br/>
					<input class="btn btn-success" type="submit" value="LOGIN"/>
				</form>
			</div>
			<div class="col-sm-4 col-lg-1"></div>
		</div>
	</div>
</body>
</html>