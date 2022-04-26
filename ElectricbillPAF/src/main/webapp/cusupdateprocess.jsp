<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/electricbill";%>
<%!String user = "root";%>
<%!String psw = "mathssin90";%>


<%

String id = request.getParameter("id");
String name=request.getParameter("name");
String address=request.getParameter("address");
String unitsconsumed=request.getParameter("unitsconsumed");
String billamount=request.getParameter("billamount");
String date=request.getParameter("date");



if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update customer set id=?,name=?,address=?,unitsconsumed=?,billamount=?,date=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, address);
ps.setString(4, unitsconsumed);
ps.setString(5, billamount);
ps.setString(6, date);



int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
