package com;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if(Validate.checkUser(username, password))
		{
			out.print("Welcome\t"+username);
			RequestDispatcher rs = request.getRequestDispatcher("SearchFlight.jsp");
			rs.forward(request, response);
		}
		else
		{
			out.println("Username or Password incorrect");
			RequestDispatcher rs = request.getRequestDispatcher("SignUp.jsp");
			rs.include(request, response);
		}
	}  
}