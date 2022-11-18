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


public class paymentServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String age=request.getParameter("age");
		String flight=request.getParameter("flight");
		try 
		{
			Connection con = DbConnection.initializeDatabase();
			PreparedStatement stm=con.prepareStatement("insert into ticket values(NULL,?,?,?,?,?)");
			stm.setString(1, name);
			stm.setString(2, phone);
			stm.setString(3, email);
			stm.setString(4, age);
			stm.setString(5, flight);
			stm.execute();
			stm.close();
			con.close();
			System.out.println("Payment...");
			response.sendRedirect("payment.jsp");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			response.sendRedirect("booking.jsp");
			System.out.println(e);
		}
	}

}
