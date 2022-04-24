package com.elctrogrid;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String username, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from log where username='" + username + "' and password='" + password + "'";
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

	public static List<Admin> getAdmin(String userName) {

		ArrayList<Admin> admin = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from log where username='" + userName + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				Admin ad = new Admin(id, name, email, phone, username, password);
				admin.add(ad);
			}

		} catch (Exception e) {

		}

		return admin;
	}

	public static boolean insertadmin(String name, String email, String phone, String username, String password) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into log values (0,'" + name + "','" + email + "','" + phone + "','" + username + "','"
					+ password + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean updateadmin(String id, String name, String email, String phone, String username,
			String password) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update log set name='" + name + "',email='" + email + "',phone='" + phone + "',username='"
					+ username + "',password='" + password + "'" + "where id='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<Admin> getAdminDetails(String Id) {

		int convertedID = Integer.parseInt(Id);

		ArrayList<Admin> ad = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from log where id='" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				Admin a = new Admin(id, name, email, phone, username, password);
				ad.add(a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return ad;
	}

	public static boolean deleteAdmin(String id) {

		int convId = Integer.parseInt(id);

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from log where id='" + convId + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	

}
