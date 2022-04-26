<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "electricbill";
String userid = "root";
String password = "mathssin90";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Electric Grid Bill</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style type="text/css">
	     body {
	            background-image: url("images/avias.png");
	            position: relative;
	            background-position: center;
	            background-repeat: repeat;
	            background-size: fixed;
	     
	     }
	</style>
	
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<div class="w3-bar w3-black">
  <a href="#" class="w3-bar-item w3-button">Home</a>
  <a href="#" class="w3-bar-item w3-button">Contact</a>
  <a href="#" class="w3-bar-item w3-button">About us</a>
  <a href="unitshistory.jsp" class="w3-bar-item w3-button">Units History</a>
</div>



 <h1 style="color:white"><center>List of Bills</center></h1><br>
 
  

<div class="w3-container" >
<table border="1" class="table table-bordered">
<tr style="color:white">
<th>id</th>
<th>name</th>
<th>address</th>
<th>unitsconsumed</th>
<th>billamount</th>
<th>date</th>






<td>Action</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from customer";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr style="color:white">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("unitsconsumed") %></td>
<td><%=resultSet.getString("billamount") %></td>
<td><%=resultSet.getString("date") %></td>




<td><a href="cusdelete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="w3-button w3-white w3-border">Delete</button></a>
<a href="cusupdate.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="w3-button w3-white w3-border">Update</button></a>


</td>
</tr>



<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<div class="w3-container" id="contact" style="color:white">
    <h2 >Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
    <i class="fa fa-map-marker w3-text-white" style="width:30px"></i>Moratuwa,1040,Sri Lanka<br>
    <i class="fa fa-phone w3-text-white" style="width:30px"></i> Phone: 011-1234522<br>
    <i class="fa fa-envelope w3-text-white" style="width:30px"> </i> Email: help@mordiv.com<br>
    </div>
 
 <!-- Footer -->
<footer class="w3-padding-32 w3-black w3-center w3-margin-top">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">Avia</a></p>
</footer>
</div>
</body>
</html>