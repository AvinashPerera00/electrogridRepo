<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert Admin</title>
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

        <div class="container opacity-75">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card border-0 shadow rounded-3 my-5">
                        <div class="card-body p-4 p-sm-5">
                            <h5 class="card-title text-center mb-5 fw-light fs-12 ">Admin Register </h5>
                            <form action="insert" method="post">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingName" name="name"
                                        placeholder="Enter your name">
                                    <label for="floatingInput">Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingEmail" name="email"
                                        placeholder="Enter your email">
                                    <label for="floatingPassword">Email</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingPhone" name="phone"
                                        placeholder="Enter phone number">
                                    <label for="floatingPassword">Phone Number</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingInput" name="uid"
                                        placeholder="Enter your username">
                                    <label for="floatingPassword">User Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control" id="floatingPassword" name="psw"
                                        placeholder="Enter your password">
                                    <label for="floatingPassword">Password</label>
                                </div>


                                <hr class="my-4">
                                <div class="d-grid">
                                    <button class="btn btn-primary btn-login  fw-bold" type="submit">Register</button>
                                </div>



                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="js/app.js"></script>

    </body>

    </html>