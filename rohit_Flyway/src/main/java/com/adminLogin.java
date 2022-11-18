package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DbConnection;

public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		// taking from jsp file username , password 
		String username=request.getParameter("username");
		String password=request.getParameter("password");
//		boolean st=true;
		try 
		{
			Connection con = DbConnection.initializeDatabase();
			PreparedStatement ps=con.prepareStatement("select * from admin where uname=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
//			st=rs.next();
			if(rs.next())
			{
				out.println("<h2>Sign In Successfull !</h2>");
				RequestDispatcher rd = request.getRequestDispatcher("customerDetails.jsp");
				rd.forward(request, response);
			}
			else
			{
				out.print("<center><h1> Sorry Wrong Password</h1></center>");
				RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp");
				rd.include(request, response);
			}
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp");
			rd.forward(request, response);
		}
		
	}

}
