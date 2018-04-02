<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="com.pooja.resort.dao.CustomerInfo"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Customer Information</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/simple-line-icons.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="css/landing-page.css" rel="stylesheet">

</head>

<body>
	<!-- Masthead -->
	<header class="masthead text-white text-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-6 mx-auto">
					<h4 class="mb-5">Get Guest Details</h4>
				</div>
				<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
					<form method="post" action="GetCustomerInfo">
						<div class="form-row">
							<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input type="text" name="roomnbr"
									class="form-control form-control-lg"
									placeholder="Guest Room Nbr...">
							</div>
							<div class="col-12 col-md-3">
								<button type="submit" class="btn btn-block btn-lg btn-primary">Fetch
									!</button>
							</div>
						</div>
						<%
							CustomerInfo customerInfo = (CustomerInfo) request.getAttribute("customerInfo");

							if (customerInfo != null) {
						%>
						<br /> <br />
						<h4 class="mb-5">Customer Details</h4>
						<table class="table table-sm table-dark">
							<tbody>
								<tr>
									<th scope="row">Room Nbr</th>
									<td><%=customerInfo.getRoomNbr()%></td>
								</tr>
								<tr>
									<th scope="row">Name</th>
									<td><%=customerInfo.getName()%></td>
								</tr>
								<tr>
									<th scope="row">Address</th>
									<td><%=customerInfo.getAddress()%></td>
								</tr>
								<tr>
									<th scope="row">Phone Number</th>
									<td><%=customerInfo.getPhoneNumber()%></td>
								</tr>
								<tr>
									<th scope="row">Room Number</th>
									<td><%=customerInfo.getRoomNbr()%></td>
								</tr>
								<tr>
									<th scope="row">Checkin Date</th>
									<td><%=customerInfo.getCheckInDate()%></td>
								</tr>
								<tr>
									<th scope="row">Checkout Date</th>
									<td><%=customerInfo.getCheckOutDate()%></td>
								</tr>
								<tr>
									<th scope="row">Room Rate</th>
									<td><%=customerInfo.getRoomRate()%></td>
								</tr>
								<tr>
									<th scope="row">Room Type</th>
									<td><%=customerInfo.getRoomType()%></td>
								</tr>
								<tr>
									<th scope="row">Email</th>
									<td><%=customerInfo.getEmail()%></td>
								</tr>
							</tbody>
						</table>

						<%
							}
						%>
					</form>
				</div>
			</div>
		</div>
	</header>
	<!-- Bootstrap core JavaScript -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>

</body>

</html>
