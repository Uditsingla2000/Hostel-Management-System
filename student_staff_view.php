<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style >h2 {text-align: center;}</style>
	<title>Staff View</title>
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>



<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
      <ul class="navbar-nav mr-auto">
        
        <li class="nav-item"> </li>
        <li><button type="button" class="btn btn-primary" onclick="window.location.href='student_login.php'" >Home</button></li>
        <li><button type="button" class="btn btn-primary" onclick="window.location.href='student_view.php'" >My Profile</button></li>

       <li><button type="button" class="btn btn-primary" onclick="window.location.href='message_view_personal.php'" >Notifications</button></li>
        <li class="nav-item">&nbsp;</li>
      <li><div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Forms
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="leave.php">Leave</a>
    <a class="dropdown-item" href="leave_status.php">Leave Status</a>
    <a class="dropdown-item" href="complaint.php">Complaint</a>
    <a class="dropdown-item" href="complaint_status.php">Complaint Status</a>
  </div>
</div>
</li>
     <li><button type="button" class="btn btn-primary" onclick="window.location.href='sports_status.php'" >Sports</button></li>   
        
      <li><button type="button" class="btn btn-primary" onclick="window.location.href='mess_student_view.php'" >Mess</button></li>
        
        <li><button type="button" class="btn btn-primary" onclick="window.location.href='student_staff_view.php'" >Staff</button></li>
        <li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><button type="button" class="btn btn-primary" onclick="window.location.href='logout.php'" >Logout</button></li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
      </form>
    </div>
  </nav>




  <br><br>




	<caption><h2>Staff Data</h2></caption>
	<table class="table table-hover">
		
		<tr>
			<th>id</th>			
			<th>Name</th>					
			<th>Address</th>			
			<th>City</th>			
			<th>State</th>			
			<th>Pincode</th>			
			<th>Mobile</th>			
			<th>Hostel id</th>				
			<th>Designation</th>			
				

		</tr>

<?php 
$variable = $_SESSION["Name"] ; 
$Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);
$ViewQuery="SELECT * 
           FROM staff
         WHERE hostel_id = (
	           SELECT hostel_id
	           FROM student
	           WHERE rollno = '$variable'
) ";

$Execute=mysql_query($ViewQuery);



while($DataRows=mysql_fetch_array($Execute)){
	$Emp_id=$DataRows['emp_id'];
	$Emp_name=$DataRows['emp_name'];
	$Address=$DataRows['address'];
	$City=$DataRows['city'];
	$State=$DataRows['state'];
	$Pincode=$DataRows['pincode'];
	$Mobile_number=$DataRows['mobile_number'];
	$Hostel_id=$DataRows['hostel_id'];
	$Designation=$DataRows['designation'];

 ?>
 
 <tr>
<td><?php echo $Emp_id ;?></td>
<td><?php echo $Emp_name; ?></td>
<td><?php echo $Address; ?></td>
<td><?php echo $City; ?></td>
<td><?php echo $State; ?></td>
<td><?php echo $Pincode; ?></td>
<td><?php echo $Mobile_number; ?></td>
<td><?php echo $Hostel_id; ?></td>
<td><?php echo $Designation; ?></td>


</tr>

<?php } ?>

	

	</table>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.4.1.js"></script>


</body>
</html>