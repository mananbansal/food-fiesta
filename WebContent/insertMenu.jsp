<%@page import="icsd.getList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="img/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css6/util.css">
	<link rel="stylesheet" type="text/css" href="css6/main.css">
<!--===============================================================================================-->
<style type="text/css">

			.col{
 position: relative;
    display: inline-block;
}
			.col .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -60px;
    opacity: 0;
    transition: opacity 0.3s;
}

.col .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

.col:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
}

</style>

</head>
<body>


	<div class="bg-contact100" style="background-image: url('img/update-01.jpg');">
		<div class="container-contact100">
			<div class="wrap-contact100">
				<div class="contact100-pic js-tilt" data-tilt>
					<img src="img/updateimg-01.png" alt="IMG">
				</div>

				<form class="contact100-form validate-form" action="InsertMenuServlet" method="post">  
				
					<span class="contact100-form-title" style="font-family:georgia;">
						<center> Insert Menu</center>
					</span>
					
					<div class="wrap-input100 validate-input col">
						<input class="input100" type="text" name="txtType" placeholder="Enter Menu Type" required>
						<span class="tooltiptext">Menu Type</span>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-book" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input col" data-validate = "Name is required">
						<input class="input100" type="text" name="txtName" placeholder="Enter Menu Name" required>
						<span class="tooltiptext">Menu Name</span>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-coffee" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 col">
						<textarea class="input100" type="text" name="txtDesc" placeholder="Enter Description(Optional)"> </textarea>
						<span class="tooltiptext">Description(Optional)</span>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-commenting" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input col" data-validate = "Veg/Non-Veg">
						<input class="input100" type="text" name="txtClass" placeholder="Enter Veg/Non-Veg" required>
						<span class="tooltiptext">Veg/Non-Veg</span>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envira" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input col" data-validate = "price is required">
						<input class="input100" type="text" name="txtPrice" placeholder="Enter Menu Price" required>
						<span class="tooltiptext">Price</span>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-inr" aria-hidden="true"></i>
						</span>
					</div>
					

					<div class="container-contact100-form-btn">
						<button class="contact100-form-btn" type="submit" style="font-family:georgia;">
							Add Item
						</button>
					</div>
					
				</form>
				<div class="container-contact100-form-btn">
						<a href="RestMenu.jsp#pills-tab"><button class="contact100-form-btn">
							Cancel
						</button></a>
					</div>	
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor4/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor4/bootstrap/js/popper.js"></script>
	<script src="vendor4/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor4/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor4/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js5/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>




</body>
</html>