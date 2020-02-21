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

/**
 * Servlet implementation class table
 */
public class table extends HttpServlet {
	private static final long serialVersionUID = 1L;
       String name,vnumber,contact_info,location,nearby,pickup,model,service_type,message;
       boolean c1 =false ,c2 =false;
       int price;
  
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		   customermodel cm =new customermodel();
		   
	          name	= req.getParameter("name");
	          contact_info=	req.getParameter("contact");
	          vnumber=	req.getParameter("vnumber");
	          location=	req.getParameter("location");
	          nearby =req.getParameter("nearby");
	         pickup	= req.getParameter("pickup");
	         model=req.getParameter("model");
	         service_type=	req.getParameter("type");
	         message=	req.getParameter("message");
	       
	        try {
			
	        	
	        	
	        	c1 =cm.requestverify("vnumber");
	        	
	       
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	        if (c1==true) {
	        	res.sendRedirect("taken.jsp");
	        }else {
	        	cm.setName(name);
	        	cm.setVnumber(vnumber);
	        	cm.setContact_info(contact_info);
	        	cm.setLocation(location);
	        	cm.setNearby(nearby);
	        	cm.setPickup(pickup);
	        	cm.setModel(model);
	        	cm.setService_type(service_type);
	        	cm.setMessage(message);
	        	
	        	
	        	
	        	try {
					c2 =cm.requesttable();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        	if(c2==true)
	        	{   HttpSession session = req.getSession(true);
 				session.setAttribute("name", name);
 				session.setAttribute("vnumber", vnumber);
 				session.setAttribute("contact_info", contact_info);
 				session.setAttribute("location", location);
 				session.setAttribute("nearby", nearby);
 				session.setAttribute("pickup", pickup);
 				session.setAttribute("model", model);
 				session.setAttribute("service_type", service_type);
 				session.setAttribute("message", message);
 				
 				PrintWriter p =res.getWriter();
 				
 				  try {
					price =cm.getcost(model,service_type);
					session.setAttribute("price", price);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
 				p.print("loading");
 				res.sendRedirect("table.jsp"); 	
	    			
	        		
	        	      	
	        }
	        	else {
	        		res.sendRedirect("error.jsp");
	        	}
	        	
	        	
	        	
	    
		
			 
		   
		   
		   
	        }}}


