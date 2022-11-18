package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DbConnection;


public class searchFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubPrintWriter out=response.getWriter();
		String start=request.getParameter("from");
		String end=request.getParameter("to");
		String date=request.getParameter("date");
		try {
			Connection con=DbConnection.initializeDatabase();
			PreparedStatement stm=con.prepareStatement("select * from flight_db where start=? and end=? and date=?");
			stm.setString(1,start);  
			stm.setString(2,end); 
			stm.setString(3,date); 
			ResultSet rs=stm.executeQuery();  
			while(rs.next())
			{
				String id = rs.getString("id");
				start = rs.getString("start");
				end = rs.getString("end");
                 date = rs.getString("date");
                 String company=rs.getString("company");
                 int price=rs.getInt("price");
                System.out.println(id + "\t\t" + start+ "\t\t" + end+"\t\t"+date+"\t\t"+company+"\t\t"+price);
			}
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
		} 
//		String password=request.getParameter("password");
	}

}