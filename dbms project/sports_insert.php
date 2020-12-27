

<!DOCTYPE>
<html>
	<head>
		<title>sports</title>
		<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/visitor_style.css">
	</head>
	<style media="screen">
	</style>
	<body>
<button type="button" class="btn btn-dark btn-lg" onclick="window.location.href='sports.php'" >Home</button>
<div>
	<form class="" action="" method="post">
		<fieldset>
			<span class="FieldInfo">Issue DATE:</span>
			<br>
			<input type="Date" name="Issue_Date" value="">
			<br>
			<span class="FieldInfo">Equipment ID:</span>
			<br>
			<input type="text" name="Equipment_Id" value="">
			<br>
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="">
			<br>
			<span class="FieldInfo">Equipment Details:</span>
			<br>
			<input type="text" name="Equipment_Details" value="">
			<br>
			<span class="FieldInfo">Hostel_Id:</span>
			<br>
			<input type="text" name="Hostel_Id" value="">
			<br>	
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>
<?php
if(isset($_POST["Submit"])){
$Issue_Date= $_POST["Issue_Date"];
$Equipment_Id= $_POST["Equipment_Id"];
$Roll_Number=$_POST["Roll_Number"];
$Equipment_Details=$_POST["Equipment_Details"];
$Hostel_Id=$_POST["Hostel_Id"];
$Connection=mysql_connect('localhost','root','');
$Selected=mysql_select_db('dbms',$Connection);
$Query="INSERT INTO  sports VALUES('$Issue_Date',NULL,'$Equipment_Id','$Roll_Number',NULL,'$Equipment_Details','$Hostel_Id')";
                              
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