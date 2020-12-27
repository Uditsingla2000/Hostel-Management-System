


<!DOCTYPE>
<html>
	<head>
		<title>visitor</title>
		<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/visitor_style.css">
	</head>
	<style media="screen">
	</style>
	<body>
		<button type="button" class="btn btn-dark btn-lg" onclick="window.location.href='security.php'" >Home</button>

<div>
	<form class="" action="" method="post">
		<fieldset>
			<span class="FieldInfo">Aadhar Number:</span>
			<br>
			<input type="text" name="Aadhar_Number" value="">
			<br>
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="">
			<br>
			<span class="FieldInfo">Visitor Name:</span>
			<br>
			<input type="text" name="Visitor_Name" value="">
			<br>
			<span class="FieldInfo">Time In:</span>
			<br>
			<input type="Time" name="Time_In" value="">
			<br>
			<span class="FieldInfo">Time Out:</span>
			<br>
			<input type="Time" name="Time_Out" value="">
			<br>
			<span class="FieldInfo">Date:</span>
			<br>
			<input type="Date" name="Date" value="">
			<br>
			<span class="FieldInfo">Relation with Student :</span>
			<br>
			<input type="text" name="Relation" value="">
			<br>
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>
<?php
if(isset($_POST["Submit"])){
$Aadhar_Number= $_POST["Aadhar_Number"];
$Roll_Number= $_POST["Roll_Number"];
$Visitor_Name= $_POST["Visitor_Name"];
$Time_In= $_POST["Time_In"];
$Time_Out= $_POST["Time_Out"];
$Date= $_POST["Date"];
$Relation= $_POST["Relation"];
$Connection=mysql_connect('localhost','root','');

$Selected=mysql_select_db('dbms',$Connection);
$Query="INSERT INTO  visitor VALUES('$Aadhar_Number','$Roll_Number','$Visitor_Name','$Time_In',
                              '$Time_Out','$Date','$Relation')";
            $Execute=mysql_query($Query); 
if($Execute){
	echo "<h2>Record saved</h2>";
}
else
{
	echo "<h3>Something went wrong</h3>";
}

}
?>  


	</body>
</html>