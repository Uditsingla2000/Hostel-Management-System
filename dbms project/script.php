<?php
session_start();
$_SESSION['test'] = 'test';

if (isset($_POST['submit']) && ! empty($_POST['submit'])) {
	header('Location: leave_view.php');
}
?>