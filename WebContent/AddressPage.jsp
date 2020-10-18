<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Order</title>

<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor3/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor3/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor3/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor3/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor3/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor3/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css5/util.css">
	<link rel="stylesheet" type="text/css" href="css5/main.css">
</head>
<body>


	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(img/bg-contact-01.jpg);">
				<span class="contact100-form-title-1">
					Address Form
				</span>

				<span class="contact100-form-title-2">
					Enter the Details below!
				</span>
			</div>

			<form class="contact100-form validate-form" action="BillServlet" method="post">
				<div class="wrap-input100 validate-input" data-validate="Address is required">
					<span class="label-input100">Address:</span>
					<input class="input100" type="text" name="txtAddress" placeholder="Enter Address" required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Area is required">
					<span class="label-input100">Area:</span>
					<input class="input100" type="text" name="txtArea" placeholder="Enter Area" required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Zip is required">
					<span class="label-input100">Zip:</span>
					<input class="input100" name="txtZip" placeholder="Enter Zip Code" maxlength="6" required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Contact No is required">
					<span class="label-input100">Contact No:</span>
					<input class="input100" name="txtContact" placeholder="Enter Contact" maxlength="10" minlength="10" required>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<input type="submit" value="Confirm Order" class="contact100-form-btn">
					
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor3/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor3/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor3/bootstrap/js/popper.js"></script>
	<script src="vendor3/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor3/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor3/daterangepicker/moment.min.js"></script>
	<script src="vendor3/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor3/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC36G-ZX3rFqDK_rFBrNlF_2KeX1rm6NEQ&callback=myMap"></script>
	<script src="js4/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
	
	

</body>
</html>