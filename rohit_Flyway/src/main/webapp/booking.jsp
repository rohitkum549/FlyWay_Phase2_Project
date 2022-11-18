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
<title>Booking....</title>
<%@ include file="design/CSS.jsp"%>
</head>
<body>
	<form action="conformTicket.jsp" method="post">
	<br><br><br>
	<center>
		<br> Flight Number <input type="text" name="flight" value="">
			<button type="submit" class="btn btn-danger">Conform</button>
		</center>
	</form>
	<br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="design/footer.jsp"%>
</body>
</html>