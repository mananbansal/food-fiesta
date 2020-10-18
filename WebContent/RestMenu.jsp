<%@page import="icsd.getMenu"%>
<%@page import="icsd.Comp"%>
<%@page import="icsd.getMenuType"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<title>Menu</title>


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


<% 
String strRestId=(String)session.getAttribute("rid");
DBHandler objdh=new DBHandler();
LinkedList<getMenuType> lstType=objdh.getTableMenuType(strRestId);
String id="";
%>
 <header id="header" id="home">
		  		<div class="header-top">
		  			<div class="container">
				  		<div class="row align-items-center">
				  			<div class="col-lg-6 col-sm-6 col-4 header-top-left no-padding">
					      	<div class="menu-social-icons">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
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
							  <li class="menu-active"><a href="RestIndex.jsp">Home</a></li>
							  <li><a href="Orders.jsp">Orders</a></li>
							  <li><a href="RestMenu.jsp">Menu</a></li>
							  <li><a href="PreviousOrders.jsp">Previous Orders</a></li>						  			          	          
							  <li><a href="contact.jsp">Contact</a></li>
							</ul>
						</nav><!-- #nav-menu-container -->		
			    	</div>
			    </div>
			  </header><!-- #header -->
			  
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Menu List				
							</h1>	
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start menu-list Area -->
			<section class="menu-list-area section-gap">
				<div class="container">
					<div class="row">
						<div class="menu-cat mx-auto">
							<ul class="nav nav-pills" id="pills-tab" role="tablist">
							<% String actv="active"; %>
							
							 <% 
    for(getMenuType mt:lstType)
    {
 %>
							  <li class="nav-item">
							    <a class="nav-link <%=actv%>" id="pills-<%=mt.getStrMenuType() %>-tab" data-toggle="pill" href="#pills-<%=mt.getStrMenuType() %>" role="tab" aria-controls="pills-<%=mt.getStrMenuType() %>" aria-selected="true"><%=mt.getStrMenuTypeName()%></a>
							  </li>
							  
							  <% actv="";%>
							  
							  <%} %>					  
							</ul>							
						</div>

					</div>
					
					
					<div id="pills-tabContent" class="tab-content">
					
					 <%String strActiveMenu="show active"; %>
                
                <% 
                for(getMenuType mt:lstType)
                {
                String strMenuType1=mt.getStrMenuType();
                %>
						<div class="tab-pane fade <%=strActiveMenu%>" id="pills-<%=strMenuType1%>" role="tabpanel" aria-labelledby="pills-<%=strMenuType1%>-tab">
			    <%    
		 		LinkedList<getMenu> lstMenu=objdh.getTableMenu(strRestId,strMenuType1);                
                for(getMenu gm:lstMenu)
                {
                %>  		
						<div class="single-menu-list row justify-content-between align-items-center">
								<div class="col-lg-9">
									<h4><%=gm.getStrMenuName()%>(<%=gm.getStrMenuClass() %>)</h4>
									<p>
										<%=gm.getStrMenuDesc() %>
									</p>
								</div>
								<div class="col-lg-3 flex-row d-flex price-size">
									<div class="s-price col">
										<h4>ID</h4>
										<span><%=gm.getStrMenuId() %></span>
									</div>
									<div class="s-price col">
										<h4>Price</h4>
										<span><%=gm.getStrMenuPrice() %></span>
									</div>
									<div class=" col">
										<h4></h4>
										
										<a href="RestMenuServlet?mid=<%=gm.getStrMenuId()%>"><i class="fa fa-trash" style="color:red; font-size:25px"></i><span class="tooltiptext">Delete</span></a>
									</div>
									<div class=" col">
										<h4></h4>
										<a href="UpdatePage.jsp?mid=<%=gm.getStrMenuId()%>"><i class="fa fa-refresh" style="color:green; font-size:25px" ></a></i><span class="tooltiptext">Update</span>
									</div>
																											
								</div>
							</div>
							
							<%} %>																					
						</div>
						
						<% strActiveMenu=""; %>
						
						 <% }%>
						 <p>
					<a class="btn btn-outline-dark primary-btn" href="insertMenu.jsp" ><i class="fa fa-plus" aria-hidden="true"></i>  Add New Item</a>
								</p>
								
							</div>
									
						  </div>	
						  
						 
						
			</section>
		    <!-- End menu-list Area -->						

			<!-- Start about-video Area -->
			<section class="about-video-area section-gap">
				<div class="container">			
					<div class="row align-items-center">
						<div class="col-lg-6 about-video-left">
							<h6 class="text-uppercase">Brand new app to blow your mind</h6>
							<h1>
								We’ve made a life <br>
								that will change you 
							</h1>
							<p>
								<span>We are here to listen from you deliver exellence</span>
							</p>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmo d tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<a class="primary-btn" href="#">Get Started Now</a>
						</div>
						<div class="col-lg-6 about-video-right justify-content-center align-items-center d-flex">
							<a class="play-btn" href="https://www.youtube.com/watch?v=ARA0AxrnHdM"><img class="img-fluid mx-auto" src="img/play.png" alt=""></a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End about-video Area -->							
				    																			
			<!-- start footer Area -->		
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