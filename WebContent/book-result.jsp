<%@page import="java.sql.*"%>
<%@ page import="com.model.search" %>
<%


    String query = search.getQuery();
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body{
 background-image: url("1233k.jpg");
  height: 500px; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

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
<div>
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong><font color ="linen">
        Showing available flights from <%=search.source%> to  <%=search.destination%> <br>
        Date of travel : <%=search.date%> <br>
        No of travellers :  <%=search.passengers%></font> </strong></span> <br>
    </p>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <td scope="col"><font color="linen">flight_id</font></td>
			<td scope="col"><font color="linen">date</font></td>
			<td scope="col"><font color="linen">day</font></td>
			<td scope="col"><font color="linen">source</font></td>
			<td scope="col"><font color="linen">destination</font></td>
			<td scope="col"><font color="linen">passengers</font></td>
			<td scope="col"><font color="linen">ticket_price</font></td>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
        <%
            try{
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root", "root123");
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
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
			<td>
                <form action="${pageContext.request.contextPath}/booking-details.jsp" method="post">
                    <input type="hidden" id="date" name="date" value="<%=resultSet.getString("date")%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" id="flight_id" name="flight_id" value="<%=resultSet.getString("flight_id")%>">
                    <input type="submit" class="btn btn-success" value="Book This Flight">
                </form>
                </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</div>

<footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
  </body>
</html>