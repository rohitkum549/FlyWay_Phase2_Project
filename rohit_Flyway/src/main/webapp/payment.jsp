<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.DbConnection"%>
<%@ page import="dao.UserDetails"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="design/CSS.jsp"%>
<%@ include file="design/navbar.jsp"%>
<title>Payment....</title>
<%@ include file="design/CSS.jsp"%>
</head>
<body>
<center><h1 style=color:red>!!Payment......!!</h1></center>
	<form action="conformTicket.jsp" method="post">
	<br><br>
	<center>
		<br> Card Number <input type="text" name="Card" value=""><br>
		<br> Card Holder <input type="text" name="holder" value=""><br>
		<br> CVV <input type="password" name="CVV" value=""><br>
		<br> Price <input type="text" name="price" value=""><br>
		
			<br><button type="submit" class="btn btn-danger">Payment</button>
		</center>
	</form>
	<br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="design/footer.jsp"%>
</body>
</html>