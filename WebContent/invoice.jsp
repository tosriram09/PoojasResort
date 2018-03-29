<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page import="com.pooja.resort.dao.Invoice"%>
<%@page import="com.pooja.resort.dao.CustomerRoom"%>
<%@page import="com.pooja.resort.dao.Customer"%>
<%@page import="com.pooja.resort.dao.CustomerService"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tahir Taous Invoice</title>
<link href="css/bootstrap2.css" rel='stylesheet' type='text/css' />
<style>
@import url(http://fonts.googleapis.com/css?family=Bree+Serif);

body, h1, h2, h3, h4, h5, h6 {
	font-family: 'Bree Serif', serif;
}
</style>
</head>
<body>
	<%
		Invoice invoice = (Invoice) request.getAttribute("invoice");
		CustomerRoom room = invoice.getCustomerRoom();
		Customer customer = invoice.getCustomer();
		List<CustomerService> customerServices = invoice.getCustomerService();
		double serviceTotal = 0.0;
		double roomRentTotal = 0.0;
		double grandTotal = 0.0;
		double stayedDays = 0.0;
	%>
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<h1>
					<a href="https://tahirtaous.com/"> <!--   <img src="logo.png"> -->
						Poojas Resort
					</a>
				</h1>
			</div>
			<div class="col-xs-6 text-right">
				<h1>INVOICE</h1>
				<h1>
					<small>Invoice #005</small>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-5">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>
							From: <a href="#">Poojas Resort</a>
						</h4>
					</div>
					<div class="panel-body">
						<p>
							24 Ramakrishna Road<br> Sector 2 Electronic City <br>
							Bangalore, India <br>
						</p>
					</div>
				</div>
			</div>
			<div class="col-xs-5 col-xs-offset-2 text-right">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>
							To : <a href="#"> <%=customer.getName()%></a>
						</h4>
					</div>
					<div class="panel-body">
						<p>
							<%=customer.getAddress()%>
							<br>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- / end client details section -->

		<table class="table table-bordered">
			<thead>
				<tr>
					<th><h4>Room Nbr</h4></th>
					<th><h4>Check In Date</h4></th>
					<th><h4>Check Out Date</h4></th>
					<th><h4>Cost/Day</h4></th>
					<th><h4>No. Of Days</h4></th>
					<th><h4>Total Room Rent</h4></th>
				</tr>
			</thead>
			<tbody>
				<%
					for (CustomerService customerService : customerServices) {
				%>
				<tr>
					<td><%=room.getRoomNbr()%></td>
					<td><%=room.getCheckindate()%></td>
					<td><%=room.getCheckoutdate()%></td>
					<td><%=room.getRoomrate()%></td>
					<%
						DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
							Date checkInDate = dateFormat.parse(room.getCheckindate());
							Date checkOutDate = dateFormat.parse(room.getCheckoutdate());
							long diff = checkOutDate.getTime() - checkInDate.getTime();
							stayedDays = (diff / (1000 * 60 * 60 * 24));
							roomRentTotal = Double.parseDouble(room.getRoomrate()) * stayedDays;
					%>
					<td class="text-right"><%=stayedDays%></td>
					<td class="text-right"><%=roomRentTotal%></td>
				</tr>
				<%
					}
				%>

				<!--           <tr>
            <td>Template Design</td>
            <td><a href="#">Details of project here</a></td>
            <td class="text-right">10</td>
             <td class="text-right">75.00</td>
              <td class="text-right">$750.00</td>
          </tr>
          <tr>
            <td>Development</td>
            <td><a href="#">WordPress Blogging theme</a></td>
            <td class="text-right">5</td>
             <td class="text-right">50.00</td>
              <td class="text-right">$250.00</td>
          </tr> -->
			</tbody>
		</table>

		<div class="row text-right">
			<div class="col-xs-2 col-xs-offset-8">
				<p>
					<strong> Sub Total : </strong>
				</p>
			</div>
			<div class="col-xs-2">
				<strong> <%=roomRentTotal%>
				</strong>
			</div>
		</div>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th><h4>Room Nbr</h4></th>
					<th><h4>Service Date</h4></th>
					<th><h4>Service Name</h4></th>
					<th><h4>Cost</h4></th>
				</tr>
			</thead>
			<tbody>
				<%
					for (CustomerService customerService : customerServices) {
				%>
				<tr>
					<td><%=room.getRoomNbr()%></td>
					<td><%=customerService.getServicedate()%></td>
					<td class="text-left"><%=customerService.getServicename()%></td>
					<td class="text-right"><%=customerService.getCost()%></td>
				</tr>
				<%
					serviceTotal = serviceTotal + Double.parseDouble(customerService.getCost());
					}
				%>
				<!--           <tr>
            <td>Template Design</td>
            <td><a href="#">Details of project here</a></td>
            <td class="text-right">10</td>
             <td class="text-right">75.00</td>
              <td class="text-right">$750.00</td>
          </tr>
          <tr>
            <td>Development</td>
            <td><a href="#">WordPress Blogging theme</a></td>
            <td class="text-right">5</td>
             <td class="text-right">50.00</td>
              <td class="text-right">$250.00</td>
          </tr> -->
			</tbody>
		</table>

		<div class="row text-right">
			<div class="col-xs-2 col-xs-offset-8">
				<p>
					<strong> Sub Total : <br /> <br> <mark> Grand
							Total : </mark><br>
					</strong>
				</p>
			</div>
			<div class="col-xs-2">
				<strong> <%=serviceTotal%><br /> <br> <mark><%=serviceTotal + roomRentTotal%></mark>
				</strong>
			</div>
		</div>


		<div class="row">
			<div class="col-xs-5">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4>Mode of Payment: Online Transfer</h4>
					</div>
					<div class="panel-body">
						<p>Bank Name:Axis Bank</p>
						<p>Account Number :100909999</p>
						<p>IFSC Code :AXB190000</p>
					</div>
				</div>
			</div>
			<div class="col-xs-7">
				<div class="span7">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>Contact Details</h4>
						</div>
						<div class="panel-body">
							<p>
								Email : billing@poojasresorts.com <br> <br> Mobile :
								+9290987489 <br> &nbsp
							</p>
							<!--  <h4>Payment should be mabe by Bank Transfer</h4> -->
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>
