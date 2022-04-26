package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Customer> selectAllCustomer(){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer by id";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String unitsconsumed = rs.getString(4);
				String billamount = rs.getString(5);
				String date = rs.getString(6);
				
				Customer c = new Customer(id, name, address, unitsconsumed, billamount ,date );
				cus.add(c);
			}
			
			
			}
		catch (Exception e) {
			e.printStackTrace();
			}
		
		
		return cus;
		
		
	}
	
public static boolean updatecustomer(String id, String name, String address, String unitsconsumed, String billamount, String date) {
	    boolean isSuccess = false;
	    
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',address='"+address+"',unitsconsumed='"+unitsconsumed+"',billamount='"+billamount+"',date='"+date+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<Customer> selectAllCustomer(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Customer> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String address = rs.getString(3);
    			String unitsconsumed = rs.getString(4);
    			String billamount = rs.getString(5);
    			String date = rs.getString(6);
    			
    			Customer c = new Customer(id,name,address,unitsconsumed,billamount,date);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
public static boolean deleteCustomer(String id) {
	 boolean isSuccess = false;
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from customer where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    

}
