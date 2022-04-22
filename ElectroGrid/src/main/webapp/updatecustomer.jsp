<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>UpdateAdmin</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/app.css">
        <style type="text/css">
            body {
                background-image: url("images/blubs.png");
                background-position: center;
                background-repeat: repeat;
                background-attachment: fixed;
            }
        </style>
    </head>

    <body>

        <% String id=request.getParameter("id"); String name=request.getParameter("name"); String
            email=request.getParameter("email"); String phone=request.getParameter("phone"); String
            userName=request.getParameter("uname"); String password=request.getParameter("pass"); %>

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
                                    <a href="login.jsp"> <button class="btn btn-secondary ">Logout</button></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </nav>
            </div>

            <div class="container">
                <div class="m-4">
                    <h4 class="text-light">Update Profile</h4>
                </div>
                <div class="m-4">
                    <form action="update" method="post">

                        <table class="table table-borderless table-light opacity-75 rounded-right border border-warning">
                            <tbody>
                                <tr>
                                    <td>Admin ID</td>
                                    <td><input type="text" class="form-control" name="cusid" value="<%= id %>" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td><input type="text" class="form-control" name="name" value="<%= name %>"></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><input type="text" class="form-control" name="email" value="<%= email %>"></td>
                                </tr>
                                <tr>
                                    <td>Phone number</td>
                                    <td><input type="text" class="form-control" name="phone" value="<%= phone %>"></td>
                                </tr>
                                <tr>
                                    <td>User name</td>
                                    <td><input type="text" class="form-control" name="uname" value="<%= userName %>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td><input type="password" class="form-control" name="pass" value="<%= password %>">
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <br>
                        <button class="btn btn-outline-warning" data-mdb-ripple-color="dark" name="submit">Update My
                            Data</button>
                    </form>
                </div>
            </div>
    </body>

    </html>