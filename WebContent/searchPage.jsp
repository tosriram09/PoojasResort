<!DOCTYPE html>
<%@page import="java.util.List"%>
<html>
<head>
<script src="js/jquery-2.1.4.min.js"></script>
<style>
html, body {
	height: 100%;
	background: url('./images/bg.jpg') no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.container {
	height: 65%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.bg-overlay {
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;
    color: #fff;
    height: 450px;
    padding-top: 50px;
}
.table-striped>tbody>tr:nth-child(odd)>td, 
.table-striped>tbody>tr:nth-child(odd)>th {
   background-color: grey; // Choose your own color here
 }
</style>
<!-- Custom styles for this template -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script>
	$(document).ready(function(e) {
		$('.search-panel .dropdown-menu').find('a').click(function(e) {
			e.preventDefault();
			var param = $(this).attr("href").replace("#", "");
			var concept = $(this).text();
			$('.search-panel span#search_concept').text(concept);
			$('.input-group #search_param').val(param);
		});
	});
</script>
</head>
<body>

	<div class="container bg-overlay">
		<form class="form-horizontal" role="form" method="POST"
			action="SearchServlet">
			<div class="row">
				<div class="col-xs-8 col-xs-offset-2">
					<div class="input-group">
						<div class="input-group-btn search-panel">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span id="search_concept">Search by</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#memberid">Member ID</a></li>
								<li><a href="#booknumber">Book Number</a></li>
								<li><a href="#authorname">Author Name</a></li>
							</ul>
						</div>
						<input type="hidden" name="search_param" value="all"
							id="search_param"> <input type="text"
							class="form-control" name="userInput"
							placeholder="Search term..."> <span
							class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</div>
			</div>
			<div class="col-xs-12" style="height: 50px;"></div>
			<!-- Member Info -->
			<%
				//MemberInfo memberInfo = (MemberInfo) request.getAttribute("memberInfo");

				//if (memberInfo != null) {
			%>
			
			<table id="example" class="table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Transaction ID</th>
						<th>Book ID</th>
						<th>Book Name</th>
						<th>Due Date</th>
					</tr>
				</thead>
				<%
					//List<MemberTransactions> transactions = memberInfo.getMemberTransactions();

						//for (MemberTransactions transaction : transactions) {
				%>
				<tr>
				</tr>

				<%
					//}
				%>

			</table>
			<%
				//}
			%>

			<!-- Book Information -->
			<%
				//List<BookInfo> availableBooks = (List<BookInfo>) request.getAttribute("bookInfo");

				//if (availableBooks != null) {
			%>
			<table id="example" class="table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Book ID</th>
						<th>Title</th>
						<th>Author</th>
						<th>Edition</th>
						<th>Publication</th>
						<th>Price</th>
						<th>Purchased Date</th>
						<th>Reference Book</th>
					</tr>
				</thead>
				<tr>
				</tr>
				
			</table>
		</form>
	</div>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
