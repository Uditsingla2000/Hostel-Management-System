

<!DOCTYPE>
<html>
	<head>
		<title>staff insert</title>
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
			<span class="FieldInfo">Employee id </span>
			<br>
			<input type="text" name="Emp_id" value="">
			<br>
			<span class="FieldInfo">Employee Name:</span>
			<br>
			<input type="text" name="Emp_name" value="">
			<br>
			<span class="FieldInfo">Employee salary:</span>
			<br>
			<input type="text" name="Emp_salary" value="">
			<br>
			<span class="FieldInfo">Address:</span>
			<br>
			<input type="text" name="Address" value="">
			<br>
			<span class="FieldInfo">City:</span>
			<br>
			<input type="text" name="City" value="">
			<br>
			<span class="FieldInfo">State:</span>
			<br>
			<input type="text" name="State" value="">
			<br>
			<span class="FieldInfo">Pincode:</span>
			<br>
			<input type="text" name="Pincode" value="">
			<br>
			<span class="FieldInfo">Mobile Number:</span>
			<br>
			<input type="text" name="Mobile_number" value="">
			<br>
			<span class="FieldInfo">Hostel id:</span>
			<br>
			<input type="text" name="Hostel_id" value="">
			<br>
			<span class="FieldInfo">Designation:</span>
			<br>
			<input type="text" name="Designation" value="">
			<br>
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>

<?php 

if(isset($_POST["Submit"]))
{
	$Emp_id =$_POST["Emp_id"];
		$Emp_name =$_POST["Emp_name"];
		$Emp_salary=$_POST["Emp_salary"];
		$Address=$_POST["Address"];
		$City=$_POST["City"];
		$State=$_POST["State"];
		$Pincode=$_POST["Pincode"];
		$Mobile_number=$_POST["Mobile_number"];
		$Hostel_id=$_POST["Hostel_id"];
		$Designation=$_POST["Designation"];
		

$Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

	$Query="INSERT INTO staff
	VALUES('$Emp_id','$Emp_name','$Emp_salary','$City','$State','$Pincode', '$Address','$Mobile_number','$Hostel_id','$Designation')" ;

$Execute=mysql_query($Query);

if($Execute){
	echo "<h2>record saved</h2>"; 
}
else
{
	echo "<h3>Something went wrong</h3>";
}


}


 ?>

	</body>
</html>