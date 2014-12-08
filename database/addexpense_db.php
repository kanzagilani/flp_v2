<?php
$con = mysql_connect("localhost","kanza","kanza");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("logistics", $con);

$sql="INSERT INTO expense_table(expense,category,description,date,time) VALUES('$_POST[expense]','$_POST[category]','$_POST[description]','$_POST[date]','$_POST[time]')";
echo $sql."\nTo Be instered!";
if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }

$message = " Income Added Succesfully";
echo "<script type='text/javascript'>alert('$message');</script>";

?>	