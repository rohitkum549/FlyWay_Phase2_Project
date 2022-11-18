<%@page import="dao.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.DbConnection"%>
<%@ page import="dao.UserDetails"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ include file="design/CSS.jsp"%>
<%@ include file="design/navbar.jsp"%>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
</head>
<body>
	<%
	UserDetails u = new UserDetails();

	try {

		Connection con = DbConnection.initializeDatabase();
		PreparedStatement stm = con.prepareStatement("select * from user_signup");
		//			stm.set(1,id);  
		ResultSet rs = stm.executeQuery();
	%>
	<%
	out.print("<center><h1 style=color:red>!!List Of Registed Users!!</h1></center>");
	%>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Phone</th>
				<th scope="col">Uname</th>
				<th scope="col">Password</th>

			</tr>
		</thead>

		<tbody>
			<tr>
				<%
				while (rs.next()) {
				%>
				<td>
					<%
					out.print(rs.getInt("id"));
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("name"));
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("phone"));
					%>
				</td>
				<td>
					<%
					String uname1 = rs.getString("uname");
					out.print(uname1);
					//u.setUname(uname1);
					%>
				</td>
				<td>
					<%
					out.print(rs.getString("password"));
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
	</form>
	<td>
	<center><a href="Adminedit.jsp" class="btn btn-danger ml-3">Edit </a>
		<a href="AdminDelete.jsp" class="btn btn-primary ml-3">Delete </a></center>
		</form> <%@ include file="design/footer.jsp"%>
</body>
</html>
