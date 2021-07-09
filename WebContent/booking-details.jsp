<%@page import="java.sql.*"%>
<%@ page import="com.model.Booking" %>
<%
 	Booking.flight_booking_id=request.getParameter("flight_id");
%>
<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Details - FlyAway Airlines</title>
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
    <title>Booking Details - FlyAway Airlines</title>
</head>

<body>
    <div>
        <h2 align="center"><span><strong>Booking Details</strong></span></h2>
        <br>
        <p align="center"><span><strong>Enter Passenger Details</strong></span></p><br>
    </div>

   <div class="container">
        <form action="${pageContext.request.contextPath}/payment.jsp" method="post">
            <div class="form-group">
                <label for="pname">Passenger Name</label>
                <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
            </div>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter phone number">
            </div>
            <br>
            <button type="submit" class="btn btn-success" value="Submit">Submit</button>
        </form>
    </div>
 
    
<footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
</body>
</html>
  