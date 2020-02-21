package controller;


import java.beans.Statement;
import java.io.Closeable;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customermodel;

public class register extends HttpServlet {
	boolean check1;
	boolean check2;
	public void doPost (HttpServletRequest req,HttpServletResponse res) throws IOException {

		
   	  PrintWriter p = res.getWriter();
   	  
  	customermodel cm =new customermodel();
   	 try {
		check1=cm.verifyduplicatec(req.getParameter("phnb"), req.getParameter("email") ) ;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace(); 
	}
   	  
        if (check1){
	 	res.sendRedirect("error.jsp");
	 		   }
	 		else {
	 		
	         cm.setC_name(req.getParameter("name"));
	 	    cm.setC_password(req.getParameter("enpass"));
	 	   cm.setC_email(req.getParameter("email"));
	 	   cm.setC_phonenumber(req.getParameter("phnb"));
	 	 try {
			check2 =cm.customerdb();
			
			if(check2) {
			res.sendRedirect("welcome.jsp");
		}} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 				
	 			
	 				
}
	 			
	 			

	}
}
