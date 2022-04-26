<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from payhistory where pid="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Update Payment history</title>
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box
}

body {
    
    font-family: 'Ubuntu', sans-serif
}

.wrapper {
    background-color: #f4f2f7;
    margin: 20px auto;
    max-width: 400px;
    padding: 15px 20px;
    border-radius: 10px
}

h4 {
    font-weight: 800;
    color: #888
}

label {
    font-weight: 700;
    color: #888;
    font-size: 12px
}

.card-no {
    border: none;
    outline: none;
    width: 90%;
    padding-left: 8px
}

.form-control {
    outline: none;
    border: none;
    box-shadow: none
}

.card-number {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 5px 8px 2px
}

a {
    font-size: 12px;
    font-weight: 900;
    margin-left: 30%
}

a {
    text-decoration: none
}

.form-inline label {
    font-size: 1rem
}

.focused {
    border: 2px solid #9ab3f5
}

#form-footer a {
    margin: 0
}

#form-footer p {
    margin: 0;
    text-align: center;
    font-size: 14px;
    font-weight: 500;
    color: #777
}

@media(max-width:395px) {
    .form-inline label {
        font-size: 12px
    }

    #form-footer p {
        font-size: 11px
    }

    .card-no {
        width: 85%
    }
}

 



</style>

</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>



<br>
<div class="wrapper">
    <h4 class="text-uppercase">Update Payment History</h4>
 
<form method="post" action="payupdateprocess.jsp" class="w3-container">
<input type="hidden" name="pid" value="<%=resultSet.getString("pid") %>" class="w3-input">
<input type="text" name="pid" value="<%=resultSet.getString("pid") %>" class="w3-input">
<br>
Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>" class="w3-input">
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>" class="w3-input">
<br>
Units consumed:<br>
<input type="text" name="unitsconsumed" value="<%=resultSet.getString("unitsconsumed") %>" class="w3-input">
<br>
Bill amount:<br>
<input type="text" name="billamount" value="<%=resultSet.getString("billamount") %>" class="w3-input">
<br>
Status:<br>
<input type="text" name="status" value="<%=resultSet.getString("status") %>" class="w3-input">
<br>
<input type="submit" value="Update" class="w3-button w3-blue w3-section">
</form>
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