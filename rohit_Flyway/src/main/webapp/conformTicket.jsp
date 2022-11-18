<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="dao.DbConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conform</title>
</head>
<body bgcolor="33F0FF">
	<center>

		<%
		 ResultSet rs=null;
		try {
			String id = request.getParameter("flight");
			Connection con = DbConnection.initializeDatabase();
			PreparedStatement stm = con.prepareStatement("select * from flight_db where id=?");
			//			stm.set(1,id);  
			stm.setString(1, id);
			rs = stm.executeQuery();
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
					rs.next();
					id = rs.getString("id");
					String start = rs.getString("start");
					String end = rs.getString("end");
					String date = rs.getString("date");
					String company = rs.getString("company");
					int price = rs.getInt("price");
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
		</table>
		<%
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

		<h1 style="color: red">Provide Your Details</h1>
		<form action="ticket.jsp" method="post">
			Name <input type="text" name="name" value=""> <br> <br>
			Phone <input type="number" name="phone" value=""> <br> <br>
			Email <input type="email" name="email" value=""> <br> <br>
			Age <input type="age" name="age" value=""> <br>
			<br> Flight No: <input type="text" name="flight" value="<%out.print(rs.getString("id"));%>">
			<center><h1 style=color:red>!!Payment......!!</h1></center>
			<br> Card Number <input type="text" name="Card" value=""><br>
			<br> Card Holder <input type="text" name="holder" value=""><br>
			<br> CVV <input type="password" name="CVV" value=""><br>
			<br> Price <input type="text" name="price" value="<%
						out.print(rs.getInt("price"));
						%>"><br>
			<br> Donate to Covid-2319 Fund<input type="checkbox"
				value="Proctect your Self"> <br> Team & Condition <input
				type="checkbox" value="Proctect your Self"> <br> <br>

			<button type="submit" class="btn btn-primary">Payment</button>

		</form>
	</center>
</body>

</html>