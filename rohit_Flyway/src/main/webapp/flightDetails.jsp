<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="dao.DbConnection"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>flight Details</title>
</head>
<body>

	<%
	try {
		String start = request.getParameter("from");
		String end = request.getParameter("to");
		String date = request.getParameter("date");

		Connection con = DbConnection.initializeDatabase();
		PreparedStatement stm = con.prepareStatement("select * from flight_db where start=? and end=? and date=?");
		//			stm.set(1,id);  
		stm.setString(1, start);
		stm.setString(2, end);
		stm.setString(3, date);
		ResultSet rs = stm.executeQuery();
		
	%>
	<%
	out.print("<center><h1 style=color:red>!!Flight Details!!</h1></center>");
	%>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Flight No:</th>
				<th scope="col">From</th>
				<th scope="col">To</th>
				<th scope="col">Date</th>
				<th scope="col">Airline</th>
				<th scope="col">Price $</th>

			</tr>
		</thead>

		<tbody>
			<tr>
				<%
				while (rs.next()) {
					String id = rs.getString("id");
					start = rs.getString("start");
					end = rs.getString("end");
	                 date = rs.getString("date");
	                 String company=rs.getString("company");
	                 int price=rs.getInt("price");
				%>
				<td>
					<%
					out.print(rs.getString("id"));
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("start"));
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("end"));
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("date"));
					//u.setUname(uname1);
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("company"));
					%>
				</td>
				<td>
					<%
					out.print(rs.getInt("price"));
					%>
				</td>


			</tr>

		</tbody>
		
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
	<center><a href="booking.jsp" class="btn btn-danger ml-3">BOOKING </a>
		<a href="SearchFlight.jsp" class="btn btn-primary ml-3">Go Back </a></center>
</body>
</html>