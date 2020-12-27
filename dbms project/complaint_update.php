<?php 
 $Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Update_Status=$_GET['update'];
$Query="UPDATE complaint
               SET status = 'action taken'
                WHERE rollno ='$Update_Status' "
;

$Execute=mysql_query($Query);
if($Execute){
	echo '<script>window.open("complaint_view.php?updated=Record updated successfully","_self")</script> ';
}

 ?>