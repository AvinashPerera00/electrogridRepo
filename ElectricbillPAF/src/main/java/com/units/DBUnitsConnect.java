package com.units;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUnitsConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/units";
	private static String user = "root";
	private static String pass = "mathssin90";
	private static Connection con;

	
	
public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}
