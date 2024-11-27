package com.DAO;

import com.business.TestDrive;
import com.business.addCarService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;


public class SeeAllBookinsAndCars extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n=request.getParameter("seeCars");
        String p=request.getParameter("seeBookins");

        {
            HttpSession session = request.getSession(false);
            if(session!=null) {
                session.setAttribute("name", n);
                boolean status = false;
                Connection conn = null;
                PreparedStatement pst = null;
                ResultSet rs = null;
                TestDrive testDrive = new TestDrive();

                String url = "jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance";
                String dbName = "car";
                String driver = "com.mysql.jdbc.Driver";
                String userName = "root";
                String password = "password";
                ArrayList<TestDrive> testDrives = null;
                try {
                    Class.forName(driver).newInstance();
                    conn = DriverManager
                            .getConnection(url, userName, password);

                    pst = conn
                            .prepareStatement("select * from book_test_drive    ");

                    rs = pst.executeQuery();
                    status = rs.next();
                    testDrives = new ArrayList<>();

                    for (int i = 1; i < 5; i++) {
                        try {
                            if (rs.next()) {
                                testDrive.setBrand(rs.getString("brand"));
                                testDrive.setDate(rs.getString("category"));
                                testDrive.setModel(rs.getString("model"));
                                testDrive.setTime(rs.getString("fuel"));
                                testDrive.setBrand(rs.getString("color"));
                                testDrives.add(testDrive);
                            }
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }

                } catch (Exception e) {
                    System.out.println(e);
                }

                RequestDispatcher rd = request.getRequestDispatcher("showBookings.jsp");
                request.setAttribute("bookings", testDrives);
                rd.forward(request, response);
            }

            else{
                //out.print("<p style=\"color:red\">Sorry username or password error</p>");
                JDialog dialog=new JDialog();
                dialog.setAlwaysOnTop(true);
                JOptionPane.showMessageDialog(dialog,"No bookings found");
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request,response);
            }


            out.close();
        }
    }

    public void destroy()
    {
        System.out.println("Over");
    }
}

