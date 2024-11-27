package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;

import com.business.TestDrive;


public class PostAdvertiseDao extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {

            PrintWriter out = res.getWriter();
            String subscriptionId= String.valueOf(Math.random());
            String heading = req.getParameter("heading");
            String pic = req.getParameter("pic");
            String custId = req.getParameter("custId");
            String contact = req.getParameter("contact");
            boolean status = false;

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
            PreparedStatement pstm = con.prepareStatement("insert into advertisement values(?,?,?,?)");
            ResultSet rs = null;
            pstm.setString(1,heading);
            pstm.setString(2,pic);
            pstm.setString(3,custId);
            pstm.setString(4,contact);

            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
            PreparedStatement pstm1 = con.prepareStatement("select * from subscription where cust_Id = ?");
            pstm1.setString(1,custId);
            rs = pstm1.executeQuery();


            status = rs.next();
            if(status){
                int b1 = pstm.executeUpdate();
                if (b1 > 0) {
                    JDialog dialog=new JDialog();
                    dialog.setAlwaysOnTop(true);
                    JOptionPane.showMessageDialog(dialog,"You have successfully posted advertisement");
                    res.sendRedirect("subscription.jsp");
                } else {
                    out.println("Data is not inserted");
                }
            }
            else{
                JDialog dialog=new JDialog();
                dialog.setAlwaysOnTop(true);
                JOptionPane.showMessageDialog(dialog,"Please subscribe to post advertisement");
                res.sendRedirect("subscription.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}