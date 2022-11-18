<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.DbConnection"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Udate</title>
<%@ include file="design/CSS.jsp"%>
</head>
<body>
	<center>
		<h1 style="color: red">Update By Admin</h1>
		<form action="updateServlet" method="post">
			Name <input type="text" name="name" value=""> <br> <br>
			Phone <input type="number" name="phone" value=""> <br> <br>
			Username <input type="text" name="username" value=""> <br>
			<br> Password <input type="password" name="password" value="">
			<br> <br>
			<button type="submit" class="btn btn-danger">Update</button>
		</form>
	</center>
	<%@ include file="design/footer.jsp"%>
</body>
</html>