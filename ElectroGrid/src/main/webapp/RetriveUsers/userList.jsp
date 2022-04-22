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
	String database = "user";
	String userid = "root";
	String password = "MyNewPass";
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
<meta charset="ISO-8859-1">
<title>Retrive Users</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            <link rel="stylesheet" type="text/css" href="../css/app.css">
            <style type="text/css">
                body {
                    background-image: url("../images/blubs.png");
                    background-position: center;
                    background-repeat: repeat;
                    background-attachment: fixed;
                }
            </style>
</head>
<body>
 <div class="m-0">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark opacity-75">
                    <div class="container-fluid">
                        <a href="#" class="navbar-brand ">ElectroGrid</a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse"
                            data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav">
                                <a href="adminHome.jsp" class="nav-item nav-link active">Home</a>
                            </div>


                            <div class="d-flex">
                                <div class="input-group d-flex">
                                    <a href="../login.jsp"> <button class="btn btn-secondary ">Logout</button></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </nav>
            </div>
            <br>
<div class="container">

    <h4 class="text-light">Users List</h4>
    <br>
               
  	<input oninput="w3.filterHTML('#id01', '.item', this.value)" placeholder="Search User" style="width:22%;" class=" w3-input w3-round-xlarge w3-border-yellow w3-mobile"><br>

	<table border="1"  class="w3-table w3-bordered w3-white  w3-opacity" id="id01">
			<tr class="item">
				<td class="w3-ios-blue">User ID</td>
				<td class="w3-ios-blue">Users Name</td>
				<td class="w3-ios-blue">Users Address</td>
				<td class="w3-ios-blue">Users Phone number</td>
				<td class="w3-ios-blue">Users Username</td>
				<td class="w3-ios-blue">Users Password</td>
				<td class="w3-ios-blue" style="text-align:center;" colspan="3">Calculate</td>
			</tr>
			<%
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from userdb";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
	<tr class="item">
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("userid") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("username") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("useraddress") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("userphonenumber") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("userusername") %></td>
			<td class="w3-container w3-metro-light-blue"><%=resultSet.getString("userpassword") %></td>
			<td class="w3-container w3-metro-light-blue" style="text-align:center;">
				<button class="btn btn-outline-warning" data-mdb-ripple-color="dark">Calculate bill </button>
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
</div>
<script src="https://www.w3schools.com/lib/w3.js"></script>

</body>
</html>