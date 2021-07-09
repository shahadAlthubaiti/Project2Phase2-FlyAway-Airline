<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ page import="com.model.search" %>
<%@ page import="com.model.Booking" %>
<%
    Booking.name_on_card = request.getParameter("name_on_card");
    Booking.card_details = request.getParameter("card_details");
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Thank You - FlyAway Airlines</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <style>
body{
 background-image: url("1233k.jpg");
  height: 500px; 
  background-position: center;
  background-repeat: no-repeat;
    background-color:linen;
  
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
        <h2 align="center"><span><strong>Thank You</strong></span></h2>
        <div align="center" class="col">
        </div>
        <p align="center"><span><strong><font color ="linen">Your ticket has been booked. The summary/details are as follows</font></strong></span></p>
        <p><button onclick="window.print()" class="btn btn-success" >Print Ticket</button></p>
        <br>
        <h3><font color ="linen">Ticket Summary</font></h3>
        <h4><strong><font color ="linen"><%=search.source%> to <%=search.destination%> | <%=search.date%> (<%=search.day%>)</font></strong></h4>
        <p align="left"><font color ="linen"><%=Booking.flight_booking_id%> - <%=Booking.flight_name%> (Travellers <%=search.passengers%>)</font></p><br>
        <br>
        <h3><strong><font color ="linen">Passenger Summary</font></strong></h3>
        <h3><font color ="linen">Booking Name-<%=Booking.passenger_name%> | Email- <%=Booking.passenger_email%> | Phone- <%=Booking.passenger_phone%></font></h3>
        <br>
        <h3><strong><font color ="linen">Payment Summary</font></strong></h3>
        <h4><font color ="linen">Payment By-<%=Booking.name_on_card%> | Card No- <%=Booking.card_details%></font></h4><br>
        <h2 align="right"><strong>Total Paid- SAR.<%=search.passengers*Booking.ticket_price%></strong></h2><br><br>
    </div>
    <footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
</body>
</html>
