<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Update_Record =$_GET['Delete'];

$ShowQuery="SELECT * FROM sports
				WHERE equipment_id = $Update_Record ";

$Update=mysql_query($ShowQuery);

while($DataRows=mysql_fetch_array($Update)){
	$Issue_Date=$DataRows['issue_date'];
	$Return_Date=$DataRows['return_date'];
	$Equipment_Id=$DataRows['equipment_id'];
	$Roll_Number=$DataRows['rollno'];
	$Fine=$DataRows['fine'];
	$Equipment_Details=$DataRows['equipment_details'];
	$Hostel_Id=$DataRows['hostel_id']; 
	
}


 ?>



 <!DOCTYPE>
<html>
	<head>
		<title>Update.php</title>
		<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/visitor_style.css">
	</head>
	<style media="screen">
	</style>
	<body>
<div>
	<form class="" action="" method="post">
		<button type="button" class="btn btn-dark btn-lg" onclick="window.location.href='sports.php'" >Home</button>
		<fieldset>
			<span class="FieldInfo">Issue DATE:</span>
			<br>
			<input type="Date" name="Issue_Date" value="<?php echo $Issue_Date; ?>">
			<br>
			<span class="FieldInfo">Return DATE:</span>
			<br>
			<input type="Date" name="Return_Date" value="<?php echo $Return_Date; ?>">
			<br>
			<span class="FieldInfo">Equipment ID:</span>
			<br>
			<input type="text" name="Equipment_Id" value="<?php echo $Equipment_Id; ?>">
			<br>
			<span class="FieldInfo">Roll Number:</span>
			<br>
			<input type="text" name="Roll_Number" value="<?php echo $Roll_Number; ?>">
			<br>
			<span class="FieldInfo">Fine:</span>
			<br>
			<input type="text" name="Fine" value="<?php echo $Fine; ?>">
			<br>
			<span class="FieldInfo">Equipment Details:</span>
			<br>
			<input type="text" name="Equipment_Details" value="<?php echo $Equipment_Details; ?>">
			<br>
			<span class="FieldInfo">Hostel_Id:</span>
			<br>
			<input type="text" name="Hostel_Id" value="<?php echo $Hostel_Id; ?>">
			<br>	
			<button type="Submit" name="Submit" value="Submit your record">SUBMIT</button>
		</fieldset>
	</form>
</div>

	</body>

</html>



<?php 

if(isset($_POST["Submit"])){
	
$Issue_Date= $_POST["Issue_Date"];
$Return_Date= $_POST["Return_Date"];
$Equipment_Id= $_POST["Equipment_Id"];
$Roll_Number=$_POST["Roll_Number"];
$Fine=$_POST["Fine"];
$Equipment_Details=$_POST["Equipment_Details"];
$Hostel_Id=$_POST["Hostel_Id"];
$Connection=mysql_connect('localhost','root','');
$Selected=mysql_select_db('dbms',$Connection);



$UpdateQuery="UPDATE sports 
SET issue_date= '$Issue_Date' ,return_date= '$Return_Date' , equipment_id='$Equipment_Id', rollno='$Roll_Number', fine='$Fine', equipment_details='$Equipment_Details'
		WHERE  equipment_id = $Equipment_Id   ";

$Execute=mysql_query($UpdateQuery);
	if($Execute){
		function redirect_to($NewLocation){
			header("Location:".$NewLocation);
		exit;
		}
	redirect_to("sports_view.php?Updated=Record Updated Sucessfully");
	}


		} 

 ?>


