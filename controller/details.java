package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.customermodel;

public class details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean check=false;
		String v_numberString= request.getParameter("value");
		customermodel cmodel =new customermodel();
		try {
			 check=cmodel.details(v_numberString);
			 if (check==true) {
			HttpSession sssion =request.getSession(true);
			 sssion.setAttribute("name", cmodel.getName());
			 sssion.setAttribute("contact_info",  cmodel.getContact_info());
			 sssion.setAttribute("vnumber", cmodel.getVnumber());
			 sssion.setAttribute("model", cmodel.getModel());
			 sssion.setAttribute("service_type", cmodel.getService_type());
			 sssion.setAttribute("message", cmodel.getMessage());
			System.out.println("session updated");

			response.sendRedirect("details.jsp");
			
			
			 }
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	

}
