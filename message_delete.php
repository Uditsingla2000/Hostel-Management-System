<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Delete_message=$_GET['Delete'];
$Delete_Query="UPDATE message
				 SET admin_view = 0 
				WHERE rollno ='$Delete_message' " ;

$Execute=mysql_query($Delete_Query);
if($Execute){
	echo '<script>window.open("message_view.php?Deleted=Record Deleted successfully","_self")</script> ';
}

 ?>