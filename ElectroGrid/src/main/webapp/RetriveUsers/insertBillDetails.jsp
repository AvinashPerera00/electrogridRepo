<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String uname = request.getParameter("name");
String uadd = request.getParameter("address");
String uunits = request.getParameter("units");
String ubill = request.getParameter("bill");
String udate = request.getParameter("date");

try {
	
	//Database connection creation
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/billdb", "root", "MyNewPass");
	Statement st = conn.createStatement();

	//inserting information
	int i = st.executeUpdate("insert into userbill(name,address,unitsconsumed,billamount,date)values('" + uname + "','"
	+ uadd + "','" + uunits + "','" + ubill + "','" + udate + "')");
	out.println("<script type='text/javascript'>");
	out.println("alert('Inserted succesfully');");
	out.println("location='userList.jsp'");
	out.println("</script>");
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>
