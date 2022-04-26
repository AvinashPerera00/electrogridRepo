<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "electrogrid";
String userid = "root";
String password = "Sathira@2000";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Payment history</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">



<style>
  body{
    background-image: url("images/blubs.jpg");
    backgroung-position: center;
    background-repeat: repeat;
    background-attachment: fixed;
  }
  
  @import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap');




</style>

</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<div class="w3-bar w3-black">
<a href="#" class="w3-bar-item w3-button">Home</a>
<a href="#" class="w3-bar-item w3-button">Contact</a>
<a href="#" class="w3-bar-item w3-button">About us</a>
<a href="#" class="w3-bar-item w3-button">Payment</a>
</div>

<h1 style="color:white"><center>Payment History</center></h1><br>


   
<br><br>

<div align="center" class="w3-container">

<table border="1" class="table table-bordered">
<tr style="color:white">
<td><b>Payment id</b></td>
<td><b>Name</b></td>
<td><b>Address</b></td>
<td><b>unitsconsumed</b></td>
<td><b>billamount</b></td>
<td><b>Status</b></td>
<td><b>Delete</b></td>
<td><b>Update</b></td>
</tr>
</div>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from payhistory";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr style="color:white">
<td><%=resultSet.getString("pid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("unitsconsumed") %></td>
<td><%=resultSet.getString("billamount") %></td>
<td><%=resultSet.getString("status") %></td>
<td><a href="paydelete.jsp?pid=<%=resultSet.getString("pid")%>"><button class="w3-button w3-white w3-border w3-border-red w3-round-large">Delete</button></a></td>
<td><a href="payupdate.jsp?id=<%=resultSet.getString("pid")%>"><button class="w3-button w3-white w3-border w3-border-blue w3-round-large">Update</button></a> </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

<div class="w3-container" id="contact" style="color:white" align="left">
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