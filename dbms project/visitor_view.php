<!DOCTYPE html>
<html>
<head>
	<style >h2 {text-align: center;}</style>
	<title>Visitor Record</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<form action="attendance_view.php" method="GET">
	</div>

</form>

<br><hr>
<caption><h2>Visitor Record</h2></caption>
<table class="table table-hover">
	
	<tr>
		<th>Aadhar Number</th>
		<th>Roll Number</th>
		<th>Visitor Name</th>
		<th>Time IN</th>
		<th>Time OUT</th>
		<th>Date</th>
		<th>Relationship</th>
 
	</tr>
<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);
$ViewQuery="SELECT * 
            FROM Visitor " ;
$Execute=mysql_query($ViewQuery);



while($DataRows=mysql_fetch_array($Execute)){
	$Aadhar_Number=$DataRows['aadhar_number'];
	$Rollno=$DataRows['rollno'];
	$Visitor_Name=$DataRows['visitor_name'];
	$Time_In=$DataRows['time_in'];
	$Time_Out=$DataRows['time_out'];
	$Date=$DataRows['date'];
	$Relationship=$DataRows['relationship'];


 ?>
 <tr>
<td><?php echo $Aadhar_Number ;?></td>
<td><?php echo $Rollno; ?></td>
<td><?php echo $Visitor_Name; ?></td>
<td><?php echo $Time_In; ?></td>
<td><?php echo $Time_Out; ?></td>
<td><?php echo $Date; ?></td>
<td><?php echo $Relationship; ?></td>
</tr>

<?php } ?>
</table>




</body>
</html>