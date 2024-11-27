package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;

import com.business.TestDrive;


public class CarServiceDao extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {

            PrintWriter out = res.getWriter();
            String subscriptionId= String.valueOf(Math.random());
            String model = req.getParameter("model");
            String brand = req.getParameter("brand");
            String variant = req.getParameter("variant");
            String name = req.getParameter("name");
            String mobile = req.getParameter("mobile");
            String date = req.getParameter("date");
            String time = req.getParameter("time");
            String custId = req.getParameter("custId");


            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
            PreparedStatement pstm = con.prepareStatement("insert into car_service values(?,?,?,?,?,?,?)");

            pstm.setString(1,brand);
            pstm.setString(2,model);
            pstm.setString(3, variant);
            pstm.setString(4,name);
            pstm.setString(5,mobile);
            pstm.setString(6,date);
            pstm.setString(7,time);
            int b1 = pstm.executeUpdate();
            if (b1 > 0) {
                JDialog dialog=new JDialog();
                dialog.setAlwaysOnTop(true);
                JOptionPane.showMessageDialog(dialog,"You have successfully booked service.");
                res.sendRedirect("servicesBuyer.jsp");
            } else {
                out.println("Data is not inserted");
            }


        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}