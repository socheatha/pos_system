<?php 
    $menu_active =1;
    $layout_title = "Welcome Dashboard";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
	if(@$_GET['del_id'] != ""){
		$del_id = @$_GET['del_id'];
		$connect->query("DELETE FROM tbl_pos_product WHERE pro_id='$del_id'");
	}
?>
<script type="text/javascript">
	window.location.replace("index.php");
</script>