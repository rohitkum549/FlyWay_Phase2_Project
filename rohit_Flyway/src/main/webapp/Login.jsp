<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@ include file="design/CSS.jsp" %>
<%@ include file="design/navbar.jsp"%>
</head>
<body>
	<center>
		<h1 style="color: blue">Login in Flyway</h1>
		<form action="LoginServlet" method="post">
			<br> Username  <input type="text" name="username" value=""> <br>
			<br> Password <input type="password" name="password" value="">
			<br> <br><center><button type="submit"class="btn btn-primary">Login In</button></center>
		</form>

		<!-- Connection from login to SignUp -->
		<br>
	</center>
</body>
<div style="margin-top:150px">
<br><br>
<%@ include file="design/footer.jsp" %>
</div>
</html>