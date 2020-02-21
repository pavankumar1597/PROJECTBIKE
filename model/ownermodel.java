package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Dell
 *
 */
public class ownermodel {
	ArrayList<customermodel> pendingvList = new ArrayList<customermodel>();
	ArrayList<customermodel> delivelist = new ArrayList<customermodel>();
	
		PreparedStatement pstmt =null;
		Connection con =null;
		java.sql.Statement stmt =null;
		ResultSet rSet =null;
		String name,unique_id, contact_info,password,garage,gst,serviced,capacity,location,address,experience,workers;
		
		public ownermodel() {
			con = mainmodel.Getcon();
								
		}
		

		public void setName(String name) {
			this.name = name;
		}

		


		public void setcontact_info(String contact_info) {
			this.contact_info = contact_info;
		}

		public void setunique_id(String unique_id) {
			this.unique_id = unique_id;
		}


		public void setgst(String gst) {
			this.gst = gst;
		}

		
		


		public void setPassword(String password) {
			this.password = password;
		}


		public void setGarage_name(String garage_name) {
			this.garage = garage_name;
		}

		

		public void setServiced(String serviced) {
			this.serviced = serviced;
		}

		public void setCapacity(String capacity) {
			this.capacity = capacity;
		}


		public void setLocation(String location) {
			this.location = location;
		}

		

		public void setAddress(String address) {
			this.address = address;
		}

	

		public void setExperience(String experience) {
			this.experience = experience;
		}

		

		public void setWorkers(String workers) {
			this.workers = workers;
		}


		public boolean verifyduplicateo(String unique_id, String contact_info, String gst) throws SQLException {
			this.unique_id =unique_id;
			this.contact_info=contact_info;
			this.gst=gst;
			
			String selectquery = "select * from ownerlink where   unique_id  = '"+ unique_id +"'  or  contact_Info= '"+ contact_info+"'  or  gst  ='"+ unique_id +"'";
			stmt = con.createStatement();
			rSet =stmt.executeQuery(selectquery);
			
			
			if(rSet.next()==true) {
				return true;
			}else {
		      return false;
			
		}}
	public boolean ownerdb() throws SQLException {
		//con.setAutoCommit(false);
		pstmt=(PreparedStatement) con.prepareStatement("insert into ownerlink (  name,unique_id,contact_info,password,garage_name,gst,serviced,capacity,location,address,experience,workers) values (?,?,?,?,?,?,?,?,?,?,?,?)");
			
			//boolean accept =Boolean.parseBoolean(req.getParameter("accept"));
			pstmt.setString(1, name);  
			pstmt.setString(2, unique_id);  
			pstmt.setString(3, contact_info);  
			pstmt.setString(4, password);  
			pstmt.setString(5, garage);  
			pstmt.setString(6, gst);  
			pstmt.setString(7, serviced);  
			pstmt.setString(8, capacity);  
			pstmt.setString(9, location);  
			pstmt.setString(10, address);  
			pstmt.setString(11, experience);  
			pstmt.setString(12, workers);  
		//	con.setAutoCommit(true);
			
			int i= pstmt.executeUpdate();
			if (i==1) {return true;
			}
			else {
			return false;}
		
	}
	
	public ArrayList<customermodel> login(String ophone, String opswd) throws SQLException {
		System.out.println("hello bustard");
		String selectquery = "select * from ownerlink where contact_info  = '"+ ophone +"'  and  password = '"+ opswd+"'  ";
		stmt = con.createStatement();
		System.out.println("hello xir");
		rSet =stmt.executeQuery(selectquery);
		System.out.println("hello suresh");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
		if(rSet.next()==true)
		{
			
			ArrayList<customermodel> pendindlist = split(ophone, opswd);
			
		System.out.println("hello ramesh");
		 
	
		return pendindlist;
			
		}
		else {
	      return  null;
		
	}
		
	}

	public ResultSet delivered(String ophone) throws SQLException {
		
		String selectquery = "select * from pickup where nearby = (select location from ownerlink where contact_info  = '"+ ophone +"' ) and status = 'delivered'  ";
		stmt = con.createStatement();
		System.out.println("split function");
		rSet =stmt.executeQuery(selectquery);
		System.out.println("hello function");
		
		/*
		 * while(rSet.next()==true) { customermodel deliev =new customermodel();
		 * 
		 * System.out.println("i hav e"); delivelist.add(deliev);
		 * 
		 * deliev.setName(rSet.getString(1)); deliev.setContact_info(rSet.getString(2));
		 * deliev.setVnumber(rSet.getString(3)); deliev.setModel(rSet.getString(7));
		 * deliev.setService_type(rSet.getString(8));
		 * deliev.setMessage(rSet.getString(9));
		 * 
		 * System.out.println(rSet.getString(3));
		 * 
		 * }
		 */
			System.out.println(delivelist);
		return 	rSet ;
		
			
		}

	

	
	
	
	
	
	public ArrayList<customermodel> split(String ophone, String opswd) throws SQLException {
		
		String selectquery = "select * from pickup where nearby = (select location from ownerlink where contact_info  = '"+ ophone +"' ) and status = 'pending'  ";
		stmt = con.createStatement();
		System.out.println("split function");
		rSet =stmt.executeQuery(selectquery);
		System.out.println("hello function");
		
		while(rSet.next()==true)
		{    
			customermodel cmlist =new customermodel();
			
			System.out.println("i hav e");
			pendingvList.add(cmlist);
			
			    cmlist.setName(rSet.getString(1));
			    cmlist.setContact_info(rSet.getString(2));
			    cmlist.setVnumber(rSet.getString(3));
			    cmlist.setModel(rSet.getString(7));
			    cmlist.setService_type(rSet.getString(8));
			    cmlist.setMessage(rSet.getString(9));
			    
			    System.out.println(rSet.getString(3));
		        
		}
			System.out.println(pendingvList);
		return 	pendingvList ;
		
			
		}

	
	public Connection Close() throws SQLException {
		con.close();
		return null;
	}

	


}