<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "system_pos";

	// Create connection
	$connect = mysqli_connect($servername, $username, $password, $database);

	// Check connection
	if (!$connect) {
	    die("Connection failed: " . mysqli_connect_error());
	}else{
		mysqli_set_charset($connect,"utf8");
		session_start();
		date_default_timezone_set("Asia/Bangkok");
	}
?>