package com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class cusDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean validate(String username, String password) {
		
		try {
			con = cusDBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from logtbl where userusername='"+username+"' and userpassword='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

public static List<Customer> getCustomer(String userName) {
	
	ArrayList<Customer> customer = new ArrayList<>();
	
	try {
		
		con = cusDBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from logtbl where userusername='"+userName+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String address = rs.getString(3);
			String phonenumber = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			Customer cus = new Customer(id,name,address,phonenumber,username,password);
			customer.add(cus);
		}
		
	} catch (Exception e) {
		
	}
	
	return customer;	
}

public static boolean insertcustomer(String name, String address, String phonenumber, String username, String password) {
	
	boolean isSuccess = false;
	
	try {
		con = cusDBConnect.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into logtbl values (0,'"+name+"','"+address+"','"+phonenumber+"','"+username+"','"+password+"')";
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

public static boolean updatecustomer(String id, String name, String address, String phonenumber, String username, String password) {
	
	try {
		
		con = cusDBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update logtbl set username='"+name+"',useraddress='"+address+"',userphonenumber='"+phonenumber+"',userusername='"+username+"',userpassword='"+password+"'"
				+ "where userid='"+id+"'";
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

public static List<Customer> getCustomerDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Customer> cust = new ArrayList<>();
	
	try {
		
		con = cusDBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from logtbl where userid='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String address = rs.getString(3);
			String phonenumber = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			Customer c = new Customer(id,name,address,phonenumber,username,password);
			cust.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cust;	
}

public static boolean deleteCustomer(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		
		con = cusDBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from logtbl where userid='"+convId+"'";
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
