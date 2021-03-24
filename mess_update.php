<?php

$Connection=mysql_connect('localhost','root','');
$Selected= mysql_select_db('dbms',$Connection);

$Variable = date("Y-m-d") ;


$ViewQuery= "
           UPDATE  mess
           SET fees = fees + 3000 , date = '$Variable'
            ";

$Execute=mysql_query($ViewQuery);


$ViewQuery1="SELECT rollno 
            FROM mess
            WHERE fees >= '9000'
            ";
$Execute1=mysql_query($ViewQuery1);


while($DataRows=mysql_fetch_array($Execute1)){
	$Roll_No=$DataRows['rollno'];

$Query2="INSERT INTO message(rollno,date1,message,from1) 
VALUES('$Roll_No','$Variable','Your fees is long due','Mess')" ;
$Execute2=mysql_query($Query2);

}
if($Execute){
	echo "<h2>Successfully Updated</h2>";
}

?>