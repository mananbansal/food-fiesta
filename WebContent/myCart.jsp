<%@page import="icsd.getCart"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    

</head>
<body>
<%
DBHandler objDH=new DBHandler();
String strUnm=(String)session.getAttribute("unm");
LinkedList<getCart> lst=objDH.getTableCart(strUnm);
int subTotal=0;
 int intGst=0; 
 int intTotal=0;
%>

      


<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                 <% int total=0;
						for(getCart gc:lst)
							{
								%>
                    <tr>
                   
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="img/<%=gc.getStrMenuImg()%>" style="width: 72px; height: 72px;" alt="Img"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#"><i><%=gc.getStrMenuName() %></i></a></h4>
                                <h5 class="media-heading"> <b>by:</b> <%=gc.getStrRestName() %></h5>
                                
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <%String mQty=gc.getStrMenuQty(); %>
                        <input type="email" class="form-control" id="exampleInputEmail1" value="<%=mQty%>">
                        </td>
                        <%String mPrice=gc.getStrMenuPrice(); %>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs. <%=mPrice %></strong></td>
                        <%System.out.println(strUnm+mQty+mPrice);%>
                        <%int mTotal=(Integer.parseInt(mQty))*(Integer.parseInt(mPrice)); %>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs. <%=mTotal %></strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger">
                        <a href="CartServlet?mid=<%=gc.getStrMenuid()%>">
                            <span class="glyphicon glyphicon-trash"></span></a>
                        </button></td>
                        <% 
                        subTotal=subTotal+mTotal; %>
                    </tr>
                    <%} %>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>Rs. <%=subTotal%></strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <% intGst=((subTotal*5)/100); %>
                        <td><h5>GST</h5></td>
                        <td class="text-right"><h5><strong>Rs. <%=intGst %></strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <%intTotal=intGst+subTotal; %>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>Rs. <%=intTotal%></strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <%if(subTotal==0){%>
                        	 <td>
                             <button type="button" class="btn btn-default"><a href="index.jsp">
                                 <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                             </a></button></td>
                       <% }else{ %>
                        <td>
                        <button type="button" class="btn btn-default"><a href="index.jsp">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a></button></td>
                        
                        
                        <td>
                        <button type="button" class="btn btn-success"><a href="AddressPage.jsp">
                            CheckOut <span class="glyphicon glyphicon-play"></span></a>
                        </button></td>
                        <%} %>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>