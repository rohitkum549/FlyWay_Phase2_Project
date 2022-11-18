<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@ include file="design/CSS.jsp"%>
<%@ include file="design/navbar.jsp"%>
</head>
<body>
	<center>
		<h1 style="color: gray">Admin Login</h1>
		<form action="adminLogin" method="post">
			<br> Username <input type="text" name="username" value="">
			<br> <br> Password <input type="password" name="password"
				value=""> <br> <br>
			<center>
				<input type="submit" value=" Admin Login In">
			</center>
		</form>

		<!-- Connection from login to SignUp -->
		<br>
	</center>
</body>
<div style="margin-top: 150px">
<br><br><br>
	<%@ include file="design/footer.jsp"%>
</div>
</html>