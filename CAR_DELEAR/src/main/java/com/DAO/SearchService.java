package com.DAO;

import com.business.addCarService;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.sql.*;

public class SearchService {
        public static addCarService validate(String brand, String model, HttpServletRequest request, HttpServletResponse response) {
            boolean status = false;
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            addCarService addCar = new addCarService();

            String url = "jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance";
            String dbName = "car";
            String driver = "com.mysql.jdbc.Driver";
            String userName = "root";
            String password = "password";
            try {
                Class.forName(driver).newInstance();
                conn = DriverManager
                        .getConnection(url,userName,password);

                pst = conn
                        .prepareStatement("select * from car where brand=? and model=? ");
                pst.setString(1, brand);
                pst.setString(2, model);

                rs = pst.executeQuery();
                status = rs.next();
                if(!status){
                    JDialog dialog=new JDialog();
                    JOptionPane.showMessageDialog(dialog,"Car Not Found");
                    RequestDispatcher rd=request.getRequestDispatcher("CarSearchBuyer.jsp");
                    rd.forward(request,response);
                }
                else {
                    for (int i = 1; i < 5; i++) {
                        try {
                            if (status) {
                                addCar.setBrand(rs.getString("brand"));
                                addCar.setCategory(rs.getString("category"));
                                addCar.setModel(rs.getString("model"));
                                addCar.setFuel(rs.getString("fuel"));
                                addCar.setColor(rs.getString("color"));
                                addCar.setEngine(rs.getString("engine"));
                                addCar.setBreakingsystem(rs.getString("breakingSystem"));
                                addCar.setPic(rs.getString("pic"));
                            }

                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }

            } catch (Exception e) {
                System.out.println(e);
            }
            return addCar;

        }
    }
