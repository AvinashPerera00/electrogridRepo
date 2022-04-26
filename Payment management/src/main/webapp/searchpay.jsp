<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>payment</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<style>
 body{
    background-image: url("images/blubs.jpg");
    backgroung-position: center;
    background-repeat: repeat;
    background-attachment: fixed;
  }
  
  @import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap');
 

#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: DodgerBlue;
  color: white;
}


</style>

<body>
<br><br><br>

<div align="center">
<table id="customers"  >
		<tr>
			<th>id</th>
			<th>Name</th>
			<th>address</th>
			<th>unitsconsumed</th>
			<th>billamount</th>
			<th>date</th>
			<th>Pay</th>
		</tr>
		<%
			try{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricbill", "root", "Sathira@2000");
				Statement st=con.createStatement();
				
				String user = request.getParameter("user");
				String sqlStr = "select * from customer where name='"+user+"'";
				ResultSet rs = st.executeQuery(sqlStr);
				
				while(rs.next()){
				%>
				<tr>
				<td><%=rs.getInt("id") %></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("address") %></td>
				<td><%=rs.getString("unitsconsumed") %></td>
				<td><%=rs.getString("billamount") %></td>
				<td><%=rs.getString("date") %></td>
				<td><a href="payinsert.jsp"><button class="w3-button w3-white w3-border w3-border-blue w3-round-large">Pay now!!!</button></a></td>
				</tr>
				
			<% }	
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		
		%>
	
		
		
</table>
</div>
</body>
</html>

