<?php 
	include ('../../config/database.php');
	$vpro_id = @$_GET['sent_id'];
	$vcost = $connect->query("SELECT * FROM tbl_pos_product WHERE pro_id='$vpro_id'");
	$row = mysqli_fetch_object($vcost);
	echo $row->price_dolla;

 ?>
 