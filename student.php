


<!DOCTYPE>
<html>
	<head>
		<title>student</title>
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
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="">
			<br>
			<span class="FieldInfo">Student Name:</span>
			<br>
			<input type="text" name="Student_Name" value="">
			<br>
			<span class="FieldInfo">Father Name:</span>
			<br>
			<input type="text" name="Father_Name" value="">
			<br>
			<span class="FieldInfo">Age:</span>
			<br>
			<input type="text" name="Age" value="">
			<br>
			<span class="FieldInfo">DOB:</span>
			<br>
			<input type="Date" name="DOB" value="">
			<br>
			<span class="FieldInfo">Branch:</span>
			<br>
			<input type="text" name="Branch" value="">
			<br>
			<span class="FieldInfo">Primary Mobile Number:</span>
			<br>
			<input type="text" name="Primary_Mobile_Number" value="">
			<br>
			<span class="FieldInfo">Secondary Mobile Number:</span>
			<br>
			<input type="text" name="Secondary_Mobile_Number" value="">
			<br>
			<span class="FieldInfo">SEX:</span>
			<br>
			<input type="text" name="Sex" value="">
			<br>
			<span class="FieldInfo">Year:</span>
			<br>
			<input type="text" name="Year" value="">
			<br>
			<span class="FieldInfo">Blood Group:</span>
			<br>
			<input type="text" name="Blood_Group" value="">
			<br>
			<span class="FieldInfo">Home Address:</span>
			<br>
			<textarea name="Home_Address" rows="8" cols="80"></textarea>
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
			<br><br>
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>

<?php 
$City=0;
$State=0;
$Pincode=0;


if(isset($_POST["Submit"])){

	$Roll_Number =$_POST["Roll_Number"];
	$Student_Name =$_POST["Student_Name"];
	$Father_Name =$_POST["Father_Name"];
	$Age =$_POST["Age"];
	$DOB=$_POST["DOB"];
	$Branch=$_POST["Branch"];
	$Primary_Mobile_Number=$_POST["Primary_Mobile_Number"];
	$Secondary_Mobile_Number=$_POST["Secondary_Mobile_Number"];
	$Sex=$_POST["Sex"];
	$Year =$_POST["Year"];
	$Blood_Group =$_POST["Blood_Group"];
	$Home_Address =$_POST["Home_Address"];
	$City =$_POST["City"];
	$State =$_POST["State"];
	$Pincode =$_POST["Pincode"];

$Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Query= "INSERT INTO student(rollno, student_name, father_name, age, dob, branch, primary_mobile_no, secondary_mobile_no, sex, year, blood_group, home_address, city, state, pincode) VALUES('$Roll_Number','$Student_Name','$Father_Name','$Age','$DOB','$Branch','$Primary_Mobile_Number','$Secondary_Mobile_Number','$Sex','$Year','$Blood_Group','$Home_Address','$City','$State','$Pincode')" ;

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
