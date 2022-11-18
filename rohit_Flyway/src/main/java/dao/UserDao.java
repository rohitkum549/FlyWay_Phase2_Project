package dao;
import dao.UserDetails;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DbConnection;
public class UserDao 
{
		private String jdbcURL = "jdbc:mysql://localhost:3306/rohit_runway";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "";
//	    private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
	    private static final String SELECT_ALL_USERS = "select * from users";
	    private static final String DELETE_USERS_SQL = "delete from user_signup where uname = ?;";
//	    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";
	    public UserDao()
	    {
	    	
	    }
	    // create connection 
	    protected Connection getConnection() {
	        Connection connection = null;
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return connection;
	    }
//	    public boolean updateUser(UserDetails user) throws SQLException {
//	        boolean rowUpdated;
//	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
//	            statement.setString(1, user.getName());
//	            statement.setString(2, user.getUname());
//	            statement.setString(3, user.getCountry());
//	            statement.setInt(4, user.getId());
//
//	            rowUpdated = statement.executeUpdate() > 0;
//	        }
//	        return rowUpdated;
//	    }
	    
	    
	    
	    public List < UserDetails > selectAllUsers() {

	        // using try-with-resources to avoid closing resources (boiler plate code)
	        List < UserDetails > users = new ArrayList < > ();
	        // Step 1: Establishing a Connection
	        try (Connection connection = getConnection();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String name = rs.getString("name");
	                int  phone = rs.getInt("phone");
	                String uname = rs.getString("uname");
	                String password = rs.getString("password");
	                users.add(new UserDetails(id, name, phone, uname,password));
	            }
	        }  catch(Exception e) {
	            e.printStackTrace();
	        }
	        return users;
	    }
	    public boolean deleteUser(String uname) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); 
	        		PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
	            statement.setString(1, uname);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }
}
