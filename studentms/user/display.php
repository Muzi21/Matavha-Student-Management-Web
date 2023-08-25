 <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Time Table</title>

  </head>
  <body>
  
  <br><br><br>
  <div class="container">
    <div class="jumbotron">
      <h1 class="display-4" align="center">Class Time Table</h1>
      <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Teacher Name</th>
      <th scope="col">Subject Name</th>
     <!-- <th scope="col">Class Name</th> --->
      <th scope="col">Starting Time</th>
      <th scope="col">Ending Time</th>
    </tr>
  </thead>
  <tbody>
  <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
   background-color:#CBC3E3;
}
    body{
     background-color: 	White;
      background-image: url(image3.jpg);
      background-size: cover;
      background-attachment: fixed;
    }
</style>
  <?php
include "dbConnect.php";
$sql = "Select * from teachertimetable";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
    while($row=mysqli_fetch_array($result)) {
        echo "<tr><td>" . $row["tn"]. "</td><td>" . $row["sn"] . "</td><td>". $row["st"] . "</td><td>" . $row["et"]. "</td></tr>";
    }
    echo "</table>";
}
?>
  </tbody>
</table>
      </p>
    </div>
  </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <a class="btn btn-primary btn-lg" href="dashboard.php" role="button">	Back</a>
  <style>
.a  {
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
}

.button:hover {opacity: 1}
</style>
  </body>
</html>