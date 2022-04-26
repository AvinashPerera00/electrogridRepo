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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from customer where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<title>Update Bill</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
<body>
<div class="w3-bar w3-black">
  <a href="#" class="w3-bar-item w3-button">Home</a>
  <a href="#" class="w3-bar-item w3-button">Contact</a>
  <a href="#" class="w3-bar-item w3-button">About us</a>
  <a href="#" class="w3-bar-item w3-button">Register</a>
</div>

<div class="w3-container" >
<div class="container opacity-75">
<div class="row">
<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
<div class="card border-0 shadow rounded-3 my-5">
<div class="card-body p-4 p-sm-5">
<h5 class="card-title text-center mb-5 fw-light fs-12 ">Update Bill Data </h5>

<form  style="color:white"  method="post" action="cusupdateprocess.jsp" class="w3-container">
<input type="hidden" class="w3-input" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" class="w3-input" name="id" value="<%=resultSet.getString("id") %>">
<br>
 Name:<br>
<input type="text" class="w3-input" name="name" value="<%=resultSet.getString("name") %>" required>
<br>
Address<br>
<input type="text" class="w3-input" name="address" value="<%=resultSet.getString("address") %>" required>
<br>
Units consumed:<br>
<input type="text" class="w3-input" name="unitsconsumed" value="<%=resultSet.getString("unitsconsumed") %>" required>
<br>
Bill amount:<br>
<input type="text" class="w3-input" name="billamount" value="<%=resultSet.getString("billamount") %>" required>
<br>
Date:<br>
<input type="text" class="w3-input" name="date" value="<%=resultSet.getString("date") %>" required>
<br>

<br><br>
<input type="submit" class="w3-btn w3-white w3-border w3-border-blue w3-round-large" value="submit">
</form>

</div>
</div>
</div>
</div>
</div>
</div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>