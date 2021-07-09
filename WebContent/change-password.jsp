<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@page import="servlet.Login"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>change Password </title>
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
        <h1>Password Change</h1>
            <%
            if (Login.isLoggedIn) {
            %>
                <form action="change-password" method="post">
                    <div>
                        <label class="sr-only">Email address : admin@flyaway.com</label>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">New Password</label>
                        <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Enter a new password">
                        <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= Login.password %></small>
                    </div>
                    <button type="submit" class="btn btn-info mb-2">Change Password</button>
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>
    </div>
    <footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
</body>
</html>