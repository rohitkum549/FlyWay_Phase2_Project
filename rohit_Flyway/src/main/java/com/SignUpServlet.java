package com;
import dao.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SignUpServlet() 
    {
    }


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
			PreparedStatement stm=con.prepareStatement("insert into user_signup values(NULL,?,?,?,?)");
			stm.setString(1, name);
			stm.setString(2, phone);
			stm.setString(3, username);
			stm.setString(4, password);
			stm.execute();
			stm.close();
			con.close();
			System.out.println("SignUp SuccesFully");
			response.sendRedirect("SignUp.jsp");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			response.sendRedirect("SignUp.jsp");
			System.out.println(e);
		}
	}

}
