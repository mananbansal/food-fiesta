<%@page import="icsd.getOrders"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Date"%>
<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Bill page</title>


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
body {
    background: grey;
    margin-top: 120px;
    margin-bottom: 120px;
}
</style>
</head>
<body>

<%
String strBillNo=request.getParameter("billno");
DBHandler objDH = new DBHandler();
String strUnm=(String)session.getAttribute("unm");
String strName=(String)session.getAttribute("FName");
LinkedList<getOrders> lst=objDH.getTableOrder(Integer.parseInt(strBillNo));
int subTotal=0;
int intGst=0; 
int intTotal=0;
String StrAddress="",StrArea="",StrZip="",StrContact="";

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
            <li><a href="Profile.jsp"><span class ="fa fa-user" style="color:white"></span> My Profile</a></li>
             <li><a href="myCart.jsp"><span class ="fa fa-shopping-cart" style="color:white"></span> My Cart</a></li>
            <%} %>
            <li><a href="blog.jsp"><span class ="fa fa-coffee" style="color:white"></span> Our Blog</a></li>
            <li><a href="RestLogin.jsp"><span class ="fa fa-cutlery" style="color:white"></span> Restuarant Login</a></li>
            <li><a href="contact.jsp"><span class ="fa fa-comments" style="color:white"></span> Contact us</a></li>
          </ul>
        </div>
      </nav>

      <header class="site-header">
        <div class="row align-items-center">
          <div class="col-5 col-md-3">
             <ul class="list-unstyled social">
              <li><a href="https://www.facebook.com"><span class="fa fa-facebook"></span></a></li>
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


<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <div class="row p-5">
                        <div class="col-md-6">
                           <a href="index.jsp" ><img src="img/Logo.png" style="width:100px; height:100px"></a>
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1">Invoice  #<%= strBillNo  %></p>
                            <p class="text-muted">Date <%=new Date() %></p>
                        </div>
                    </div>

                    <hr class="my-5">

                    <div class="row pb-5 p-5">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Client Information</p>
                            <p class="mb-1">Name: <%=strName %></p>
                            <p class="mb-1">Email: <%=strUnm %></p>
                            <p class="mb-1">
                            
                              <% 
						for(getOrders go:lst)
							{
							 StrAddress=go.getStrAddress();
							 StrArea=go.getStrArea();
							 StrZip=go.getStrZip();
							 StrContact=go.getStrContact();
								}%>
                            
                            Address: <%=StrAddress %> <br>
                            Area: <%=StrArea %>   <br>
                            Zip Code: <%=StrZip%> <br>
                            Contact No. <%=StrContact %> 
                            
                            </p>
                            
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-4">Payment Details</p>
                            <p class="mb-1"><span class="text-muted">Payment Type: </span> COD</p>
                            <p class="mb-1"><span class="text-muted">Name: </span> <%=strName %></p>
                        </div>
                    </div>

                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="border-0 text-uppercase small font-weight-bold">ID</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Item</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Restaurant</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Quantity</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Unit Cost</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                     <% 
						for(getOrders go:lst)
							{
								%>
										<tr>
                                        <td><%=go.getStrMenuid() %></td>
                                        <td><%=go.getStrMenuName() %></td>
                                        <td><%=go.getStrRestName() %></td>
                                        <%int mQty=go.getStrMenuQty();  %>
                                        <td><%=mQty %></td>
                                        <%int mPrice=go.getStrMenuPrice(); %>
                                        <td>Rs. <%=mPrice%></td>
                                        <%int mTotal=(mQty*mPrice); %>
                                        <td>Rs. <%=mTotal%></td>
                                        
                                        <% 
                        subTotal=subTotal+mTotal; %>
                                    </tr>
                                    <%} %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%intGst=((subTotal*5)/100);
                    intTotal=(intGst+subTotal);
                    %>

                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Grand Total</div>
                            <div class="h2 font-weight-light">Rs. <%=intTotal%></div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">GST</div>
                            <div class="h2 font-weight-light">Rs. <%=intGst%></div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Sub - Total amount</div>
                            <div class="h2 font-weight-light">Rs. <%=subTotal%></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
        <a href="https://www.instamojo.com/@rupali1723/le553943a48fd45ffab34a2b7c223cf15/" rel="im-checkout" data-text="Pay Online" data-css-style="color:#ffffff; background:#db3e00; width:300px; border-radius:4px"   data-layout="vertical"></a>
<script src="https://js.instamojo.com/v1/button.js"></script>
</div>
    </div>
    
    <div class="text-light mt-5 mb-5 text-center small">by : <a class="text-light" target="_blank" href="index.jsp">Dinner</a></div>

</div>


</body>
</html>