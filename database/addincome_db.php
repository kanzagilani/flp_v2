<?php
$con = mysql_connect("localhost","kanza","kanza");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("logistics", $con);

$lat = $_POST['lat'];
$long = $_POST['long'];

echo $lat . " is the latitude and " . $long . " is the longitude\n";

$loc = $long . "," . $lat;

$sql="INSERT INTO income_table(income,category,description,date,time,location) VALUES('$_POST[income]','$_POST[category]','$_POST[description]','$_POST[date]','$_POST[time]','$loc')";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }

$message = " Income Added Succesfully";
echo "<script type='text/javascript'>alert('$message');</script>";

?>	