<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>CustomerAccount</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
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
            <div class="m-0">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark opacity-75">
                    <div class="container-fluid">
                        <a href="#" class="navbar-brand ">ElectroGrid</a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse"
                            data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">                            
                            <div class="d-flex">
                                <div class="input-group d-flex">
                                    <a href="cusLogin.jsp"> <button class="btn btn-secondary ">Logout</button></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </nav>
            </div>
            <br>


            <div class="container">
                <div class="m-4">
                    <h4 class="text-light">Customer Profile</h4>
                </div>
                <div class="m-4">
                    <table class="table table-borderless table-light opacity-75 rounded-right border border-warning">
                        <c:forEach var="cus" items="${cusDetails}">

                            <c:set var="id" value="${cus.id}" />
                            <c:set var="name" value="${cus.name}" />
                            <c:set var="address" value="${cus.address}" />
                            <c:set var="phone" value="${cus.phonenumber}" />
                            <c:set var="username" value="${cus.username}" />
                            <c:set var="password" value="${cus.password}" />

                            <tbody>
                                <tr>
                                    <td>Customer ID</td>
                                    <td>${cus.id}</td>
                                </tr>
                                <tr>
                                    <td>Customer Name</td>
                                    <td>${cus.name}</td>
                                </tr>
                                <tr>
                                    <td>Customer Address</td>
                                    <td>${cus.address}</td>
                                </tr>
                                <tr>
                                    <td>Customer Phone Number</td>
                                    <td>${cus.phonenumber}</td>
                                </tr>
                                <tr>
                                    <td>Customer User Name</td>
                                    <td>${cus.username}</td>
                                </tr>

                        </c:forEach>
                        </tbody>
                    </table>

                    <c:url value="cusUpdate.jsp" var="cusupdate">
                        <c:param name="id" value="${id}" />
                        <c:param name="name" value="${name}" />
                        <c:param name="address" value="${address}" />
                        <c:param name="phone" value="${phonenumber}" />
                        <c:param name="uname" value="${username}" />
                        <c:param name="pass" value="${password}" />
                    </c:url>


                    <a href="${cusupdate}">
                        <button class="btn btn-outline-warning" data-mdb-ripple-color="dark"
                            name="update">Update</button>
                    </a>

                    <br><br>
                    <c:url value="cusDelete.jsp" var="cusdelete">
                        <c:param name="id" value="${id}" />
                        <c:param name="name" value="${name}" />
                        <c:param name="address" value="${address}" />
                        <c:param name="phone" value="${phonenumber}" />
                        <c:param name="uname" value="${username}" />
                        <c:param name="pass" value="${password}" />
                    </c:url>
                    <a href="${cusdelete}">
                        <button class="btn btn-outline-danger" data-mdb-ripple-color="dark"
                            name="delete">Delete</button>
                    </a>



                </div>
            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>