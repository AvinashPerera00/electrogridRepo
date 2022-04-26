package com.units;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class UnitsDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Units> selectAllunits(){
		
		ArrayList<Units> uni = new ArrayList<>();
		
		//validate
		try {
			con = DBUnitsConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from unittable by id";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String date = rs.getString(3);
				String time = rs.getString(4);
				String unitamount = rs.getString(5);
				String period = rs.getString(6);
				String area = rs.getString(6);
				
				Units u = new Units(id, name, date, time,unitamount ,period,area );
				uni.add(u);
			}
			
			
			}
		catch (Exception e) {
			e.printStackTrace();
			}
		
		
		return uni;
		
		
	}
	
        public static boolean insertunits(String name, String date, String time, String unitamount, String period,String area) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBUnitsConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into unittable values (0,'"+name+"','"+date+"','"+time+"','"+unitamount+"','"+period+"','"+area+"')";
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

}
