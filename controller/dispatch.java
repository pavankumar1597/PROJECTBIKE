package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.customermodel;


public class dispatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       boolean check=false ;
       protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	  String vnumberString =req.getParameter("value") ;
         
    	  customermodel mCustomermodel =  new customermodel();
    	 try {
			check = mCustomermodel.dispatch(vnumberString);
			System.out.println(check);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     if(check==true) {
    	 
    	 HttpSession sessin  = req.getSession(true);
    	 sessin.setAttribute("vehicalnb", vnumberString);
    	 res.sendRedirect("dispatchsucc.jsp");
     }
       
       }
    

}

