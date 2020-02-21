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
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule.UpdateKind;

public class transport extends HttpServlet {
	
	///       initilization
	///////////////////////////////////
	String url="jdbc:sqlite:D://database//bikemodels//bike_models.db";
	PreparedStatement pstmt =null;
	Connection con =null;
	java.sql.Statement stmt =null;
	ResultSet rSet =null;
	String  name,contact_info,vnumber,vnumber1,location,pickup,nearby,model,service_type,message,status=null;

	public void doPost (HttpServletRequest req,HttpServletResponse res) {

		///      service//// dopost ///doget
		///////////////////////////////////
		try {
			new org.sqlite.JDBC();
        Class.forName("org.sqlite.JDBC");
        con =DriverManager.getConnection(url);
   	  PrintWriter p = res.getWriter();
   	  
   	vnumber1 =	req.getParameter("vnumber");
   	
   	
   	String vnumber=vnumber1.toUpperCase().replaceAll("\\s", "");
	System.out.println("Entered number is "+vnumber);
	boolean match=Pattern.matches("[A-Z][A-Z][0-9][0-9][A-Z]?[A-Z][0-9][0-9][0-9][0-9]", vnumber); 
	if(match)
	{String selectquery = "select * from pickup where  vnumber  = '"+ vnumber +"'";
				stmt = con.createStatement();
				rSet =stmt.executeQuery(selectquery);
			      
	 		if (rSet.next()==true){
	 	res.sendRedirect("taken.html");
	 		    con.close();
	 			p=null;
	 			rSet=null;
	 			}
	 		else {///      gettinngparameter
	 		///////////////////////////////////
	          System.out.println(" to access the web page");
	          
	          name	= req.getParameter("name");
	          contact_info=	req.getParameter("contact");
	          vnumber=	req.getParameter("vnumber");
	          location=	req.getParameter("location");
	          nearby =req.getParameter("nearby");
	         pickup	= req.getParameter("pickup");
	         model=req.getParameter("model");
	         service_type=	req.getParameter("type");
	         message=	req.getParameter("message");
	         status = "pending" ;
	        
	 	    ///   autocomit
	 		  		///////////////////////////////////
	 		con.setAutoCommit(false);
	 		
	 	    ///  insertvalue by prepared statement
	   		///////////////////////////////////
	 		
	 			pstmt=(PreparedStatement) con.prepareStatement("insert into pickup (  NAME,CONTACT_INFO,VNUMBER,LOCATION,NEARBY,PICKUP,MODEL,SERVICE_TYPE,message,status) values (?,?,?,?,?,?,?,?,?,?)");
	 			
	 			//boolean accept =Boolean.parseBoolean(req.getParameter("accept"));
	 			pstmt.setString(1, name);  
	 			pstmt.setString(2, contact_info);  
	 			pstmt.setString(3, vnumber);  
	 			pstmt.setString(4, location);  
	 			pstmt.setString(5, nearby);  
	 			pstmt.setString(6, pickup);  
	 			pstmt.setString(7, model);  
	 			pstmt.setString(8, service_type);  
	 			pstmt.setString(9, message);    
	 			pstmt.setString(10,"pending"); 
	 			 
	 		     // printing
	 	  		///////////////////////////////////
	 				con.setAutoCommit(true);
	 			
	 				HttpSession session = req.getSession(true);
	 				session.setAttribute("name", name);
	 				session.setAttribute("vnumber", vnumber);
	 				session.setAttribute("contact_info", contact_info);
	 				session.setAttribute("location", location);
	 				session.setAttribute("nearby", nearby);
	 				session.setAttribute("pickup", pickup);
	 				session.setAttribute("model", model);
	 				session.setAttribute("service_type", service_type);
	 				session.setAttribute("message", message);
	 				res.sendRedirect("table.jsp");
	 			
	 				 /// executeUpdate
	 		  		///////////////////////////////////
	 				
	 				pstmt.executeUpdate();
	 			
	 		}
				
	}}catch (Exception e) {
					e.printStackTrace();
		System.out.println("i dont know why exception occured");
			
		}
		
		
		
		
	}

	private Connection Close() {
		// TODO Auto-generated method stub
		return null;
	}}
