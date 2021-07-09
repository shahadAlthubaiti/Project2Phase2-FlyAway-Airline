<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ page import="com.model.Booking" %>
<%@ page import="com.model.search" %>
<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Payment Details - FlyAway Airlines</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
body{
 background-image: url("1233k.jpg");
  height: 500px; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover

}

footer{
        background-color: linen;
        text-align: center;
        color: #A4A4A4;
        height: 100px;
        left: 0;
        position: absolute;
        right: 0;
    }
</style>
</head>

<body>
<div class="container">
    <h2 align="center"><span><strong>Checkout</strong></span></h2>
    <br>
    <p align="center"><span><strong>Enter Payment Details</strong></span></p><br>
</div>

<div class="container">
    <form action="${pageContext.request.contextPath}/thank-you.jsp" method="post">
        <div class="form-group">
            <label for="card_details">Name on Card</label>
            <input type="text" class="form-control" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
        </div>
        <div class="form-group">
            <label for="card_details">Card Number</label>
            <input type="number" class="form-control" id="card_details" name="card_details" placeholder="Enter Card Number">
        </div>
        <br>
        <h3  align="right"><span><strong><font color="white">Total fare = <%=Booking.ticket_price%> X <%=search.passengers%> 
        persons = SAR.<%=Booking.ticket_price*search.passengers%></font>
     </strong></span></h3>
        <button type="submit" class="btn btn-success" value="Submit">Confirm Payment</button>
    </form>
</div>
<footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
</body>
</html>
