package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.business.SignupService;
import com.DAO.SignupDao;

public class Signup1 extends HttpServlet {
	
	        protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException 
			{
	try{
		
		PrintWriter out = res.getWriter();
		
		String fname=req.getParameter("fname");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String lname=req.getParameter("lname");
		String userType=req.getParameter("userType");
		out.println("welcome");
		
		SignupService si = new SignupService();
		si.setEmail(email);
		si.setPassword(password);
		si.setLname(lname);
		si.setFname(fname);
		si.setUserType(userType);
		SignupDao sd = new SignupDao();
		
		int b = sd.insert(si);
		
		if(b>0)
		{
	     // out.println("Data is inserted");
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			res.sendRedirect("http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/");
		}
		else
		{
		 out.println("Data is not inserted");
		}
     }
	catch(Exception e)
	{
		e.printStackTrace();
	}
			}
}