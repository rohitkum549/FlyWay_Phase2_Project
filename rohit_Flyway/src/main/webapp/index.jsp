<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flyway</title>
<%@ include file="design/CSS.jsp"%>
<%@ include file="design/navbar.jsp"%>
</head>
<body >
	<center>
		<h1 style="color: gray">!!! Welcome To Flyway!!!</h1>
	</center>
	<%
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user != null) {
	%>
	<p>
		Welcome
		<%=user.get("name")%></p>
	<a href="LogoutServlet.java">Logout</a>
	<%
	}
	%>
	<center>
		<div
			style="border: 5px solid black; width: 25%; border-radius: 20px; padding: 20px"
			align="center">
			<form action="CharterFlights" method="post">
				<label for="from">From :</label> <input type="text" name="from"
					id="from"><br>
				<br> <label for="to">To :</label> <input type="text" name="to"
					id="to"><br>
				<br> <label for="departure">Departure :</label> <input
					type="date" name="departure" id="departure"><br>
				<br> <label for="travellers">Travellers :</label> <input
					type="number" name="travellers" id="travellers"><br>
				<br> <input type="submit" value="Search"> <input
					type="reset">
			</form>
		</div>
	</center>
<br><br><br>
	<%@ include file="design/footer.jsp"%>
</body>
</html>