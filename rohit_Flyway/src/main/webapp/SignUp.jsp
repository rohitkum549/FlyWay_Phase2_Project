<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<%@ include file="design/CSS.jsp" %>
<%@ include file="design/navbar.jsp" %>
</head>
<body >
	<center>
		<h1 style="color: red">Register your Self</h1>
		<form action="SignUpServlet" method="post">
			Name <input type="text" name="name" value=""> <br> <br>
			Phone <input type="number" name="phone" value=""> <br> <br>
			Username <input type="text" name="username" value=""> <br>
			<br> Password <input type="password" name="password" value="">
			<br> <br> <button type="submit"class="btn btn-primary">Sign Up</button>
		</form>
	</center>
</body>
<div style="margin-top:150px">
<%@ include file="design/footer.jsp" %>
</div>
</html>