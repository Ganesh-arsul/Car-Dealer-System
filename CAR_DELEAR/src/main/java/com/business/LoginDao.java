package com.business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {  
    public static boolean validate(java.lang.String name, java.lang.String pass, java.lang.String userType) {
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
        ResultSet rs = null;  
  
        java.lang.String url = "jdbc:mysql://localhost:3306/car";
        java.lang.String driver = "com.mysql.cj.jdbc.Driver";  
        java.lang.String userName = "root";
        java.lang.String password = "";
        
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager.getConnection(url, userName, password);
  
            pst = conn.prepareStatement("SELECT * FROM login_signup WHERE email=? AND password=? AND userType=?");
            pst.setString(1, name);  
            pst.setString(2, pass);
            pst.setString(3, userType);
  
            rs = pst.executeQuery();  
            status = rs.next();  
  
        } catch (Exception e) {  
            System.out.println(e);  
        } finally {  
            try {  
                if (rs != null) rs.close();  
                if (pst != null) pst.close();  
                if (conn != null) conn.close();  
            } catch (SQLException e) {  
                e.printStackTrace();  
            }  
        }  
        return status;  
    }  
}
