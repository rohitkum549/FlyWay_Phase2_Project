package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DbConnection;

public class customerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			Connection con=DbConnection.initializeDatabase();
			PreparedStatement stm=con.prepareStatement("select * from user_signup");
//			stm.set(1,id);  
			ResultSet rs=stm.executeQuery();  
//			while(rs.next())
//			{
//				int id = rs.getInt("id");
//                String name = rs.getString("name");
//                String phone = rs.getString("phone");
//                String uname = rs.getString("uname");
//                String password = rs.getString("password");
//
//                System.out.println(id + "\t\t" + name+ "\t\t" + phone+"\t\t"+uname+"\t\t"+password);
//			}
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
		} 
	}

}
