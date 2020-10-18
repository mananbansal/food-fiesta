<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Signup</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="Trendy Signup Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<script src="js/jquery-1.11.1.min.js"></script>
<style>

html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0px;padding:0px;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end reset*/
body{
    margin: 0;
    background: url(img/1.jpg) no-repeat 0px 0px;
    background-attachment:fixed;
	background-size:cover;
    font-family: 'Open Sans', sans-serif;
	 padding: 4em 0;
}

h1,h2,h3,h4,h5,h6{
	margin:0;			   
}	
p{
	margin:0;
}
ul{
	margin:0;
	padding:0;
}
label{
	margin:0;
}
a{
	transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}
a:hover{
	transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
}
.wrap {
    width: 50%;
    margin: 2em auto 0;
}
/*--profile start here--*/
h1 {
    font-size: 3em;
    color: #ffffff;
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
}
::-webkit-input-placeholder{
	color:#FFFFFF !important;
}
/*--slider--*/
#slider2,
#slider3 {
  box-shadow: none;
  -moz-box-shadow: none;
  -webkit-box-shadow: none;
  margin: 0 auto;
}
.rslides_tabs li:first-child {
  margin-left: 0;
}
.rslides_tabs .rslides_here a {
  background: rgba(255,255,255,.1);
  color: #fff;
  font-weight: bold;
}
.events {
  list-style: none;
}
.callbacks_container {
  position: relative;
  float: left;
  width: 100%;
}
.callbacks {
  position: relative;
  list-style: none;
  overflow: hidden;
  width: 100%;
  padding: 0;
  margin: 0;
}
.callbacks li {
  position: absolute;
  width: 100%;
}
.callbacks img {
  position: relative;
  z-index: 1;
  height: auto;
  border: 0;
}
.callbacks .caption {
	display: block;
	position: absolute;
	z-index: 2;
	font-size: 20px;
	text-shadow: none;
	color: #fff;
	left: 0;
	right: 0;
	padding: 10px 20px;
	margin: 0;
	max-width: none;
	top: 10%;
	text-align: center;
}
.callbacks_nav {
    position: absolute;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    bottom: 109px;
    left: 0;
    z-index: 3;
    text-indent: -9999px;
    overflow: hidden;
    text-decoration: none;
    width: 50px;
    height: 50px;
    background: transparent url(../images/arrows.png) no-repeat left top;
}
.callbacks_nav.next {
    left: auto;
    background-position: right top;
    right: 0;
 }
 .callbacks_nav.prev {
    right: auto;
    background-position: left top;
    left: 0;
}
#slider3-pager a {
  display: inline-block;
}
#slider3-pager span{
  float: left;
}
#slider3-pager span{
	width:100px;
	height:15px;
	background:#fff;
	display:inline-block;
	border-radius:30em;
	opacity:0.6;
}
#slider3-pager .rslides_here a {
  background: #FFF;
  border-radius:30em;
  opacity:1;
}
#slider3-pager a {
  padding: 0;
}
#slider3-pager li{
	display:inline-block;
}
.rslides {
  position: relative;
  list-style: none;
  overflow: hidden;
  width: 100%;
  padding: 0;
}
.rslides li {
  -webkit-backface-visibility: hidden;
  position: absolute;
  display:none;
  width: 100%;
  left: 0;
  top: 0;
}
.rslides li{
  position: relative;
  display: block;
  float: left;
}
.rslides img {
  height: auto;
  border: 0;
  }
.callbacks_tabs{
	list-style: none;
    position: absolute;
    top: 110%;
    left: 41%;
    padding: 0;
    margin: 0;
    display: block;
    z-index: 999;
}
.slider-top span{
	font-weight:600;
}
.callbacks_tabs li{
    display: inline-block;
    margin: 0;
}
/*----*/
.callbacks_tabs a{
 visibility: hidden;
}
.callbacks_tabs a:after {
    content: "\f111";
    font-size: 0;
    font-family: FontAwesome;
    visibility: visible;
    display: block;
    height: 8px;
    width: 8px;
    display: inline-block;
    background: #212121;
    border: 2px solid #212121;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -o-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
}
.callbacks_here a:after{
    background: #f44336;
    border: 2px solid #f44336;
}
/*-- //slider --*/
.content-info {
    padding: 5em 3em;
    text-align: center;
}
.content-info h2{
    color: #212121;
    font-size: 1.5em;
    font-weight: 800;
}
.w3layouts-banner-info {
    margin: 2em 0 0 0;
    text-align: center;
}
.w3layouts-banner-info h3{
    color: #212121;
    font-size: 1em;
    margin: 0;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 1px;
}
.w3layouts-banner-info p{
	color:#999999;
	margin:1em 0 0 0;
	font-size:.9em;
	line-height:1.8em;
}
.agileinfo-follow{
    margin: 4em 0 2em 0;
    text-align: center;
}
.agileinfo-follow h4{
	color:#212121;
	font-size:1em;
	font-weight:600;
}
.agileinfo-social-grids{
	text-align:center;
}
.agileinfo-social-grids ul {
    padding: 0;
    margin: 0;
}
.agileinfo-social-grids ul la {
    color: #FFFFFF;
    text-align: center;
	display: inline-block;
    margin: 0 .5em 0 0;
}
.agileinfo-social-grids ul  a i.fa{
    height: 30px;
    width: 30px;
    border: solid 2px #212121;
    line-height: 29px;
    background: none;
    color: #212121;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
}
.agileinfo-social-grids ul a i.fa.fa-facebook:hover {
	border: solid 2px #3b5998;
	background:#3b5998;
    color: #FFFFFF;
}
.agileinfo-social-grids ul  a i.fa.fa-twitter:hover{
	border: solid 2px #55acee;
	background:#55acee;
	color: #FFFFFF;
}
.agileinfo-social-grids ul  a i.fa.fa-rss:hover{
	border: solid 2px #f26522;
	background:#f26522;
	color: #FFFFFF;
}
.agileinfo-social-grids ul  a i.fa.fa-vk:hover{
	border: solid 2px #45668e;
	background:#45668e;
	color: #FFFFFF;
}
.agileinfo-social-grids ul  a i.fa.fa-linkedin:hover{
	border: solid 2px #0077b5;
	background:#0077b5;
	color: #FFFFFF;
}
.agileinfo-social-grids ul  a i.fa.fa-dribbble:hover{
	border: solid 2px #ea4c89;
	background:#ea4c89;
	color: #FFFFFF;
}
.agile-signin h4{
	text-align:center;
	color:#212121;
	font-size:.9em;
	margin:1em 0 0 0;
}
.agile-signin h4 a{
    color: #f44336;
    text-decoration: none;
}
.agile-signin h4 a:hover{
	color:#212121;
}
.content-left{
	float:left;
	width:50%;
	background:#FFFFFF;
}
.content-main{
	float:left;
	width:50%;
}
.w3ls-subscribe{
	background: rgba(0, 0, 0, 0.56);
    padding: 3em;
    min-height: 426px;
}
.w3ls-subscribe h3{
    color: #FFFFFF;
    font-size: 2em;
    margin: 0 0 1em 0;
    text-transform: uppercase;
    font-weight: 700;
    letter-spacing: 2px;
}
.w3ls-subscribe input[type="email"],.w3ls-subscribe input[type="text"],.w3ls-subscribe input[type="password"],.w3ls-subscribe input[type="number"] {
	outline: none;
    padding: 1em;
    background: none;
    border: 1px solid #ffffff;
    color: #FFFFFF;
    font-size: .9em;
	margin:0 0 1.5em 0;
    width: 93%;
}
.w3ls-subscribe input[type="submit"] {
    color: #ffffff;
    font-size: .9em;
    text-decoration: none;
    padding: 1em 2em;
    cursor: pointer;
    background: #F44336;
    text-transform: uppercase;
    font-weight: 600;
    text-align: center;
    border: solid 1px #f44336;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
}
.w3ls-subscribe input[type="submit"]:hover{
	background:none;
    border: solid 1px #FFFFFF;
}
.w3ls-subscribe h4{
	color: #FFFFFF;
    font-size: 1em;
    margin: 0 0 1em 0;
    text-transform: uppercase;
    font-weight: 700;
    letter-spacing: 2px;
}
.wthree_footer_copy {
    margin: 2em 0 0 0;
	text-align:center;
}
.wthree_footer_copy p {
    font-size: .9em;
    color: #FFFFFF;
}
.wthree_footer_copy p a{
	color:#FFFFFF;
}
.wthree_footer_copy p a:hover{
	color: #f44336;
}
/*-- responsive --*/
@media(max-width:1440px){
	.wrap {
		width: 55%;
	}
}
@media(max-width:1366px){
	.wrap {
		width: 60%;
	}
}
@media(max-width:1080px){
	.wrap {
		width: 75%;
	}
}
@media(max-width:991px){
	.wrap {
		width: 80%;
	}
}
@media(max-width:900px){
	.wrap {
		width: 85%;
	}
}
@media(max-width:800px){
	.content-info h2 {
		font-size: 1.2em;
	}
	.w3ls-subscribe {
		min-height: 445px;
	}
}
@media(max-width:768px){
	.wrap {
		width: 90%;
	}
}
@media(max-width:667px){
	.content-left {
		float: none;
		width: 100%;
	}
	.content-main {
		float: none;
		width: 100%;
	}
	.callbacks_tabs {
		left: 45%;
	}
	.w3ls-subscribe {
		min-height: 425px;
	}
	.wrap {
		width: 85%;
	}
}
@media(max-width:480px){
	h1 {
		font-size: 2em;
	}
}
@media(max-width:414px){
	.w3ls-subscribe input[type="email"],.w3ls-subscribe input[type="text"],.w3ls-subscribe input[type="password"],.w3ls-subscribe input[type="number"]  {
		width: 89%;
	}
	.content-info {
		padding: 3em 2em;
	}
	.w3ls-subscribe {
		padding: 2em;
	}
	.callbacks_tabs {
		left: 41%;
	}
}
@media(max-width:375px){
	h1 {
		font-size: 1.5em;
	}
	body {
		padding: 2em 0;
	}
	.callbacks_tabs {
		left: 40%;
	}
}
@media(max-width:320px){
	.wrap {
		width: 90%;
	}
	.content-info {
		padding: 2em 1em;
	}
	.callbacks_tabs {
		left: 39%;
	}
	.w3ls-subscribe input[type="email"],.w3ls-subscribe input[type="text"],.w3ls-subscribe input[type="password"],.w3ls-subscribe input[type="number"] {
		width: 86%;
	}
}
/*-- //responsive --*/
</style>
</head>
<body>

<div class="wthree-dot">
	<h1>Signup Form</h1>
	<div class="profile">
		<div class="wrap">
			<div class="wthree-grids">
				<div class="content-left">
					<div class="content-info">
						<h2>Brief History About Us</h2>
						<div class="slider">
							<div class="callbacks_container">
								<ul class="rslides callbacks callbacks1" id="slider4">
									<li>
										<div class="w3layouts-banner-info">
											<h3>Vivamus dui dolor</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et placerat leo, non condimentum justo</p>
										</div>
									</li>
									<li>
										<div class="w3layouts-banner-info">
											<h3>Duis in nisl egestas</h3>
											<p>Suspendisse leo lacus, hendrerit consectetur scelerisque in, tempor sit amet tortor. Pellentesque rhoncus</p>
										</div>
									</li>
								</ul>
							</div>
							<div class="clear"> </div>
						</div>
						
						<div class="agileinfo-follow">
							<h4>Sign Up with</h4>
						</div>
						<!-- 
						<div class="agileinfo-social-grids">
							<ul>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-rss"></i></a>
								<a href="#"><i class="fa fa-vk"></i></a>
								<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
								<a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
							</ul>
						</div>
						-->
						<div class="agile-signin">
							<h4>Already have an account <a href="LoginPage.jsp">Sign In</a></h4>
						</div>
					</div>
				</div>
				<div class="content-main">
					<div class="w3ls-subscribe">
						<h4>New Customer?</h4>
						<form action="UserSignupServlet" method="post">
							<input type="text" name="txtFName" placeholder="First Name" required="">
							<input type="text" name="txtLName" placeholder="Last Name" required="">
							<input type="text" name="txtNum" placeholder="Contact No." required="" maxlength="10" minlength="10">
							<input type="email" name="txtEmail" placeholder="Email" required="">
							<input type="password" name="txtPass" placeholder="Password" required="" id="password">
							<label>
							<input type="password" name="txtCPass" placeholder="Confirm Password" required="" id="confirm_password">
							<span id='message'></span>
							</label>
							<input type="submit" value="Sign Up" id="btnSubmit" onclick="return Validate()">
						</form>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="wthree_footer_copy">
				<p>© 2018 User Signup Form. All rights reserved | Design by <a href="#">Manan</a></p>
			</div>
		</div>
	</div>
</div>
<script src="js/responsiveslides.min.js"></script>
									<script>
										// You can also use "$(window).load(function() {"
										$(function () {
										  // Slideshow 4
										  $("#slider4").responsiveSlides({
											auto: true,
											pager:true,
											nav:false,
											speed: 400,
											namespace: "callbacks",
											before: function () {
											  $('.events').append("<li>before event fired.</li>");
											},
											after: function () {
											  $('.events').append("<li>after event fired.</li>");
											}
										  });
									
										});
									 </script>
									 <script>
									 $('#password, #confirm_password').on('keyup', function () {
										  if ($('#password').val() == $('#confirm_password').val()) {
										    $('#confirm_password').css('color', 'green');
										  } else 
										    $('#confirm_password').css('color', 'red');
										});
									 </script>
									 
									 <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>



</body>
</html>