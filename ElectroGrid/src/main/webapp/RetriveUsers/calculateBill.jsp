<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculate bill</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

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
	<!-- Header menu bar -->
	<div class="m-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark opacity-75">
			<div class="container-fluid">
				<a href="#" class="navbar-brand ">ElectroGrid</a>
				<button type="button" class="navbar-toggler"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav">
						<a href="adminHome.jsp" class="nav-item nav-link active">Home</a>
					</div>


					<div class="d-flex">
						<div class="input-group d-flex">
							<a href="../login.jsp">
								<button class="btn btn-secondary ">Logout</button>
							</a>
						</div>
					</div>

				</div>
			</div>
		</nav>
	</div>
	<br>

	<div class="container opacity-75">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card border-0 shadow rounded-3 my-5">
					<div class="card-body p-4 p-sm-5">
						<h2 class="card-title text-center mb-5 fw-light fs-12 ">Calculate
						</h2>

						<!-- Billing form -->
						<div class="container">

							<form action="insertBillDetails.jsp" method="post">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingName"
										name="name" placeholder="Enter Users Name" required> <label
										for="floatingName">Users Name</label>
								</div>

								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingaddress"
										name="address" placeholder="Enter Users Address" required>
									<label for="floatingaddress">Users Address</label>
								</div>

								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingunits"
										name="units" placeholder="Enter Units Consumed" required>
									<label for="floatingunits">Units Consumed</label>
								</div>

								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingbillamount"
										name="bill" placeholder="Enter Bill Amount" required>
									<label for="floatingbillamount">Bill Amount</label>
								</div>

								<div class="form-floating mb-3">
									<input type="text" class="form-control" id="floatingdate"
										name="date" placeholder="Enter Billing Date" required>
									<label for="floatingdate">Date</label>
								</div>



								<div class="d-grid">
									<button class="btn btn-outline-warning" data-mdb-ripple-color="dark"
										type="submit">Calculate</button>
								</div>
								



							</form>
							<br>
							<a href="userList.jsp" class="link-warning">Go Back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap java script -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>