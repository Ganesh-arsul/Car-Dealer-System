package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.business.addCarService;

public class addCarDao {

    public int insert(addCarService dto) throws Exception {
        Connection con = null;
        PreparedStatement pstm = null;
        int result = 0;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");

            // Prepare the SQL insert statement
            pstm = con.prepareStatement("INSERT INTO car (brand, fuel, model, color, engine, breakingsystem, category, price, pic) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            
            // Set the parameters
            pstm.setString(1, dto.getBrand());
            pstm.setString(2, dto.getFuel());
            pstm.setString(3, dto.getModel());
            pstm.setString(4, dto.getColor());
            pstm.setString(5, dto.getEngine());
            pstm.setString(6, dto.getBreakingsystem());
            pstm.setString(7, dto.getCategory());
            pstm.setString(8, dto.getPrice());
            pstm.setString(9, dto.getPic());

            // Execute the insert
            result = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            // Close resources to avoid memory leaks
            if (pstm != null) {
                try {
                    pstm.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return result;
    }
}
