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
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule.UpdateKind;

import model.customermodel;
import model.ownermodel;

public class ownlogin extends HttpServlet {
	
	String  oemail ,opswd ;

	public void doPost (HttpServletRequest req,HttpServletResponse res) throws IOException {
		oemail =	req.getParameter("Contact-info");
		opswd=	req.getParameter("PASSWORD");
		ownermodel omOwnermodel = new ownermodel();
		
		ArrayList<customermodel> pendinglist;
		
		
		ResultSet deliverlist22,deliverlist;
		System.out.println("hi");
			try {
				pendinglist = omOwnermodel.login(oemail,opswd);
				System.out.println("got it");
				 if(pendinglist ==null)
			        { System.out.println("i am null");
			            System.out.println("no data");
			            res.sendRedirect("ownerloginerror.html");
			        }
				 else {
					 System.out.println("i am in else");
HttpSession ownsession = req.getSession(true);
ownsession.setAttribute("phnbown",oemail);
ownsession.setAttribute("opswd",opswd);
ownsession.setAttribute("listObject", pendinglist);


deliverlist=omOwnermodel.delivered(oemail);
deliverlist22=omOwnermodel.delivered(oemail);





System.out.println("delivered got it");
if(deliverlist ==null)
   { System.out.println("i am null");
       System.out.println("no data");
       res.sendRedirect("ownerloginerror.html");
   }
else {
	ownsession.setAttribute("deliveredobj", deliverlist);
	ownsession.setAttribute("deliveredobj22", deliverlist22);
	res.sendRedirect("owner.jsp");
}


	 			
	 		}
	 		
	 		
		}catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}}}