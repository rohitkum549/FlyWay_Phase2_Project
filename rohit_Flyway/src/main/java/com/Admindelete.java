package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DbConnection;
import dao.UserDetails;


public class Admindelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String us=request.getParameter("username");
		try {
			Connection con = DbConnection.initializeDatabase();
			PreparedStatement stm = con.prepareStatement("DELETE FROM `user_signup` WHERE uname=?");
			stm.setString(1, us);
			stm.execute();
			response.sendRedirect("customerDetails.jsp");
		} catch (Exception e) 
		{
			e.printStackTrace();
			response.sendRedirect("customerDetails.jsp");
		}
	}

}
