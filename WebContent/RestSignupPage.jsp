<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="Event Registration Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- //custom-theme -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Restaurant Signup</title>
</head>
<body>
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

body{
	margin:0;
	padding:0;
	background: url(img/1.jpg);
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    -ms-background-size: cover;
	 font-family: 'Roboto', sans-serif;
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
p,ul,ol{
	font-size:14px;
}
input[type="submit"],a,.agileinfo_social_icons li{
	transition:.5s ease-in;
	-webkit-transition:.5s ease-in;
	-moz-transition:.5s ease-in;
	-o-transition:.5s ease-in;
	-ms-transition:.5s ease-in;
}
 
/*-- banner --*/
.center-container{
	padding:0em 0;
}
.w3layouts_copy_right{
	padding:1em 0;
	text-align:center;
	border-top:none;
}
.w3layouts_copy_right p {
    color: #ffffff;
    line-height: 2em;
    font-size: 16px;
}
.w3layouts_copy_right p a{
	color:#cd31c1;
	text-decoration:none;
}
.w3layouts_copy_right p a:hover{
	color:#fff;
}
/*-- //footer --*/
.main{
	padding:5em 0;
}
.main h1{
	text-align: center;
    color: #fff;
    font-size: 3em;
    margin-bottom: 1em;
	text-transform: uppercase;
	letter-spacing:2px;
}
.w3layouts_main_grid{
	width: 35%;
    padding: 2em;
    margin:0 auto;
    background:rgba(120, 109, 118, 0.36);
}
.w3layouts_main_grid span {
    padding: .5em 0;
    display: block;
}
.w3layouts_main_grid span label{
    color: #FFFFFF;
    font-size: 14px;
    text-transform: uppercase;
    font-style: normal;
    float: left;
    width: 28%;
    margin: .8em 0 0;
	position:relative;
}
.content-w3ls{
    color: #FFFFFF;
    font-size: 14px;
    text-transform: uppercase;
    font-style: normal;
    margin: .8em 0 0;
	position:relative;
}
.w3layouts_main_grid span label i{
	position:absolute;
	right:15%;
	top:0%;
	color:#fff;
	font-style:normal;
}
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"],.w3layouts_main_grid input[type="password"], .w3layouts_main_grid textarea {
    outline: none;
    width: 68%;
    background:rgba(120, 109, 118, 0.36);
    color: #fff;
    padding: 10px;
    font-size: 14px;
    border: 1px solid rgba(152, 149, 149, 0.42);
}
.w3layouts_main_grid select {
    outline: none;
    background: rgba(152, 149, 149, 0.42);
    color: #fff;
    padding: 10px;
    font-size: 14px;
    border: 1px solid rgba(152, 149, 149, 0.42);
}
::-webkit-input-placeholder{
	color:#fff !important;
}
#category,#category1,#risk,#priority{
    width: 79% !important;
}
.agileits_w3layouts_main_gridl{
	float:left;
	width:41%;
}
.agileits_w3layouts_main_gridl input[type="text"],.agileits_w3layouts_main_gridr input[type="time"]{
	width:90% !important;
}
.agileits_w3layouts_main_gridr input[type="time"] {
    padding: 7.5px !important;
}
.agileits_w3layouts_main_gridr{
	float:right;
	width:29%;
}
.w3_main_grid{
	margin:2.5em 0 0;
}
.w3_main_grid_left{
	float:left;
	margin: 0.5em 0 0;
}
.w3_main_grid_left a{
	font-size: 1em;
    color: #FFFFFF;
    text-transform: capitalize;
}
.w3_main_grid_left a:hover{
	color:#FF0F75;
}
.w3_main_grid_right input[type="submit"]{
	outline:none;
	padding:10px 0;
	width:22%;
	text-transform:uppercase;
	font-size:14px;
	color:#fff;
	background:#cd31c1;
	border:none;
	cursor:pointer;
}
.w3_main_grid_right input[type="submit"]:hover{
	background:#df49d3;
}
/*-- radio button --*/

.grid-w3layouts1 ul li,.grid-w3layouts2 ul li{
	color: #fff;
    display: block;
    position: relative;
    height: 25px;
}
ul li input[type=radio]{
	position: absolute;
	visibility: hidden;
}
ul li label{
    display: block;
    position: relative;
    font-weight: 300;
    text-transform: capitalize;
    font-size: 16px;
    padding: 10px 0px 0px 50px;
    margin:10px auto;
    height: 30px;
    z-index: 9;
    cursor: pointer;
    -webkit-transition: all 0.25s linear;
}
ul li:hover label{
	color: #FFFFFF;
}
ul li .check{
	display: block;
    position: absolute;
    border: 2px solid #fff;
    border-radius: 100%;
    height: 12px;
    width: 12px;
    top: 13px;
    left: 20px;
    z-index: 5;
    transition: border .25s linear;
    -webkit-transition: border .25s linear;
}
ul li:hover .check {
	border: 2px solid #FFFFFF;
}
ul li .check::before {
	display: block;
    position: absolute;
    content: '';
    border-radius: 100%;
    height: 8px;
    width: 8px;
    top: 2px;
    left: 2px;
    margin: auto;
    transition: background 0.25s linear;
    -webkit-transition: background 0.25s linear;
}

.form-w3ls {
    margin-bottom: 36px;
}

/*-- start-responsive-design --*/
@media (max-width:1440px){
.w3layouts_main_grid {
	width: 39%;
}
}
@media (max-width: 1366px){
.w3layouts_main_grid {
	width: 41%;
}
}
@media (max-width: 1280px){
.w3layouts_main_grid {
	width: 44%;
}
}
@media (max-width: 1080px){
.main h1 {
	font-size: 2.7em;
}
/*-- w3layouts --*/
.w3layouts_main_grid {
	width: 52%;
}
}
@media (max-width: 1024px){
.w3layouts_main_grid {
	width: 55%;
}
}
@media (max-width: 991px){
.w3layouts_main_grid {
	width: 57%;
}
}
@media (max-width: 800px){
.main h1 {
	font-size: 2.5em;
}
.main {
	padding: 3em 0;
}
.w3layouts_main_grid {
	width: 71%;
}
}
@media (max-width: 768px){
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 67.8%;
}
.center-container {
    min-height: 929px;
}
}
@media (max-width: 736px){
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 67.6%;
}
.main h1 {
	margin-bottom: 0.8em;
}
.center-container {
    min-height:650px;
}
}
@media (max-width: 667px){
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 67%;
}
.w3layouts_main_grid span label i {
	right: 8%;
}
.main h1 {
	font-size: 2.3em;
}
.agileits_w3layouts_main_gridl {
/*-- agileits --*/
	width: 39%;
}
.agileits_w3layouts_main_gridr {
	width: 30%;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	padding: 9px 7.5px !important;
}
}
@media (max-width: 640px){
.agileits_w3layouts_main_gridr {
	width: 30%;
}
.ui-datepicker {
	width: 28.4%;
}
.main h1 {
    font-size: 2em;
}
}
@media (max-width: 600px){
.w3layouts_main_grid span label {
	float: none;
	width: 100%;
	margin: 0 0 1em;
	display: block;
}
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 94.5%;
}
.w3layouts_main_grid span label i {
	right: 71%;
}
.agileits_w3layouts_main_gridl {
	width: 52%;
}
.agileits_w3layouts_main_gridr {
	width: 44%;
}
#category, #category1, #risk, #priority {
	width: 100% !important;
}
}
@media (max-width:568px){
.main h1 {
	font-size: 1.8em;
}
.main {
	padding: 2em 0;
/*-- w3layouts --*/
}
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 94.3%;
}
.w3layouts_main_grid span label i {
    right: 67%;
}
}
@media (max-width:480px){
.agileits_w3layouts_main_gridl {
	width: 100%;
	float: none;
	margin-bottom: 1em;
}
.agileits_w3layouts_main_gridr {
	width: 100%;
	float: none;
}
.agileits_w3layouts_main_gridl input[type="text"], .agileits_w3layouts_main_gridr input[type="time"] {
	width: 92.9% !important;
}
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 93.3%;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	width: 95% !important;
}
.w3layouts_copy_right {
    padding: 1em 1em;
}
.w3layouts_main_grid span label i {
    right: 61%;
}
.w3_main_grid_right input[type="submit"] {
    width: 30%;
}
}
@media (max-width:414px){
.w3layouts_main_grid {
	padding: 1.5em;
}
.w3layouts_main_grid {
	width: 75%;
}
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 92.3%;
}
.agileits_w3layouts_main_gridl input[type="text"], .agileits_w3layouts_main_gridr input[type="time"] {
	width: 92% !important;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	width: 94% !important;
}
.w3_main_grid_left {
	float: none;
	text-align: center;
	margin: 0 0 1em;
}
/*-- agileits --*/
.w3layouts_main_grid span label i {
	right: 58%;
}
.main h1 {
    font-size: 1.7em;
}
.w3_main_grid_right input[type="submit"] {
    width: 40%;
}
}
@media (max-width:384px){
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 92%;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	width: 93.8% !important;
}
}
@media (max-width: 375px){
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width:91.5% !important;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	width: 93.5% !important;
}
#category, #category1, #risk, #priority {
	width: 100% !important;
}
}
@media (max-width: 320px){
.main h1 {
    font-size: 1.3em;
    margin-bottom: 1em;
}
.w3layouts_main_grid {
	padding: 1em;
}
.w3layouts_main_grid span label,.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea{
	font-size: 13px;
}
.w3layouts_main_grid span label i {
	right: 50%;
}
.w3layouts_main_grid input[type="text"], #category, #category1, #risk, #priority, .agileits_w3layouts_main_gridr input[type="time"], .w3layouts_main_grid input[type="email"], .w3layouts_main_grid textarea {
	width: 90% !important;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	width: 93.5% !important;
}
#category, #category1, #risk, #priority {
	width: 100% !important;
}
.agileits_w3layouts_main_gridr input[type="time"] {
	width: 92.5% !important;
}
.w3_main_grid {
	margin: 1em 0 0;
	padding: 1em 0 0;
}
.w3_main_grid_left a {
	font-size: 14px;
}
.w3_main_grid_right {
	width: 100%;
}
.agileits_copyright p {
	font-size: 13px;
	margin: 2em 0 0;
}
.w3layouts_copy_right p {
    font-size: 14px;
}
.w3layouts_copy_right {
    padding: 1em 0em;
}
.main {
    padding: 2em 0 0em;
}
}
</style>


	<div class="center-container">
		<div class="main">
			<h1 class="w3layouts_head">REGISTRATION</h1>
				<div class="w3layouts_main_grid">
					<form action="RestSignupServlet" method="post" class="w3_form_post">
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Restaurant Name </label>
								<input type="text" name="txtRname" placeholder="Restaurant Name" required="">
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Address: </label>
								<input type="text" name="txtAdd" placeholder="Address" required="">
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Area: </label>
								<input type="text" name="txtArea" placeholder="Area" required="">
							</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Restaurant Description </label>
								<textarea rows="3" coloumn="50" required="" name="txtDesc"></textarea>
								</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Your Name </label>
								<input type="text" name="txtName" placeholder="Name" required="">
								</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Contact No. </label>
								<input type="text" name="txtNo" placeholder="Number" required="" maxlength="10" minlength="10">
								</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Email Address </label>
								<input type="email" name="txtEmail" placeholder="E-Mail" required="">
								</span>
						</div>
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
								<label>Password</label>
								<input type="password" name="txtPwd" placeholder="Password" required="">
								</span>
						</div>
						
						
					
					<div class="w3_main_grid">
						<div class="w3_main_grid_right">
							<input type="submit" value="Sign Up">
						</div>
						<div class="w3_main_grid_right">
				
							<b>Already Registered | <a href="RestLogin.jsp" style="color:white">Login</a></b>
						</div>
						</div>
					
				</form>
			</div>
		<!-- Calendar -->
			
					
		
			<div class="w3layouts_copy_right">
				<div class="container">
					<p>� 2018 Restaurant Registration Form. All rights reserved | Design by Manan</p>
				</div>
			</div>
		</div>
	</div>
<!-- //footer -->

</body>
</html>