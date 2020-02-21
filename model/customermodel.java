package model;
import java.util.regex.*;

import model.mainmodel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

/**
 * @author Dell
 *
 */
public class customermodel {
	
	    PreparedStatement pstmt =null;
		Connection con =null;
		java.sql.Statement stmt =null;
		ResultSet rSet =null;
		String  c_id , c_name , c_email ,c_phonenumber , c_password,accept ;
		String 	name, contact_info, vnumber, location, nearby, pickup, model, service_type, message ;   
		
		public customermodel() {
			con = mainmodel.Getcon();
								
		}


		public void setC_name(String C_name) {
			this.c_name = C_name;
		}
		
		

		public void setC_phonenumber(String C_phonenumber) {
			this.c_phonenumber = C_phonenumber;
		}
		
		public String getc_name() {
			return c_name;
		}
		
		public String getC_phonenumber() {
			return c_phonenumber;
		}
		
		
		public String getC_email() {
			return c_email;
		}



		public void setC_email(String c_email) {
			this.c_email = c_email;
		}



		public String getC_password() {
			return c_password;
		}



		public void setC_password(String c_password) {
			this.c_password = c_password;
		}



		public String getName() {
			return name;
		}



		public void setName(String name) {
			this.name = name;
		}



		public String getContact_info() {
			return contact_info;
		}



		public void setContact_info(String contact_info) {
			this.contact_info = contact_info;
		}



		public String getVnumber() {
			return vnumber;
		}



		public void setVnumber(String vnumber) {
			this.vnumber = vnumber;
		}



		public String getLocation() {
			return location;
		}



		public void setLocation(String location) {
			this.location = location;
		}



		public String getNearby() {
			return nearby;
		}



		public void setNearby(String nearby) {
			this.nearby = nearby;
		}



		public String getPickup() {
			return pickup;
		}



		public void setPickup(String pickup) {
			this.pickup = pickup;
		}



		public String getModel() {
			return model;
		}



		public void setModel(String model) {
			this.model = model;
		}



		public String getService_type() {
			return service_type;
		}



		public void setService_type(String service_type) {
			this.service_type = service_type;
		}



		public String getMessage() {
			return message;
		}



		public void setMessage(String message) {
			this.message = message;
		}



		public boolean verifyduplicatec(String c_phonenumber, String c_email ) throws SQLException 
	{
		String selectquery = "select * from C_details where c_email = '"+c_email +"'  or c_phonenumber = '"+ c_phonenumber+"' " ;
	    stmt = con.createStatement();
	    rSet =stmt.executeQuery(selectquery);
     

	    if(rSet.next()==true) {
	    	this.c_email=c_email;
	    	this.c_password=c_phonenumber;
		return true;
	     }else {
          return false;
	
	}


}
	
		
		
		public boolean details (String v_number) throws SQLException {
			
			
			String selectquery = "select * from pickup where vnumber = '"+v_number +"' " ;
		    stmt = con.createStatement();
		    rSet =stmt.executeQuery(selectquery);
		    
		    
	    if(rSet.next()==true) {
		    	
	    
	        this.name  = rSet.getString(1);
	        this.contact_info = rSet.getString(2);
	        this.vnumber  =rSet.getString(3);
	        this.model =rSet.getString(7);
	        this.service_type =rSet.getString(8);
	        this.message = rSet.getString(9);
	    	 return true;
		     }else {
	          return false;
		
		}
			
		}
		
		
		
		
		
		
		
		
		
		
		

	public boolean customerdb() throws SQLException {
	
		pstmt=(PreparedStatement) con.prepareStatement("insert into C_details  ( c_name , c_email , c_phonenumber ,c_password) values (?,?,?,?)");
			
		
			pstmt.setString(1, c_name);  
 			pstmt.setString(2, c_email);  
 			pstmt.setString(3, c_phonenumber);  
 			pstmt.setString(4, c_password); 
			
			
			int i= pstmt.executeUpdate();
			
			if (i==1) 
			{
				return true;
			}
			else {
			return false;}
		
	}
	
	public boolean trans(String vnumbrer) throws SQLException {
		
		
		System.out.println("tttttt");
		System.out.println(vnumbrer);
		String selectquery = "DELETE FROM pickup WHERE vnumber = '"+vnumbrer+"'";
pstmt =	con.prepareStatement(selectquery)	;
          int i = pstmt.executeUpdate();
		
		if(i==1)
		return true;
		
		else 
			return false;
		
	
		
	}
	public boolean  requesttable() throws SQLException {
		
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
			  
     
	int i =pstmt.executeUpdate();

	if(i==1)
	{
		return true;
	}else {
		return false;
	}


	}
	
public boolean  requestverify(String vnumber) throws SQLException {
		
		String selectquery = "select * from pickup where  vnumber  = ? ";
           stmt = con.createStatement();
			rSet =stmt.executeQuery(selectquery);
		      
		if (rSet.next()==true){
			return true;
		}
		else {
			return false;
		}
		
		
	}
		


public ResultSet check(String vnumber) throws SQLException {
	
	String selectquery = "select * from pickup where  vnumber  = ? ";
    
	pstmt =con.prepareStatement(selectquery);
	
    pstmt.setString(1, vnumber);  
    rSet =  pstmt.executeQuery();
	

	return rSet;
	
	
}







public ResultSet alldispatchrequest() throws SQLException {
	
	String selectquery = "select * from pickup where status  = 'delivered' ";
	stmt = con.createStatement();
	rSet =stmt.executeQuery(selectquery);
	System.out.println("hi macha gn");
	return rSet;
	
}


public ResultSet allpickuprequest() throws SQLException {
	
	String selectquery = "select * from pickup where  status  = 'pending' ";
	stmt = con.createStatement();
	rSet =stmt.executeQuery(selectquery);
	System.out.println("hi macha gn");
	return rSet;
	
}



	public boolean login(String cemail, String cpswd) throws SQLException {
		String selectquery = "select * from C_details where c_email  = '"+ cemail +"'  and  c_password= '"+ cpswd+"'  ";
		stmt = con.createStatement();
		rSet =stmt.executeQuery(selectquery);
		if(rSet.next()==true)
		{System.out.println("hi bois"); 
		setC_phonenumber(rSet.getString(4));
		System.out.println("hi gils");
		  setC_name(rSet.getString(2));
			return true;
			
		}
		else {
	      return false;
		
	}
}
	





	private Connection Close1() {
		// TODO Auto-generated method stub
		return null;
	}


	public boolean delivered(String vnumberString) throws SQLException {
	String statuss="delivered";
		System.out.println("hello batman");
	pstmt =con.prepareStatement("UPDATE pickup SET status=?  WHERE vnumber = ? ");
		
	pstmt.setString(2, vnumberString);
	pstmt.setString(1,statuss);
int rSet =pstmt.executeUpdate();
System.out.println(rSet);
		if(rSet==1)
		{
			return true;
			
		}
		else {
	      return false; 
		
	}
	

	}

	
	public boolean dispatch(String vnumberString) throws SQLException {
	String statuss="dispatch";
		System.out.println("hello batman");
	pstmt =con.prepareStatement("UPDATE pickup SET status=?  WHERE vnumber = ? ");
		
	pstmt.setString(2, vnumberString);
	pstmt.setString(1,statuss);
int rSet =pstmt.executeUpdate();
System.out.println(rSet);
		if(rSet==1)
		{	System.out.println("pavanraj");
			return true;
		
		}
		else {	System.out.println("kumarraj");
	      return false; 
		
	}
	

	}
	
	
	
	
	public String strip(String vnum) {
		
		String name=vnum.toUpperCase().replaceAll("\\s", "");
		System.out.println("Entered number is "+name);
		boolean match=Pattern.matches("[A-Z][A-Z][0-9][0-9][A-Z]?[A-Z][0-9][0-9][0-9][0-9]", name); 
		if(match)
		{System.out.println("good number format+name");
	      return name;
		}
		else
		{
			System.out.println("Wrong number format");
			return null;

		}
		
		
	}
	
	
	
	
	
	

	public ResultSet dispatch1(String ophone) throws SQLException
	{
		String selectquery = "select * from pickup where nearby = (select location from ownerlink where contact_info  = '"+ ophone +"' ) and status = 'dispatch' ";
		stmt = con.createStatement();
		rSet =stmt.executeQuery(selectquery);
		System.out.println("hi macha gn");
		return rSet;
}
	
	
	
	public void Close() throws SQLException {
		con.close();
		
	}
	
	
	
	public int getcost(String model2, String service) throws SQLException {
		
		String priceString ;
		int price = 0;
		if(service.equals("FULL_SERVICE"))
		{priceString ="FULL_SERVICE";
		System.out.println("if");
		}
		else {priceString ="PARTIAL_SERVICE";
		System.out.println("else");}
		
		
		pstmt=(PreparedStatement) con.prepareStatement("select	* from bike_varities where bike_model = ? ");
		System.out.println(model2);
		//pstmt.setString(1, priceString);  
		pstmt.setString(1, model2);
		rSet = pstmt.executeQuery();
		System.out.println("cost is i dont know"+rSet );
		
		if(rSet.next()==true)
		{
			
			 price = rSet.getInt(priceString);
			 System.out.println(rSet.getInt(priceString));
			System.out.println("cost is "+price);
			}		
System.out.println("i am out");
return price;


		 
		
	
		
	}}