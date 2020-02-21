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
import javax.websocket.SendResult;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule.UpdateKind;

import model.ownermodel;

public class link extends HttpServlet {
	
	
	String  name,unique_id,contact_info,password,garage_name,gst,serviced,capacity,location,address,experience,workers=null;

	public void doPost (HttpServletRequest req,HttpServletResponse res) throws IOException {
System.out.println("super raju");
	
   	  ownermodel model =new ownermodel();
            boolean check1 = false, check2 = false;


try {
	check1 = model.verifyduplicateo (req.getParameter("unique_id"),req.getParameter("contact_info"),req.getParameter("gst"));
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
			
	 		if (check1==true){
	 	res.sendRedirect("errorlink.jsp");
	 		}
	 		else {///      gettinngparameter
	 		///////////////////////////////////
	          System.out.println(" to access the web page");
	          
	          
	          
	          model.setName(req.getParameter("name"));
	         model.setPassword(req.getParameter("password"));
	         model.setGarage_name(req.getParameter("garage"));
	         model.setName(req.getParameter("unique_id"));
	         model.setPassword(req.getParameter("contact_info"));
	         model.setGarage_name(req.getParameter("gst"));
	          model.setServiced(req.getParameter("serviced"));
	          model.setCapacity(req.getParameter("capacity"));
	          model.setLocation(req.getParameter("location"));
	          model.setAddress (req.getParameter("address"));
	          model.setExperience(req.getParameter("experience"));
	          model.setWorkers (req.getParameter("workers"));
	 	   
	      
			try {
				check2 = model.ownerdb();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         if(check2==true) {
	 				res.sendRedirect("thanksforlinking.html");}
	         else {
	        	 System.out.println("error occured");
	         }
				
				}
		
		
		
		
	}

	}
