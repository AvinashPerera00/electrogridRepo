<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String date=request.getParameter("date");
String time=request.getParameter("time");
String unitamount=request.getParameter("unitamount");
String period=request.getParameter("period");
String area=request.getParameter("area");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/units", "root", "mathssin90");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into unittable(name,date,time,unitamount,period,area)values('"+name+"','"+date+"','"+time+"','"+unitamount+"','"+period+"','"+area+"')");
out.println("<script type='text/javascript'>");
out.println("alert('Inserted succesfully');");
out.println("location='unitlist.html'");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>