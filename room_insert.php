
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
<button type="button" class="btn btn-dark btn-lg" onclick="window.location.href='admin_login.php'" >Home</button>
<div>
	<br><br>
	<form class="" action="" method="post">
		<fieldset>
			<span class="FieldInfo">Room ID:</span>
			<br>
			<input type="text" name="Room_Id" value="">
			<br>
			<span class="FieldInfo">Capacity:</span>
			<br>
			<input type="text" name="Capacity" value="">
			<br>
			<span class="FieldInfo">Name Of Student:</span>
			<br>
			<input type="text" name="Name_Of_Student" value="">
			<br>
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="">
			<br>
			<span class="FieldInfo">Hostel ID:</span>
			<br>
			<input type="text" name="Hostel_Id" value="">
			<br>	
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>
<?php
if(isset($_POST["Submit"])){
$Room_Id= $_POST["Room_Id"];
$Capacity= $_POST["Capacity"];
$Name_Of_Student= $_POST["Name_Of_Student"];
$Roll_Number=$_POST["Roll_Number"];
$Hostel_Id=$_POST["Hostel_Id"];
$Connection=mysql_connect('localhost','root','');
$Selected=mysql_select_db('dbms',$Connection);


$Query="INSERT INTO room VALUES('$Room_Id','$Capacity','$Name_Of_Student','$Roll_Number','$Hostel_Id')";
                              
            $Execute=mysql_query($Query);


$Query1 = "UPDATE student
           SET room_id = '$Room_Id' , hostel_id = '$Hostel_Id' 
           WHERE rollno = '$Roll_Number'" ;

           $Execute1=mysql_query($Query1);

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