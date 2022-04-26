<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

</head>
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
<body>
<br><br>
 
 <div class="wrapper">
    <h4 class="text-uppercase">Payment Details</h4>
    <form class="form mt-4" action="insert" method="post">
        <div class="form-group"> <label for="name" class="text-uppercase">name on the card</label> <input type="text" name="name" class="form-control" placeholder="Please enter name"> </div>
        <div class="form-group"> <label for="name" class="text-uppercase">Address</label> <input type="text" class="form-control" name="address" placeholder="Please enter address"> </div>
        <div class="form-group"> <label for="name" class="text-uppercase">ZIP/Postal code</label> <input type="text" class="form-control" name="zipcode" placeholder="zip/postal code"> </div>
        <div class="form-group"> <label for="card" class="text-uppercase">card number</label>
            <div class="card-number"> <input type="text" class="card-no" name="cardnumber" step="4" required placeholder="1234 4567 5869 1234" pattern="^[0-9].{15,}"> <span class=""> <img src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-marcus-samuelsson-group-2.png" alt="" width="30" height="30"> </span> </div>
        </div>
        <div class="d-flex w-100">
            <div class="d-flex w-50 pr-sm-4">
                <div class="form-group"> <label for="expiry" class="text-uppercase">exp.date</label> <input type="text" class="form-control" name="exdate" placeholder="03/2020" required> </div>
            </div>
            <div class="d-flex w-50 pl-sm-5 pl-3">
                <div class="form-group"> <label for="cvv">CVV</label>  <input type="password" class="form-control pr-5" maxlength="3" name="cvv" placeholder="123" required> </div>
            </div>
        </div>
        
        <div class="my-3"> <input type="submit" value="Add Card" class="text-uppercase btn btn-primary btn-block p-3"> </div>
        
    </form>
</div>
 
 
</body>
</html>