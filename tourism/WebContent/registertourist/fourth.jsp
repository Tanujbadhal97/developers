<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!doctype html>
<html>

<head>
	<title>Registration Form for tourist</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Registration Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
	<!-- /fonts -->
	<!-- css -->
	<link href="css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
	<link href="css/style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
</head>

<body>

	<div class="content-agileits">
		<h1 class="title">tourist Registration Form</h1>
		<div class="left">
			<form action="five.jsp" method="post" data-toggle="validator">
				<div class="form-group">
					<label for="username" class="control-label">username:</label>
					<input type="text" name="user" class="form-control" id="username" placeholder="username" data-error="Enter Your username" required>
					<div class="help-block with-errors"></div>
				</div>
					<div class="form-group">
					<label for="password" class="control-label">password:</label>
					<input type="password" name="pass" class="form-control" id="password" placeholder="password" data-error="Enter Your password" required>
					<div class="help-block with-errors"></div>
				</div>
			
				<div class="form-group">
					<label for="inputemail" class="control-label">email:</label>
					<input type="email" name="email" class="form-control" id="inputEmail" placeholder="Email" data-error="This email address is invalid" required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="phone" class="control-label">country:</label>
					<input type="text" name="country" class="form-control" id="country" placeholder="country" data-error="Enter Your country name" required>
					<div class="help-block with-errors"></div>
				</div>
			<div class="form-group">
					<label for="phone" class="control-label">state:</label>
					<input type="text" name="state" class="form-control" id="state" placeholder="state" data-error="Enter Your state name" required>
					<div class="help-block with-errors"></div>
				</div>
			
				<div class="form-group">
					<label for="phone" class="control-label">contact:</label>
					<input type="text" name="contact" class="form-control" id="contact" placeholder="phone number" data-error="Enter Your Phone Number" required>
					<div class="help-block with-errors"></div>
				</div>
			

				<div class="form-group">
					<button type="submit" class="btn btn-lg">register</button>
				</div>
			</form>
		</div>
		<div class="right"></div>
		<div class="clear"></div>
	</div>
	
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->

	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.min.js"></script>
	<!-- /js files -->
</body>

</html>