package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// This class can be used to initialize the database connection
public class DbConnection 
{
	public static Connection initializeDatabase()
			throws SQLException, ClassNotFoundException
	{
		String dbDriver = "com.mysql.cj.jdbc.Driver";
		String dbURL = "jdbc:mysql://localhost:3306/";
		// Database name to access
		String dbName = "rohit_runway";
		String dbUsername = "root";
		String dbPassword = "";

		Class.forName(dbDriver);
		Connection con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword);
		return con;
	}
}