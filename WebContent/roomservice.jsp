<!DOCTYPE html>
<html>
<head>
<title>Room Service</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="css/roomservice.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"
	media="all">
<!-- //css files -->
<!-- online-fonts -->
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Raleway+Dots'
	rel='stylesheet' type='text/css'>
</head>
<body>

	<!--//header-->
	<!--main-->
	<div class="main-agileits">
		<h3 class="sub-head">Guest Room Service</h3>
		<div class="footer-w3">
			<p>${message}</p>
		</div>
		<br>
		<div class="sub-main">
			<form action="AddRoomService" method="post">
				<input placeholder="Room Number" name="roomnumber" class="name"
					type="text" required=""> <span class="icon1"><i
					class="fa fa-user" aria-hidden="true"></i></span><br> <input
					placeholder="Service Name" name="servicename" class="name2"
					type="text" required=""> <span class="icon2"><i
					class="fa fa-user" aria-hidden="true"></i></span><br> <input
					placeholder="Cost" name="cost" class="number" type="text"
					required=""> <span class="icon3"><i
					class="fa fa-money" aria-hidden="true"></i></span><br> <input
					type="submit" value="Add Room Service">
			</form>
		</div>
		<div class="clear"></div>
	</div>
	<!--//main-->
	<!--footer-->
	<div class="footer-w3">
		<p>&copy; 2018 Poojas Resorts . All Rights Reserved</p>
	</div>
	<!--//footer-->
</body>
</html>