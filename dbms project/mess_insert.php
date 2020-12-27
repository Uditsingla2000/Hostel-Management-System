


<!DOCTYPE>
<html>
	<head>
		<title>room</title>
		<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/visitor_style.css">
	</head>
	<style media="screen">
	</style>
	<body>
<?php ?>
<div>
	<form class="" action="" method="post">
		 <button type="button" class="btn btn-dark btn-lg" onclick="window.location.href='mess.php'" >Home</button>
		<fieldset>
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="">
			<br>
			<span class="FieldInfo">Fees:</span>
			<br>
			<input type="text" name="Fees" value="">
			<br>
			<span class="FieldInfo">Hostel ID:</span>
			<br>
			<input type="text" name="Hostel_Id" value="">
			<br>
			<span class="FieldInfo">Date:</span>
			<br>
			<input type="Date" name="Date" value="">
			<br>	
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>
<?php
if(isset($_POST["Submit"])){
$Roll_Number= $_POST["Roll_Number"];
$Fees= $_POST["Fees"];
$Hostel_Id= $_POST["Hostel_Id"];
$Date=$_POST["Date"];

$Connection=mysql_connect('localhost','root','');
$Selected=mysql_select_db('dbms',$Connection);


$Query="INSERT INTO mess VALUES('$Roll_Number','$Fees','$Hostel_Id','$Date')";
                              
            $Execute=mysql_query($Query);

if($Execute){
	echo "<h2>Record saved </h2>";
}
else
{
	echo "<h3>Something went wrong</h3>";
}

}
?>


	</body>
</html>