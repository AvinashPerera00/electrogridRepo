<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Login</title>
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
                            <h5 class="card-title text-center mb-5 fw-light fs-12 ">Admin Log In </h5>
                            <form action="login" method="post">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingInput" name="username"
                                        placeholder="Enter your username" required>
                                    <label for="floatingInput">User Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control" id="floatingPassword" name="password"
                                        placeholder="Enter your password" required>
                                    <label for="floatingPassword">Password</label>
                                </div>



                                <div class="d-grid">
                                    <button class="btn btn-primary btn-login  fw-bold" type="submit">Log
                                        In</button>
                                </div>
                                <hr class="my-4">
                                <div class="d-grid mb-2">
                                    <a href="admininsert.jsp" class="test"> Admin Register</a>
                                </div>
                                <div class="d-grid mb-2 ">
                                    <a href="#" class="text-danger test" onclick="fogotPassword()">Forgot password?</a>
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