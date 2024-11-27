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


public class SubscriptionDao extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {

            PrintWriter out = res.getWriter();
            int min=20;
            int max=60;
            double random =
                    Math.floor(Math.random() * (+max + 1 - +min)) + +min;
            String subscriptionId= String.valueOf(random);
            String subscriptionType = req.getParameter("subType");
            String paymentType = req.getParameter("paymentType");
            String cardDetails = req.getParameter("cardDetails");
            String custId = req.getParameter("custId");


            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
                PreparedStatement pstm = con.prepareStatement("insert into subscription values(?,?,?,?,?)");

                pstm.setString(1,subscriptionId);
                pstm.setString(2,subscriptionType);
                pstm.setString(3, paymentType);
                pstm.setString(4,cardDetails);
                pstm.setString(5,custId);
                int b1 = pstm.executeUpdate();
                if (b1 > 0) {
                    JDialog dialog=new JDialog();
                    dialog.setAlwaysOnTop(true);
                    JOptionPane.showMessageDialog(dialog,"You have successfully subscribed");
                    res.sendRedirect("subscription.jsp");
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