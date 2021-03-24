<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Delete_Hostel_id=$_GET['Delete'];
$Delete_Query="DELETE FROM hostel
				WHERE hostel_id='$Delete_Hostel_id' "
;

$Execute=mysql_query($Delete_Query);
if($Execute){
	echo '<script>window.open("hostel_view.php?Deleted=Record Deleted successfully","_self")</script> ';
}

 ?>