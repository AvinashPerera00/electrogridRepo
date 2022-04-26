package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class payDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean payinsert(String name, String address, String zipcode, String cardnumber, String exdate, String cvv) {
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/electrogrid";
		String user = "root";
		String pass = "Sathira@2000";
		
		try {
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into payment values ('"+name+"','"+address+"','"+zipcode+"','"+cardnumber+"','"+exdate+"','"+cvv+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    
	}


	public static boolean updatecustomer(String pid, String name, String address, String unitsconsumed,
			String billamount, String status) {
		// TODO Auto-generated method stub
		return false;
	}


	public static List<com.payment.payinsert> getPayDetails(String pid) {
		// TODO Auto-generated method stub
		return null;
	}

}
