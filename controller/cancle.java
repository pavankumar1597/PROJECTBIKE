package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import model.customermodel;

public class cancle extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		customermodel cmCustomermodel =new customermodel();
		System.out.println("hey i am here in cancle java");
		HttpSession sesion = req.getSession();
		try { String canString =(String)sesion.getAttribute("vnumber");
		System.out.println(canString);
		
			boolean c =cmCustomermodel.trans(canString);
			if(c==true) {
				
				res.sendRedirect("customerpage.html");
			}
			else {
				res.sendRedirect("error.jsp");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
