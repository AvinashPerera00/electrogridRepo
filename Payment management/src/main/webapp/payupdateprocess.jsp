<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/electrogrid";%>
<%!String user = "root";%>
<%!String psw = "Sathira@2000";%>
<%
String pid = request.getParameter("pid");
String name = request.getParameter("name");
String address=request.getParameter("address");
String unitsconsumed=request.getParameter("unitsconsumed");
String billamount=request.getParameter("billamount");
String status=request.getParameter("status");
if(name != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update payhistory set pid=?,name=?,address=?,unitsconsumed=?,billamount=?,status=? where pid="+pid;
ps = con.prepareStatement(sql);
ps.setString(1, pid);
ps.setString(2, name);
ps.setString(3, address);
ps.setString(4, unitsconsumed);
ps.setString(5, billamount);
ps.setString(6, status);

int i = ps.executeUpdate();
out.println("<script type='text/javascript'>");
out.println("alert('updated succesfull');");
out.println("location='http://localhost:8080/Payment_management/adminpay.jsp'");
out.println("</script>");
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