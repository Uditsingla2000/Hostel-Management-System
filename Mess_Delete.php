<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Delete_rollno=$_GET['Delete'];
$Delete_Query="UPDATE mess
			    SET fees = 0 
				WHERE rollno='$Delete_rollno' "
;

$Execute=mysql_query($Delete_Query);
if($Execute){


	echo "Record Updated Successfully";
}

 ?>