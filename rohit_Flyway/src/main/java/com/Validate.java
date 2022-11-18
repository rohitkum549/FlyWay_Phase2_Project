package com;

import java.sql.*;

public class Validate {
    public static boolean checkUser(String username,String password) 
    {
        boolean st =false;
        try {

            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rohit_runway","root","");
            PreparedStatement ps = con.prepareStatement("select * from user_signup where uname=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs =ps.executeQuery();
            st = rs.next();
//            String input=("s")
            System.out.println(rs);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                 
    }   
}
