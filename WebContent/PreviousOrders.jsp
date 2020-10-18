<%@page import="icsd.getPreviousOrders"%>
<%@page import="icsd.getRestOrders"%>
<%@page import="icsd.getOrders"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="img/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/select2/select2.min.css">
<!--====================================================2===========================================-->

	<link rel="stylesheet" type="text/css" href="vendor2/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css4/util.css">
	<link rel="stylesheet" type="text/css" href="css4/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  
  <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css3/linearicons.css">
			<link rel="stylesheet" href="css3/font-awesome.min.css">
			<link rel="stylesheet" href="css3/bootstrap.css">
			<link rel="stylesheet" href="css3/magnific-popup.css">
			<link rel="stylesheet" href="css3/nice-select.css">							
			<link rel="stylesheet" href="css3/animate.min.css">
			<link rel="stylesheet" href="css3/jquery-ui.css">			
			<link rel="stylesheet" href="css3/owl.carousel.css">
			<link rel="stylesheet" href="css3/main.css">
 
  
   <style>
  .button1 {border-radius: 10%;}
  </style>
</head>
<body>
<%
String strRestId=(String)session.getAttribute("rid");
DBHandler objDH = new DBHandler();
LinkedList<getPreviousOrders> lst=objDH.getTablePreviousOrders(strRestId);

%>
						
			<header id="header" id="home">
		  		<div class="header-top">
		  			<div class="container">
				  		<div class="row align-items-center">
				  			<div class="col-lg-6 col-sm-6 col-4 header-top-left no-padding">
					      	<div class="menu-social-icons">
								<a href="#"><i class="fa fa-facebook" style="color:blue"></i></a>
								<a href="#"><i class="fa fa-twitter" style="color:skyblue"></i></a>
								<a href="#"><i class="fa fa-instagram" style="color:red"></i></a>
							</div>	    				  					
				  			</div>
				  		</div>			  					
		  			</div>
				</div>
			    <div class="container main-menu">
			    	<div class="row align-items-center justify-content-between d-flex">
			    		<a href="index.jsp"><img src="img/Logo.png" alt="" title="" style="width:50px; height:50px" ></a>		
						<nav id="nav-menu-container">
							<ul class="nav-menu">
							  <li class="menu-active"><a href="RestIndex.jsp"><big>Home</big></a></li>
							  <li><a href="Orders.jsp"><big>Orders</big></a></li>
							  <li><a href="RestMenu.jsp"><big>Menu</big></a></li>
							  <li><a href="PreviousOrders.jsp"><big>Previous Orders</big></a></li>						  			          	          
							  <li><a href="contact.jsp"><big>Contact</big></a></li>
							</ul>
						</nav><!-- #nav-menu-container -->		
			    	</div>
			    </div>
			  </header><!-- #header -->
			  <section class="menu-list-area section-gap">
				<div class="container">				
			
			
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Bill No</th>
									<th class="cell100 column2">User Name</th>
									<th class="cell100 column3">ID</th>
									<th class="cell100 column4">Item</th>
									<th class="cell100 column5">Price</th>
									<th class="cell100 column6">Qty</th>
									<th class="cell100 column7">Status</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
						
							<tbody>
							<%
							for(getPreviousOrders po:lst)
							{
							%>
							
								<tr class="row100 body">
									<td class="cell100 column1"><%=po.getStrBillNo() %></td>
									<td class="cell100 column2"><%=po.getStrUName() %></td>
									<td class="cell100 column3"><%=po.getStrMenuId() %></td>
									<td class="cell100 column4"><%=po.getStrMenuName() %></td>
									<td class="cell100 column5"><%=po.getStrMenuPrice() %></td>
									<td class="cell100 column6"><%=po.getStrQty() %></td>
									<td class="cell100 column7">Delivered</td>
									</tr>
									<%} %>
									</tbody>
							</table>
					</div>
					</div>
					</div>
					</section>
			
	
	<script src="vendor2/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/bootstrap/js/popper.js"></script>
	<script src="vendor2/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	
<!--===============================================================================================-->
	<script src="js3/main.js"></script>
	
	
		<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>About Us</h6>
								<p>
									If you own an Iphone, you’ve probably already worked out how much fun it is to use it to watch movies-it has that.
								</p>							
							</div>
						</div>
						<div class="col-lg-5  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>Newsletter</h6>
								<p>Stay update with our latest</p>
								<div class="" id="mc_embed_signup">
									<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
										<input class="form-control" name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" required="" type="email">
			                            	<button class="click-btn"><i class="lnr lnr-arrow-right" aria-hidden="true"></i></button>
			                            	<div style="position: absolute; left: -5000px;">
												<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
											</div>
										<div class="info"></div>
									</form>
								</div>
							</div>
						</div>						
						<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
							<div class="single-footer-widget">
								<h6>Follow Us</h6>
								<p>Let us be social</p>
								<div class="footer-social d-flex align-items-center">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-dribbble"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>
								</div>
							</div>
						</div>	
						<div class="col-lg-12">
							<p class="footer-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="index.jsp" target="_blank">Manan</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>								
						</div>													
					</div>
				</div>
			</footer>	
			<!-- End footer Area -->	
			
			
			<script src="js2/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js2/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js2/easing.min.js"></script>			
			<script src="js2/hoverIntent.js"></script>
			<script src="js2/superfish.min.js"></script>	
			<script src="js2/jquery.ajaxchimp.min.js"></script>
			<script src="js2/jquery.magnific-popup.min.js"></script>	
 			<script src="js2/jquery-ui.js"></script>			
			<script src="js2/owl.carousel.min.js"></script>						
			<script src="js2/jquery.nice-select.min.js"></script>							
			<script src="js2/mail-script.js"></script>	
			<script src="js2/main.js"></script>	

	
</body>
</html>