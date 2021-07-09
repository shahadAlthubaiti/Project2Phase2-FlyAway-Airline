<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
body{
 background-image: url("1233k.jpg");
  background-color: #cccccc;
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
<body bgcolor="#F6CED8">
<hr>
    <div class="container">
        <div class="row">
            <div class="col">
                <h1 align="center">FlyAway Ticket Booking </h1>
                <br>
            </div>
        </div>

    </div>
<hr>

    <div class="container">
        <form action="search">
            <div class="form-group">
                <label for="date">Date</label><br>
                <input type="date"  class="form-control" id="date" name="date" placeholder="Travel Date..">
            </div><br>
            <div class="form-group">
                <label for="source">Source</label><br>
                <select  class="form-control" id="source" name="source">
                    <option value="Saudi Arabia">Saudi Arabia</option>
                    <option value="USA">USA</option>
                    <option value="UK">UK</option>
                  
                </select>
            </div>
            <br>
            <div class="form-group">
                <label for="destination">Destination</label><br>
                <select  class="form-control" id="destination" name="destination">
                    <option value="USA">USA</option>
                    <option value="UK">UK</option>
                    <option value="Saudi Arabia">Saudi Arabia</option>
                </select>
            </div>
            <br>
            <div>
                <label for="passengers">No of Passengers</label><br>
                <select class="form-control" id="passengers" name="passengers">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            <br>
            <button type="submit" class="btn btn-success" value="Submit">Search Flights</button>
        </form>
    </div>
    <br>
    <hr>
<footer><p>Developer : Shahad Abduallah <br>
  <a href="mailto:shahadabduallah1999@gmail.com">shahadabduallah1999@gmail.com</a></p></footer>
</body>
</html>