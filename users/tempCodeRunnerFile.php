<?php
session_start();
error_reporting(0);
include("includes/config.php");
if (isset($_POST['submit'])) {
	$ret = mysqli_query($con, "SELECT * FROM users WHERE userEmail='" . $_POST['username'] . "' and password='" . md5($_POST['password']) . "'");
	$num = mysqli_fetch_array($ret);
	if ($num > 0) {
		$extra = "dashboard.php"; //
		$_SESSION['login'] = $_POST['username'];
		$_SESSION['id'] = $num['id'];
		$host = $_SERVER['HTTP_HOST'];
		$uip = $_SERVER['REMOTE_ADDR'];
		$status = 1;
		$log = mysqli_query($con, "insert into userlog(uid,username,userip,status) values('" . $_SESSION['id'] . "','" . $_SESSION['login'] . "','$uip','$status')");
		$uri = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
		header("location:http://$host$uri/$extra");
		exit();
	} else {
		$_SESSION['login'] = $_POST['username'];
		$uip = $_SERVER['REMOTE_ADDR'];
		$status = 0;
		mysqli_query($con, "insert into userlog(username,userip,status) values('" . $_SESSION['login'] . "','$uip','$status')");
		$errormsg = "Invalid username or password";
		$extra = "login.php";

	}
}



if (isset($_POST['change'])) {
	$email = $_POST['email'];
	$contact = $_POST['contact'];
	$password = md5($_POST['password']);
	$query = mysqli_query($con, "SELECT * FROM users WHERE userEmail='$email' and contactNo='$contact'");
	$num = mysqli_fetch_array($query);
	if ($num > 0) {
		mysqli_query($con, "update users set password='$password' WHERE userEmail='$email' and contactNo='$contact' ");
		$msg = "Password Changed Successfully";

	} else {
		$errormsg = "Invalid email id or Contact no";
	}
}