<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searching....</title>
<%@ include file="design/CSS.jsp" %>
<%@ include file="design/navbar.jsp"%>
</head>
<body>
	<center>
	<br>
	<h1 style="color:brown">Search the Flight</h1>
		<div
			style="border: 5px solid black; width: 25%; border-radius: 20px; padding: 20px"
			align="center">
			<form action="flightDetails.jsp" method="post">
				<label for="from">From :</label> <input type="text" name="from"
					id="from"><br>
				<br> <label for="to">To :</label> <input type="text" name="to"
					id="to"><br>
				<br> <label for="departure">Departure :</label> <input
					type="date" name="date" id="date"><br>
				<br> <input type="submit" value="Search"> <input
					type="reset">
			</form>
		</div>
	</center>
</body>
<div style="margin-top:100px">
<br>
<%@ include file="design/footer.jsp" %>
</div>
</html>