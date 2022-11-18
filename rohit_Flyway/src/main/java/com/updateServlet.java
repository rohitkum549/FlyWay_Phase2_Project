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

public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		try 
		{
			Connection con = DbConnection.initializeDatabase();
			PreparedStatement stm=con.prepareStatement("UPDATE `user_signup` SET name=? ,phone=?,password=? WHERE uname=?");
//			stm.setInt(1,24);
			stm.setString(1, name);
			stm.setString(2, phone);
			stm.setString(3, password);		
			stm.setString(4, username);
			
			stm.execute();
			stm.close();
			con.close();
//			System.out.println("Update SuccesFully");
			response.sendRedirect("customerDetails.jsp");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			response.sendRedirect("SignUp.jsp");
			System.out.println(e);
		}
	
	}

}
