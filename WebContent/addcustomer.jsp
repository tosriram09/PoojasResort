<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>Poojas Resort::Add Customer</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Registration / Login form Responsive Widget, Login forms,Flat Pricing tables,Flat Drop downs  Sign up Web forms, Login sign up Responsive web Forms,"
	/>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Custom CSS -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/bootstrap-datepicker.css" rel='stylesheet' type='text/css' />
	<!--font CSS-->
	<script src="js/jquery2.0.3.min.js"></script>
	<script type="text/javascript">
		function formSubmit(){
			var gender = document.getElementById("customer").elements["gender"].value

			var userInput = document.getElementById("name").value + '&' +
							  document.getElementById("email").value + '&' +
							  document.getElementById("address").value + '&' +
							  document.getElementById("phone").value + '&' +
							  document.getElementById("roomname").value + '&' +
							  document.getElementById("checkin").value + '&' +
							  document.getElementById("checkout").value + '&' +
							  document.getElementById("adults").value + '&' +
							  document.getElementById("kids").value + '&' +
							  document.getElementById("pets").value + '&' +
							  document.getElementById("smoke").value + '&' +
							  document.getElementById("roomrate").value;
			
			alert(userInput);
			document.getElementById("queryString").value = userInput
			document.getElementById("customer").submit();
		}
	 </script>
</head>
<body class="dashboard-page">
	<div class="main-grid">
		<div class="agile-grids">
			<!-- validation -->
			<div class="grids">
				<div class="progressbar-heading grids-heading">
					<h2>Customer Details</h2>
				</div>
				<div class="footer"><p>${message}</p></div>
				<div class="forms-grids">
					<div class="forms3">
						<div class="w3agile-validation w3ls-validation">
							<div class="panel panel-widget agile-validation register-form">
								<div class="validation-grids widget-shadow" data-example-id="basic-forms">
									<div class="input-info">
										<h3>Personal Details</h3>
									</div>
									<div class="form-body form-body-info">
										<form data-toggle="validator" action="AddCustomer" method="post" id="customer">
										<input type="hidden" id="queryString" name = "queryString" value="" />
											<div class="form-group valid-form">
												<input type="text" class="form-control" id="name" name="Name" placeholder="Name" required="">
											</div>
											<div class="form-group has-feedback">
												<input type="email" class="form-control" id = "email" name="email" placeholder="Email" data-error="That email address is invalid" required="">
												<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
											</div>
											<div class="form-group">
												<input type="Address" class="form-control" id="address" name="Address" placeholder="Address" required="">
											</div>
											<div class="form-group">
												<input type="phone" class="form-control" id="phone" name="phone" placeholder="Phone Number" required="">
											</div>
											<div class="form-group">
												<div class="radio">
													<label>
														<input type="radio" id="gender" name="gender" required="" value="F"> Female
													</label>
												</div>
												<div class="radio">
													<label>
														<input type="radio" id="gender" name="gender" required="" value="M"> Male
													</label>
												</div>
											</div>
											<div class="form-group">
												<div class="checkbox">
													<label>
														<input type="checkbox" id="terms" data-error="Kindly accept the terms of use" required=""> I have read and accept terms of use.
													</label>
													<div class="help-block with-errors"></div>
												</div>
											</div>
											<div class="form-group">
												<button type="button" class="btn btn-primary" onclick="javascript:formSubmit();">Submit</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="panel panel-widget agile-validation">
								<div class="validation-grids validation-grids-right login-form">
									<div class="widget-shadow login-form-shadow" data-example-id="basic-forms">
										<div class="input-info">
											<h3>Room Details</h3>
										</div>
										<div class="form-body form-body-info">
											<form data-toggle="validator" action="#" method="post">
												<div class="form-group">
													<input type="text" class="form-control" id="roomname" name="roomname" placeholder="Room Type" required="">
												</div>
												<div class="form-group">
													<input type="text" class="form-control" id="checkin" name="checkin" placeholder="Check In Date in DD/MM/YY" required="">
												</div>
												<div class="form-group">
													<input type="text" class="form-control" id="checkout" name="checkout" placeholder="Check Out Date in DD/MM/YY" required="">
												</div>
												<div class="form-group">
													<input type="text" class="form-control" id="adults" name="adults" placeholder="No. of Adults" required="">
												</div>
												<div class="form-group">
													<input type="text" class="form-control" id="kids" name="kids" placeholder="No. of Kids" required="">
												</div>
												<div class="form-group">
													<input type="text" class="form-control" id="roomrate" name="roomrate" placeholder="Room Rate" required="">
												</div>
												
												<div class="form-group">
													<div class="checkbox">
														<label>
															<input type="checkbox" id="pets" required=""> Pets?
														</label>
														&nsbp
															<label>
															<input type="checkbox" id="smoke" required=""> Smoke?
														</label>
													</div>
												</div>
												<div class="bottom">
													<div class="clearfix"> &nbsp; &nbsp; </div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
			</div>
			<!-- //validation -->
		</div>
	</div>
	<!-- footer -->
	<div class="footer">
		<p>© 2018 Poojas Resorts . All Rights Reserved
		</p>
	</div>
	<!-- //footer -->
	<!-- input-forms -->
	<script type="text/javascript" src="js/valida.2.1.6.min.js"></script>
	<script type="text/javascript">

		$(document).ready(function () {

			// show Valida's version.
			$('#version').valida('version');

			// Exemple 1
			$('.valida').valida();

			// Exemple 2
			/*
			$('.valida').valida({

				// basic settings
				validate: 'novalidate',
				autocomplete: 'off',
				tag: 'p',

				// default messages
				messages: {
					submit: 'Wait ...',
					required: 'Este campo é obrigatório',
					invalid: 'Field with invalid data',
					textarea_help: 'Digitados <span class="at-counter">{0}</span> de {1}'
				},

				// filters & callbacks
				use_filter: true,

				// a callback function that will be called right before valida runs.
				// it must return a boolan value (true for good results and false for errors)
				before_validate: null,

				// a callback function that will be called right after valida runs.
				// it must return a boolan value (true for good results and false for errors)
				after_validate: null

			});
			*/

			// setup the partial validation
			$('#partial-1').on('click', function (ev) {
				ev.preventDefault();
				$('#res-1').click(); // clear form error msgs
				$('form').valida('partial', '#field-1'); // validate only field-1
				$('form').valida('partial', '#field-1-3'); // validate only field-1-3
			});

		});

	</script>
	<!-- //input-forms -->
	<!--validator js-->
	<script src="js/validator.min.js"></script>
	<!--//validator js-->
</body>

</html>