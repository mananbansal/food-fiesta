<%@page import="icsd.Rest"%>
<%@page import="icsd.getMenu"%>
<%@page import="icsd.Comp"%>
<%@page import="icsd.DBHandler"%>
<%@page import="icsd.getMenuType"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:300,400,700,800|Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
    
.price{
 position: relative;
    display: inline-block;
}

.price .tooltiptext {
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

.price .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

.price:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
}
    </style>
     
</head>
<body>

<%
String strRestId=request.getParameter("rid");
String strunm=(String)session.getAttribute("unm");
int strQty=1;
DBHandler objdh=new DBHandler();
LinkedList<getMenuType> lstType=objdh.getTableMenuType(strRestId);
LinkedList<Rest> RestList=objdh.getRestDetails(strRestId);
String strRestName="";

%>

 <div class="site-wrap">
      
      <nav class="site-menu">
        <div class="site-menu-inner">
          <ul class="list-unstyled">
           <li><a href="index.jsp"><span class ="fa fa-home" style="color:white"></span> Home</a></li>
            <li><a href="about.jsp"><span class ="fa fa-book" style="color:white"></span> About Us</a></li>
            <%
            if(strunm==null)
            {
            %>
            <li><a href="LoginPage.jsp"><span class ="fa fa-user" style="color:white"></span> Login</a></li>
            <%}
            else
            {%>
            <li><a href="Profile.jsp"><span class ="fa fa-user" style="color:white"></span> My Profile</a></li>
             <li><a href="myCart.jsp"><span class ="fa fa-shopping-cart" style="color:white"></span> My Cart</a></li>
            <%} %>
            <li><a href="blog.jsp"><span class ="fa fa-coffee" style="color:white"></span> Our Blog</a></li>
            <li><a href="contact.jsp"><span class ="fa fa-comments" style="color:white"></span> Contact us</a></li>
          </ul>
        </div>
      </nav>

      <header class="site-header">
        <div class="row align-items-center">
          <div class="col-5 col-md-3">
             <ul class="list-unstyled social">
              <li><a href="#"><span class="fa fa-facebook"></span></a></li>
              <li><a href="#"><span class="fa fa-twitter"></span></a></li>
              <li><a href="#"><span class="fa fa-instagram"></span></a></li>
            </ul>
          </div>
          <div class="col-2 col-md-6 text-center">
            <a href="index.jsp" class="site-logo">Food Fiesta</a>
          </div>
          <div class="col-5 col-md-3 text-right menu-burger-wrap">
            <a href="#" class="site-nav-toggle js-site-nav-toggle"><i></i></a>

          </div>
        </div>
       
      </header> <!-- site-header -->
      
      <div class="main-wrap">
        <div class="cover_1 cover_sm">
          <div class="img_bg" style="background-image: url(img/slider-1.jpg);" data-stellar-background-ratio="0.5">  
        <!--   <div class="img_bg" style="background-image: url(Restimg/rest<%=strRestId %>.jpg);" data-stellar-background-ratio="0.5">  -->
            <div class="container">
              <div class="row align-items-center justify-content-center">
                <div class="col-md-7" data-aos="fade-up">
                <%for(Rest rd:RestList){ %>
                  <h2 class="heading"><%=rd.getStrRestName() %></h2>
                  <p class="lead"><%=rd.getStrRestDesc() %></p>
                  <%strRestName=rd.getStrRestName();} %>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- .cover_1 -->
        
        <div class="section" id="menu-list">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-md-10" data-aos="fade-up">

                <h2 class="mb-5 text-center">Menu List with Price</h2>

                <ul class="nav site-tab-nav" id="pills-tab" role="tablist">
                
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
                
                
                
                
               <div class="tab-content" id="pills-tabContent">
               <%String strActiveMenu="show active"; %>
                
                <% 
                for(getMenuType mt:lstType)
                {
                String strMenuType1=mt.getStrMenuType();
                %>
                
                  <div class="tab-pane fade <%=strActiveMenu%>" id="pills-<%=strMenuType1%>" role="tabpanel" aria-labelledby="pills-<%=strMenuType1 %>-tab">
                  
           
             <%     LinkedList<getMenu> lstMenu=objdh.getTableMenu(strRestId,strMenuType1); %>
                <% 
                for(getMenu gm:lstMenu)
                {
                %>  
                  
                    <div class="d-block d-md-flex menu-food-item">
                      <div class="text order-1 mb-2">
                        <h3><p><%=gm.getStrMenuName() %> (<%=gm.getStrMenuClass() %>)</p></h3>
                        <p><%=gm.getStrMenuDesc() %></p>
                        
                      </div>
                      <!-- 
                      
						<div class="row order-2">     
                        <div class="col-lg-2">
                                        <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" style="margin-right:50px; " data-type="minus" data-field="" >
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    &nbsp;&nbsp;
                                    <input type="text" id="quantity" name="quantity" class="form-control input-number"  style="padding-left: 55px; padding-right:0px; margin-right:0px; width=50px;z-index: -1; text-align:center;" value="1" min="1" max="100">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="" >
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>
                        </div>
                        </div>
                        -->
                             
                              
                              
                      
                      <div class="price order-3">
                        <strong ><%=gm.getStrMenuPrice() %></strong><br>
                        
                                       
                        <%if(strunm==null)
 {
	 %>
                        <a href="LoginPage.jsp"><i class="fa fa-shopping-cart" style="font-size:30px"></i><span class="tooltiptext">Add To Cart</span></a>
                 		<% 
 }
 else{
	 %>
	 <a href="Menu1?mid=<%=gm.getStrMenuId()%>&qty=<%=strQty %>&rname=<%=strRestName%>&rid=<%=strRestId%>"><i class="fa fa-shopping-cart" style="font-size:30px"></i><span class="tooltiptext">Add To Cart</span></a>
                 		
	 <%
}
 %>
                 		</div>
                 		
                 		</div>  
                 		
                    <% }%>
					<% strActiveMenu=""; %>
                  
                  
                </div>
					<%} %>

              </div>
              
              
            </div>
          </div>
        </div> 
        

        <div class="section">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-md-7 text-center"  data-aos="fade-up">
                <h2 class="mb-4">Gallery</h2>
                <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae eum voluptatem odio expedita laborum fugit repudiandae dolorem consectetur.</p>
              </div>
            </div>
          </div>
        </div> <!-- .section -->
        
        
        <div class="section pt-0 pb-0">

          <div class="menus d-flex bg-light">
            <div class="d-flex item">
              <div class="image" style="background-image: url(img/img_1.jpg);" data-aos="fade"></div>
              <div class="text">
                <h3>Grilled Egg With Garlic</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur illo quisquam saepe quaerat.</p>
                <p class="price">$5.00</p>
              </div>
            </div> <!-- .item -->

            <div class="d-flex item">
              <div class="image order-2 order-md-1"  style="background-image: url(img/img_2.jpg);" data-aos="fade" data-aos-delay="100"></div>
              <div class="text order-1 order-md-2">
                <h3>Organic Tomato Salad</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur illo quisquam saepe quaerat.</p>
                <p class="price">$6.00</p>
              </div>
            </div> <!-- .item -->

            <div class="d-flex item">
              <div class="image order-1 order-md-2 order-lg-2 order-xl-1" style="background-image: url(img/img_3.jpg);" data-aos="fade" data-aos-delay="200"></div>
              <div class="text order-2 order-md-1 order-lg-1 order-xl-2">
                <h3>Flatbread</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur illo quisquam saepe quaerat.</p>
                <p class="price">$9.00</p>
                
              </div>
            </div> <!-- .item -->

            <div class="d-flex item">
              <div class="image order-2" style="background-image: url(img/img_4.jpg);" data-aos="fade" data-aos-delay="300"></div>
              <div class="text order-1 mb-3">
                <h3>Rack Of Lamb</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur illo quisquam saepe quaerat.</p>
                <p class="price">$13.00</p>
              </div>
            </div> <!-- .item -->

            <div class="d-flex item">
              <div class="image order-1 order-lg-1 order-xl-2" style="background-image: url(img/img_5.jpg);" data-aos="fade" data-aos-delay="400"></div>
              <div class="text order-2 order-lg-2 order-xl-1">
                <h3>Eggplant Parmigiana</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur illo quisquam saepe quaerat.</p>
                <p class="price">$9.00</p>
              </div>
            </div> <!-- .item -->

            <div class="d-flex item">
              <div class="image order-2 order-md-1 order-lg-1 order-xl-2" style="background-image: url(img/img_6.jpg);" data-aos="fade" data-aos-delay="500"></div>
              <div class="text order-1 order-md-2 order-lg-2 order-xl-1">
                <h3>Spicy Meatballs</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur illo quisquam saepe quaerat.</p>
                <p class="price">$7.00</p>
              </div>
            </div> <!-- .item -->

          </div>
        </div> <!-- .section -->

        <div class="section" data-aos="fade">
          <div class="container">
            <div class="row justify-content-center text-center" data-aos="fade-up">
              <div class="col-md-8">
                <div class="owl-carousel home-slider-loop-false">

                
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita quaerat recusandae molestias incidunt sapiente sit numquam delectus mollitia! Non laudantium impedit voluptas consequatur corrupti. Cumque consequuntur nemo eos et error!&rdquo;</p>
                      <div class="author">
                        <img src="img/person_1.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Manan Bansal</h4>
                        <p>Developer, Designer</p>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Sint adipisci laborum dolorum ipsa quidem alias ipsum aperiam aut! Quis rerum soluta dolorem iure nihil velit error sequi? Dignissimos accusantium adipisci unde officia? Dolores aut sequi dolorum repellendus quod.&rdquo;</p>
                      <div class="author">
                        <img src="img/person_2.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Geert Green</h4>
                        <p>CEO, Founder</p>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
          </div>  
        </div> <!-- .section -->

  

      </div> <!-- .main-wrap -->
      

      <footer>
        <div class="site-footer">
          <div class="container">
            <div class="row small-gutters mb-5">
              <div class="col-md-6 col-lg-3 mb-5" data-aos="fade" data-aos-delay="100">
                <div class="footer-widget">
                  <h3>Diner Restaurant</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel neque, odio illum. Est minima sint minus sunt ducimus.</p>
                </div>
              </div>
              <div class="col-md-6 col-lg-3 mb-5" data-aos="fade" data-aos-delay="200">
                <div class="footer-widget">
                  <h3>Lunch Service</h3>
                  <p>Booking from 12:00pm - 1:30pm</p>
                  <h3>Dinner Service</h3>
                  <p>Everyday: <br> Booking from 6:00pm - 9:00pm</p>
                </div>
              </div>
              <div class="col-md-6 col-lg-3 mb-5" data-aos="fade" data-aos-delay="300">
                <div class="footer-widget">
                  <h3>Quick Links</h3>
                  <ul>
                    <li><a href="#">Help &amp; Support</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Get in Touch</a></li>
                    <li><a href="#">Testimonials</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-3 mb-5" data-aos="fade" data-aos-delay="400">
                <div class="footer-widget footer-contact-widget">

                  <h3>Subscribe</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                  <form action="" class="form-subscribe mb-5">
                    <div class="form-group form-field">
                      <input type="submit" value="Send" class="btn btn-primary">
                      <input type="text" class="form-control" placeholder="Email">
                    </div>
                  </form>

                  <h3>Contact Us</h3>
                  <p class="contact-email">foodcart9@gmail.com</p>
                  <p class="contact-phone">7056031111</p>
                  
                  
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </footer>

      <div class="site-footer-copyright">
        <div class="container">
          <div class="row">

             <p class="footer-text col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">Manan Bansal</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>

    </div>

    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>

    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>

    <script src="js/aos.js"></script>
    

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>

    <script src="js/main.js"></script>
    <script>

    </script>
    

</body>
</html>