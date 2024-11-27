package com.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.business.String;
import com.business.addCarService;
import com.DAO.addCarDao;

public class addCarDetail extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {
            res.setContentType("text/html");
            
            // Fetch parameters from the request and check for null values
            java.lang.String b = req.getParameter("brand");
            java.lang.String f = req.getParameter("fuel");
            java.lang.String m = req.getParameter("model");
            java.lang.String c = req.getParameter("color");
            java.lang.String e = req.getParameter("engine");
            java.lang.String bs = req.getParameter("breakingsystem");
            java.lang.String ct = req.getParameter("category");
            java.lang.String pr = req.getParameter("price");
            java.lang.String p = req.getParameter("pic");

            // Check for required fields
            if (b == null || f == null || m == null || c == null || e == null || bs == null || ct == null || pr == null || p == null ||
                b.isEmpty() || f.isEmpty() || m.isEmpty() || c.isEmpty() || e.isEmpty() || bs.isEmpty() || ct.isEmpty() || pr.isEmpty() || p.isEmpty()) {
                req.setAttribute("error", "All fields are required.");
                RequestDispatcher rd = req.getRequestDispatcher("AddCar.jsp");
                rd.forward(req, res);
                return;
            }

            // Create and set the car details
            addCarService si = new addCarService();
            si.setBrand(b);
            si.setFuel(f);
            si.setModel(m);
            si.setColor(c);
            si.setEngine(e);
            si.setBreakingsystem(bs);
            si.setCategory(ct);
            si.setPrice(pr);
            si.setPic(p);

            // Insert car details into the database
            addCarDao sd = new addCarDao();
            int b1 = sd.insert(si);

            if (b1 > 0) {
                // Forward to success page or send success message
                req.setAttribute("message", "Car Added Successfully");
                RequestDispatcher rd = req.getRequestDispatcher("AddCar.jsp");
                rd.forward(req, res);
            } else {
                req.setAttribute("error", "Failed to add car details.");
                RequestDispatcher rd = req.getRequestDispatcher("AddCar.jsp");
                rd.forward(req, res);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Optional override to redirect GET requests to POST handling
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }
}
