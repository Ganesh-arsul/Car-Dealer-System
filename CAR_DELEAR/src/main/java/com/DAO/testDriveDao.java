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


public class testDriveDao extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {

            PrintWriter out = res.getWriter();
            String brand = req.getParameter("brand");
            String date = req.getParameter("date");
            String time = req.getParameter("time");
            String model = req.getParameter("model");
            String custId = req.getParameter("custId");
            String type = req.getParameter("type");
            String paymentType= req.getParameter("paymentType");
            String cardDetails = req.getParameter("cardDetails");
            TestDrive testDrive = new TestDrive();
            testDrive.setBrand(brand);
            testDrive.setModel(model);
            testDrive.setCustId(custId);
            testDrive.setTime(time);
            testDrive.setPaymentType(paymentType);
            testDrive.setCreditDebitDetails(cardDetails);
            testDrive.setDate(date);
            addCarDao sd = new addCarDao();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
            if(type.equalsIgnoreCase("testDrive")){
                PreparedStatement pstm = con.prepareStatement("insert into book_test_drive values(?,?,?,?,?)");

                pstm.setString(1, testDrive.getCustId());
                pstm.setString(2, testDrive.getDate());
                pstm.setString(3, testDrive.getTime());
                pstm.setString(4, testDrive.getBrand());
                pstm.setString(5, testDrive.getModel());

                int b1 = pstm.executeUpdate();
                if (b1 > 0) {
                    JDialog dialog=new JDialog();
                    dialog.setAlwaysOnTop(true);
                    JOptionPane.showMessageDialog(dialog,"Test Drive Booked Successfully");
                    res.sendRedirect("CarSearchBuyer.jsp");
                } else {
                    out.println("Data is not inserted");
                }
            }
            else{
                PreparedStatement pstm = con.prepareStatement("insert into payment values(?,?)");

                pstm.setString(1, testDrive.getPaymentType());
                pstm.setString(2, testDrive.getCreditDebitDetails());

                int b1 = pstm.executeUpdate();
                if (b1 > 0) {
                    JDialog dialog=new JDialog();
                    dialog.setAlwaysOnTop(true);
                    JOptionPane.showMessageDialog(dialog,"Car Booked Successfully ");
                    res.sendRedirect("CarSearchBuyer.jsp");
                } else {
                    out.println("Data is not inserted");
                }

            }
            } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}