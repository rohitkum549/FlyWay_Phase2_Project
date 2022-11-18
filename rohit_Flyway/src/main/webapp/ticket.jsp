<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="dao.DbConnection"%>
<!DOCTYPE html>
<html lang="en" >
<%
		 ResultSet rs=null;
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String age=request.getParameter("age");
String flight=request.getParameter("flight");
String price=request.getParameter("price");

		try {
			//String id = request.getParameter("flight");
			Connection con = DbConnection.initializeDatabase();
			PreparedStatement stm = con.prepareStatement("select * from flight_db where id=?");
			//			stm.set(1,id);  
			stm.setString(1, flight);
			rs = stm.executeQuery();
			rs.next();
			String start = rs.getString("start");
			String end = rs.getString("end");
			String date = rs.getString("date");
			String company = rs.getString("company");
		%>


<head>
<span class="checkmark">
    <div class="checkmark_stem"></div>
    <div class="checkmark_kick"></div>
</span>
		<%
		out.print("<center><h1 style=color:red>!!Ticket!!</h1></center>");
		%>
  <meta charset="UTF-8">
  <title>Ticket</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'><link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">

	<div class="ticket basic">
		<p>Admit One</p>
	</div>

	<div class="ticket airline">
		<div class="top">
			<h1>Welcome To <%out.print(company); %></h1>
			<div class="big">
				<p class="from"><%out.print(start); %></p>
				<p class="to"><i class="fas fa-arrow-right"></i><%out.print(end); %></p>
			</div>
			<div class="top--side">
				<i class="fas fa-plane"></i>
				<p><%out.print(start); %></p>
				<p><%out.print(end); %></p>
			</div>
		</div>
		<div class="bottom">
			<div class="column">
				<div class="row row-1">
					<p><span>Flight</span><%out.print(flight); %></p>
					<p class="row--right"><span>Price</span><%out.print(price); %></p>
				</div>
				<div class="row row-2">
					<p><span>Date</span><%out.print(date); %></p>
					<p class="row--center"><span>Departs</span>11:00 AM</p>
					<p class="row--right"><span>Arrives</span>1:05 PM</p>
				</div>
				<div class="row row-3">
					<p><span>Passenger</span><%out.print(name); %></p>
					<p class="row--right"><span>Phone</span><%out.print(phone); %></p>
				</div>
			</div>
			<div class="bar--code"></div>
		</div>
	</div>

	<div class="info">
		<p>Based on <a href="https://dribbble.com/shots/11399236-Boarding-Pass" target="_blank">this</a> Dribbble from Barna Erdei</p>
	</div>

</div>
<!-- partial -->
  <script  src="./script.js"></script>
		<%
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
</body>
</html>

