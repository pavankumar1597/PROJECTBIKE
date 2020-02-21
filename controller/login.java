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
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule.UpdateKind;

import model.customermodel;

public class login extends HttpServlet {
	
	String  cemail ,cpswd ;

	public void doPost (HttpServletRequest req,HttpServletResponse res) throws IOException {
		cemail =	req.getParameter("cemail");
		cpswd=	req.getParameter("cpswd");
		customermodel cm =new  customermodel();
		boolean c1=false;
		try {
			c1 = cm.login(cemail,cpswd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   	  
		
  

	 		if(c1==true) {
	 			HttpSession session = req.getSession(true);
	 			String unumb = cm.getC_phonenumber();
	 			String uname= cm.getc_name();
	 		System.out.println(unumb +"    "+uname);
	 			session.setAttribute("name", uname);
	 			session.setAttribute("unumb", unumb);
	 			
	 			
	 			
	 			
	 			
	 			res.sendRedirect("welcome.jsp");
	 		}
	 		else {res.sendRedirect("loginfail.html");
	 		}
				
				}
		
		
		
		
	

	}