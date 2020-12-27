<?php
session_start();
?>

<?php
session_destroy();
header( "refresh:0.1;url=Login.php" );
exit();

?>

