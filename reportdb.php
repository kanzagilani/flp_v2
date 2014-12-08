<?php
	include ("connection.php");
	header("Cotent-Type:application/json");
	$id = $_POST['accountno'];
	
echo "The report of per Day". "<br>";	
	
	$stmt = $conn->prepare('SELECT * FROM expense_table WHERE date = :id');
    $stmt->execute(array('id' => $id)); 
	
	$data = $stmt->fetch(PDO::FETCH_NUM); 
	//var_dump ($data);
	echo "The expense .$data[1]"."<br>";
        echo  "The category. $data[2] ". "<br>";
        echo  "The Description. $data[3] ". "<br>";
         echo  "The Date. $data[4]". "<br>";
echo  "The Time he entered. $data[5] ". "<br>";
echo  "The Location. $data[6] ". "<br>";
	
?>