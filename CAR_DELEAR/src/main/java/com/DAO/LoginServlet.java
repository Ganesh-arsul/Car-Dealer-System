package com.DAO;
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
import javax.swing.JDialog;
import javax.swing.JOptionPane;
  
public class LoginServlet extends HttpServlet{  
  
    private static final long serialVersionUID = 1L;  
    
    public void loginCheck()
    {
    	
    	
    }
  
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
  
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();    
          
        String n=request.getParameter("email");
        String p=request.getParameter("password");
        String userType=request.getParameter("userType");
          
        {
        HttpSession session = request.getSession(false);  
        if(session!=null)  
        session.setAttribute("name", n);  
  
        if(com.business.LoginDao.validate(n, p,userType)){
                RequestDispatcher rd=request.getRequestDispatcher("HomePageBuyer.jsp");
                request.setAttribute("userType",userType);
                request.setAttribute("email",n);
                rd.forward(request,response);
        }
        else{    
            //out.print("<p style=\"color:red\">Sorry username or password error</p>"); 
        	JDialog dialog=new JDialog();
        	dialog.setAlwaysOnTop(true);
        	JOptionPane.showMessageDialog(dialog,"insert correct username,password or userType..");
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");    
            rd.include(request,response);    
        }    
        

        out.close();    
    }    }
}