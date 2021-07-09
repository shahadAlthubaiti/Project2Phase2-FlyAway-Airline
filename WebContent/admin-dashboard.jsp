<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@page import="java.sql.*"%>
<%@page import="servlet.Login"%>

<%

    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway Airlines</title>
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
        <%
            if (Login.isLoggedIn) {
        %>
        <div class="container">
            <h2 align="center"><span><strong>Admin Dashboard</strong></span></h2>
            <p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
            <td scope="col">flight_id</td>
			<td scope="col">date</td>
			<td scope="col">day</td>
			<td scope="col">source</td>
			<td scope="col">destination</td>
			<td scope="col">passengers</td>
			<td scope="col">ticket_price</td>
                </tr>
                </thead>
                <tbody>
                <form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
                    <button type="submit" class="btn btn-info mb-2">Change Password</button>
                </form>&ensp;
                <form method="post" action="${pageContext.request.contextPath}/add-flight.jsp">
                    <button type="submit" class="btn btn-success mb-2">Add new Flight</button>
                </form>&ensp;
                <form method="post" action="${pageContext.request.contextPath}/show-booking.jsp">
                    <button type="submit" class="btn btn-success mb-2">Previous bookings</button>
                </form>&ensp;
                <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                    <button type="submit" class="btn btn-info mb-2 btn-danger">Logout</button>
                </form>
                <br><br>
                <p align="center"><span><strong>Flight Table</strong></span></p>
        <%
                try{
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","root123");
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM flight";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
        %>
        <tr bgcolor="#F5F5F5">
             <td><%=resultSet.getString("flight_id") %></td>
			<td><%=resultSet.getString("date") %></td>
			<td><%=resultSet.getString("day") %></td>
			<td><%=resultSet.getString("source") %></td>
			<td><%=resultSet.getString("destination") %></td>
			<td><%=resultSet.getString("passengers") %></td>
			<td><%=resultSet.getString("ticket_price") %></td>
        </tr>
        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            else {
                out.print("You must Login first");
            }
        %>
        </tbody>
    </table>
</div>
<footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
</body>
</html>