<%@page import="icsd.Comp"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
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
    
</head>
<body>
 
<%
  DBHandler objdh=new DBHandler();
  LinkedList<Comp> lst=objdh.getCompanytable();
  String strUnm=(String)session.getAttribute("unm");
%>

    <div class="site-wrap">
      
      <nav class="site-menu">
        <div class="site-menu-inner">
          <ul class="list-unstyled">
            <li class="active"><a href="index.jsp"><span class ="fa fa-home" style="color:white"></span> Home</a></li>
            <li><a href="about.jsp"><span class ="fa fa-book" style="color:white"></span> About Us</a></li>
            <%
            if(strUnm==null)
            {
            %>
            <li><a href="LoginPage.jsp"><span class ="fa fa-user" style="color:white"></span> Login</a></li>
            <%}
            else
            {%>
            <li><a href="#"><span class ="fa fa-user" style="color:white"></span> My Profile</a></li>
             <li><a href="myCart.jsp"><span class ="fa fa-shopping-cart" style="color:white"></span> My Cart</a></li>
            <%} %>
            <li><a href="#"><span class ="fa fa-coffee" style="color:white"></span> Our Blog</a></li>
            <li><a href="RestLogin.jsp"><span class ="fa fa-cutlery" style="color:white"></span> Restuarant Login</a></li>
            <li><a href="#"><span class ="fa fa-comments" style="color:white"></span> Contact us</a></li>
          </ul>
        </div>
      </nav>

      <header class="site-header">
        <div class="row align-items-center">
          <div class="col-5 col-md-3">
             <ul class="list-unstyled social">
              <li><a href="https://www.facebook.com/FoodFiesta"><span class="fa fa-facebook"></span></a></li>
              <li><a href="https://www.twitter.com/FoodFiesta"><span class="fa fa-twitter"></span></a></li>
              <li><a href="https://www.instagram.com/FoodFiesta"><span class="fa fa-instagram"></span></a></li>
            </ul>
          </div>
          <div class="col-2 col-md-6 text-center">
            <a href="index.jsp" class="site-logo" style="font-family:georgia;" >Food Fiesta</a>
          </div>
          <div class="col-5 col-md-3 text-right menu-burger-wrap">
            <a href="#" class="site-nav-toggle js-site-nav-toggle"><i></i></a>

          </div>
        </div>
       
      </header> <!-- site-header -->
      
      <div class="main-wrap">
        <div class="cover_1">
          <div class="img_bg" style="background-image: url(img/slider-1.jpg);" data-stellar-background-ratio="0.5">
            <div class="container">
              <div class="row align-items-center">
                <div class="col-md-12" data-aos="fade-up">
                  <h2 class="heading">The secret of success in life is to eat what you like and let the food fight it out inside</h2>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- .cover_1 -->

        <div class="section services-section">
          <div class="container">
             
            <div class="row">
              <div class="col-md-6 col-lg-3" data-aos="fade-up">
                <div class="media feature-icon d-block text-center">
                  <div class="icon">
                    <span class="flaticon-soup"></span>
                  </div>
                  <div class="media-body">
                    <h3>Quality Cuisine</h3>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                <div class="media feature-icon d-block text-center">
                  <div class="icon">
                    <span class="flaticon-vegetables"></span>
                  </div>
                  <div class="media-body">
                    <h3>Fresh Food</h3>
                    </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                <div class="media feature-icon d-block text-center">
                  <div class="icon">
                    <span class="flaticon-pancake"></span>
                  </div>
                  <div class="media-body">
                    <h3>Friendly Staff</h3>
                    </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
                <div class="media feature-icon d-block text-center">
                  <div class="icon">
                    <span class="flaticon-tray"></span>
                  </div>
                  <div class="media-body">
                    <h3>Easy Order</h3>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- .section -->

        <div class="section">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-md-7 text-center"  data-aos="fade-up">
                <h2 class="mb-4">Restaurants</h2>
                </div>
            </div>
          </div>
        </div> <!-- .section -->
        
                    <div class="row">
    
       
 <div class="section pt-0 pb-0">

          <div class="menus d-flex bg-light">
          
          
          <% 
    for(Comp c:lst)
    {
 %>
 
 
         
            <div class="d-flex item ">
            
              <div class="image order" style="background-image: url(Restimg/<%=c.getStrRestImg() %>); " data-aos="fade" data-aos-delay></div>
              <div class="text">
                <h3><%=c.getStrRestName() %></h3>
                <p><%=c.getStrRestDesc() %></p>
                <p class="price order"><a href="Menu.jsp?rid=<%=c.getStrRestId()%>" class="btn btn-primary btn-outline-primary">View Menu</a></p>
              </div>
            </div> <!-- .item -->
            

<%} %>
</div>
          </div>
        </div> <!-- .section -->

  

        <div class="section" data-aos="fade">
          <div class="container">
            <div class="row justify-content-center text-center" data-aos="fade-up">
              <div class="col-md-8">
                <div class="owl-carousel home-slider-loop-false">

                
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Having accepted require troublesome incident is never a wise choice resilience! It is not an obstacle to the pleasure of praising the consequences of them deal corruptly. While none of them result from an error!&rdquo;</p>
                      <div class="author">
                        <img src="img/person_1.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Manan Bansal</h4>
                        <p>Developer, Designer</p>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Let there be, or to obtain it, toils and sorrows will open herself did not know or else it would! The error of the pain in his not wishing to follow the law of things, who broke up? Dignissimos prosecutors to obtain services? Pain or pain refused to follow it.&rdquo;</p>
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

        <div class="site-half-wrap d-block d-lg-flex">
          <div class="block-half" data-aos="fade">
            <div class="image-bg-fullwidth" style="background-image: url(img/img_1.jpg);"></div>
            <div class="half d-block d-lg-flex">
              <div class="text">
                <h2 class="mb-4">Feature Menu</h2>
                <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Them as a result of the needs stated. But times hate any interest in or be cast on less often, to avoid blind choice and hate? </p>
                <p><a href="#" class="btn btn-primary btn-outline-primary">View All Menu</a></p>
              </div>
              <div class="image" style="background-image: url(img/img_2.jpg);"></div>
            </div>
          </div>
          <div class="block-half"  data-aos="fade">
            <div class="half d-block d-lg-flex">
              <div class="text">
                <h2 class="mb-4">Master Chef</h2>
                <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Them as a result of the needs stated. But times hate any interest in or be cast on less often, to avoid blind choice and hate?</p><p><a href="#" class="btn btn-primary btn-outline-primary">Meet Our chef</a></p>
              </div>
              <div class="image" style="background-image: url(img/chef_1.jpg);"></div>
            </div>
            <div class="image-bg-fullwidth" style="background-image: url(img/chef_2.jpg);"></div>
          </div>
        </div>

        
        <div class="section bg-light">
          <div class="container">
            <div class="row justify-content-center mb-5" data-aos="fade-up">
              <div class="col-md-8  text-center">
                <h2 class="mb-3">Events &amp; News</h2>
                <p class="lead">
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sorrows of the flight, and at other times the distinction between the pleasures of the great pleasures.</p>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="media d-block d-lg-flex mb-5"  data-aos="fade-up" data-aos-delay="100">
                  <figure class="mr-4 horizontal">
                    <img src="img/news_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="media-body">
                    <h3><a href="#">Birthday Party Held in Diner Restaurant</a></h3>
                    <p class="post-meta"><span><span class="fa fa-calendar"></span> April 22, 2019</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read More</a></p>
                  </div>
                </div> <!-- .media -->

                <div class="media d-block d-lg-flex mb-5"  data-aos="fade-up">
                  <figure class="mr-4 horizontal">
                    <img src="img/news_2.jpg" alt="Image placeholder" class="img-fluid" data-aos-delay="200">
                  </figure>
                  <div class="media-body">
                    <h3><a href="#">Drinks Overload</a></h3>
                    <p class="post-meta"><span><span class="fa fa-calendar"></span> April 22, 2018</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read More</a></p>
                  </div>
                </div> <!-- .media -->

                <div class="media d-block d-lg-flex mb-5"  data-aos="fade-up"  data-aos-delay="300">
                  <figure class="mr-4 horizontal">
                    <img src="img/img_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="media-body">
                    <h3><a href="#">New Recipe: Steak Steak Steak.</a></h3>
                    <p class="post-meta"><span><span class="fa fa-calendar"></span> April 22, 2018</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read More</a></p>
                  </div>
                </div> <!-- .media -->


              </div> <!-- .col-md-6 -->

              <div class="col-lg-6">
                <div class="media d-block mb-5" data-aos="fade-up"  data-aos-delay="400">
                  <figure>
                    <a href="#"><img src="img/news_1_large.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="media-body">
                    <h3><a href="#">Food that are best for your overall health</a></h3>
                    <p class="post-meta"><span><span class="fa fa-calendar"></span> April 22, 2018</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read More</a></p>
                  </div>
                </div> <!-- .media -->
              </div>
            </div>
          </div>
        </div> <!-- .section -->

        <div class="section">
          <div class="container">
            <div class="row justify-content-center mb-5" data-aos="fade-up">
              <div class="col-md-8  text-center">
                <h2 class="mb-3">Why Choose Us</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum fuga, alias distinctio voluptatum magni voluptatibus.</p>
              </div>
            </div>
            <div class="row large-gutters">
              <div class="col-md-6"  data-aos="fade-up" data-aos-delay="200">
                <img src="img/img_2.jpg" alt="Image placeholder" class="img-fluid rounded">
              </div>
              <div class="col-md-6" data-aos="fade-up" data-aos-delay="300">
                <div class="accordion" id="accordion">
                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true" aria-controls="collapseOne">Quality Cuisine <span class="icon"></span></a>
                    </h3>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur quae cumque perspiciatis aperiam accusantium facilis provident aspernatur nisi optio debitis dolorum, est eum eligendi vero aut ad necessitatibus nulla sit labore doloremque magnam! Ex molestiae, dolor tempora, ad fuga minima enim mollitia consequuntur, necessitatibus praesentium eligendi officia recusandae culpa tempore eaque quasi ullam magnam modi quidem in amet. Quod debitis error placeat, tempore quasi aliquid eaque vel facilis culpa voluptate.</p>
                      </div>
                    </div>
                  </div> <!-- .accordion-item -->
                  
                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">Fresh Food <span class="icon"></span></a>
                    </h3>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                      </div>
                    </div>
                  </div> <!-- .accordion-item -->

                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">Friendly Staff  <span class="icon"></span></a>
                    </h3>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                      </div>
                    </div>
                  </div> <!-- .accordion-item -->

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
                  <p class="contact-phone">+917056031111</p>
                  
                  
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
    

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDo7phaa1_EmyorAvev4FNZRYe28moHnZ4&sensor=false"></script>
   <script src="js/main.js"></script>

</body>
</html>