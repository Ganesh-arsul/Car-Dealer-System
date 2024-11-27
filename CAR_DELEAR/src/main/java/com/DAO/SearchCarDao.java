package com.DAO;

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
import java.sql.ResultSet;
import java.sql.SQLException;


public class SearchCarDao extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n=request.getParameter("brand");
        String p=request.getParameter("model");

        {
            HttpSession session = request.getSession(false);
            if(session!=null){
                session.setAttribute("name", n);
            addCarService add=com.DAO.SearchService.validate(n, p,request,response);
                if(add.getBrand().equals(null)){
                    JDialog dialog=new JDialog();
                    JOptionPane.showMessageDialog(dialog,"Car Not Found");

                }
                RequestDispatcher rd=request.getRequestDispatcher("CarSearchResult.jsp");
                request.setAttribute("carBrand",add.getBrand());
                request.setAttribute("carModel",add.getModel());
                request.setAttribute("carColor",add.getColor());
                request.setAttribute("carPrice",add.getPrice());
                request.setAttribute("carImage",add.getPic());

                rd.forward(request,response);
            }

            else{
                //out.print("<p style=\"color:red\">Sorry username or password error</p>");
                JDialog dialog=new JDialog();
                dialog.setAlwaysOnTop(true);
                JOptionPane.showMessageDialog(dialog,"Car Not Found");
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

