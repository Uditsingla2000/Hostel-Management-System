







<!DOCTYPE>
<html>
	<head>
		<title>Attendance insert</title>
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
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="">
			<br>
			<span class="FieldInfo">Room ID:</span>
			<br>
			<input type="text" name="Room_Id" value="">
			<br>
			<span class="FieldInfo">DATE:</span>
			<br>
			<input type="Date" name="Date" value="">
			<br>
			<span class="FieldInfo">Time</span>
			<br>
			<input type="Time" name="Time" value="">
			<br>
			<span class="FieldInfo">Present:</span>
			<br>
			<input type="" name="Present" value="">
			<br>
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>
<?php 

if(isset($_POST["Submit"]))
{
	$Roll_Number =$_POST["Roll_Number"];
		$Room_Id =$_POST["Room_Id"];
		$Date =$_POST["Date"];
		$Time =$_POST["Time"];
		$Present=$_POST["Present"];

$Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

	$Query="INSERT INTO attendance
			VALUE('$Roll_Number','$Room_Id','$Date','$Time','$Present')" ;

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