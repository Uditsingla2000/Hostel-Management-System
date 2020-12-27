<!DOCTYPE html>
<html>
<head>
	<style >h2 {text-align: center;}</style>
	<title>Attendance Record</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<form action="attendance_view.php" method="GET">
	</div>

</form>

<?php 
$Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

if(isset($_GET['SearchButton'])){
	$Search=$_GET["Search"];
	$SearchQuery="SELECT * FROM attendance WHERE rollno='$Search'OR date ='$Search' ";
	$Execute = mysql_query($SearchQuery);
	while($DataRows=mysql_fetch_array($Execute)){
	$Rollno=$DataRows['rollno'];
	$Room_id=$DataRows['room_id'];
	$Date=$DataRows['date'];
	$Time=$DataRows['time'];
	$Present=$DataRows['present'];

 ?>
 <br><hr>
<caption><h2>Search Results</h2></caption>
 <table class="table table-hover" >
 	
 	<tr>
		<th>Roll Number</th>
		<th>Room ID</th>
		<th>Date</th>
		<th>Time</th>
		<th>Attendance</th>
 
	</tr>
	 <tr>
<td><?php echo $Rollno; ?></td>
<td><?php echo $Room_id; ?></td>
<td><?php echo $Date; ?></td>
<td><?php echo $Time; ?></td>
<td><?php echo $Present; ?></td>

</tr>

 </table>

 <?php 
}
}
 ?>


<br><hr>
<caption><h2>Attendance Record</h2></caption>
<table class="table table-hover">
	<tr>
		<th>Roll Number</th>
		<th>Room ID</th>
		<th>Date</th>
		<th>Time</th>
		<th>Attendance</th>
 
	</tr>
<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);
$ViewQuery="SELECT * FROM attendance" ;
$Execute=mysql_query($ViewQuery);



while($DataRows=mysql_fetch_array($Execute)){
	$Rollno=$DataRows['rollno'];
	$Room_id=$DataRows['room_id'];
	$Date=$DataRows['date'];
	$Time=$DataRows['time'];
	$Present=$DataRows['present'];


 ?>
 <tr>
<td><?php echo $Rollno ;?></td>
<td><?php echo $Room_id; ?></td>
<td><?php echo $Date; ?></td>
<td><?php echo $Time; ?></td>
<td><?php echo $Present; ?></td>

</tr>

<?php } ?>
</table>




</body>
</html>