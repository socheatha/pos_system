<?php 
    $menu_active =2;
    $layout_title = "Welcome Dashboard";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
	if(@$_GET['del_id'] != ""){
		$del_id = @$_GET['del_id'];
		$connect->query("DELETE FROM tbl_slider WHERE sd_id='$del_id'");
	}
	if(@$_GET['del_img'] != ""){
		$del_img = @$_GET['del_img'];
		if(file_exists("../../img/img_slider/".$del_img)){
			unlink("../../img/img_slider/".$del_img);
		}
	}
?>
<script type="text/javascript">
	window.location.replace("index.php");
</script>