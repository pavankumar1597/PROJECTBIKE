package model;

import java.io.ObjectInputStream.GetField;
import java.sql.Connection;
import java.sql.DriverManager;



public class mainmodel {
	static String url="jdbc:sqlite:D://database//bikemodels//bike_models.db";
	static Connection con =null;
	static {
		try {
			new org.sqlite.JDBC();
        Class.forName("org.sqlite.JDBC");
        con =DriverManager.getConnection(url);
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("i dont know why exception occured");	
		}}

	public static Connection Getcon() {
		return con;	
}
	






}
