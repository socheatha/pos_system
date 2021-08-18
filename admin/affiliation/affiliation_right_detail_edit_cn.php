<?php 
    $menu_active =9;
    $layout_title = "Edit Affiliation Right Aside Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
// udate 
    if(isset($_POST['btn_update'])){
        $v_id = @$_POST['txt_ars_id'];
        $v_title = @$connect->real_escape_string($_POST['txt_title']);
        $v_description = @$connect->real_escape_string($_POST['txt_description']);
        $v_posted_by = @$_SESSION['user']->user_id;
        $connect->query("UPDATE tbl_affiliation_right_aside SET 
            ars_title_cn='$v_title',
            ars_description_cn='$v_description',
            ars_posted_by='$v_posted_by'
            WHERE ars_id='$v_id'
        ");
        echo '<script>
            window.location.replace("affiliation_right_detail.php?edit_id='.$_POST['txt_aff_id'].'");
        </script>';
    }



// get old data 
    $edit_id = @$_GET['ars_id'];
    $get_data = $connect->query("SELECT * FROM tbl_affiliation_right_aside 
        WHERE ars_id = '$edit_id'");
    $row = mysqli_fetch_object($get_data);


 ?>


<div class="portlet light bordered">



    <div class="portlet-body">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit Information in Chinese</h4>
            </div>
            <div class="modal-body">
                <form action="" method="POST" role="form">
                    <input type="hidden" name="txt_ars_id" value="<?= $row->ars_id ?>">
                    <input type="hidden" name="txt_aff_id" value="<?= $row->ars_affiliation ?>">
                    <div class="form-group">
                        <label for="">Title</label>
                        <input value="<?= $row->ars_title_cn ?>" name="txt_title" type="text" class="form-control" id="" placeholder="Input Title">
                    </div>
                
                    <div class="form-group">
                        <label for="">Description</label>
                        <textarea name="txt_description" class="form-control detail" id="detail" rows="4" placeholder="Input Description"><?= $row->ars_description_cn ?></textarea>
                    </div>
                
                    
                
                    <button type="submit" name="btn_update" class="btn btn-success">Update</button>
                    <a href="<?= $_SERVER['PHP_SELF'] ?>?ars_id=<?= $row->ars_id ?>" class="btn btn-warning">Reset</a>
                    <a href="affiliation_right_detail.php?edit_id=<?= $row->ars_affiliation ?>" class="btn btn-danger" data-dismiss="modal">Cancel</a>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>




<script type="text/javascript" src="../../plugin/ckeditor_4.7.0_full/ckeditor/ckeditor.js"></script>
<?php include_once '../layout/footer.php' ?>



 



<!-- <script type="text/javascript" src="../../plugin/ckeditor_4.7.0_full/ckeditor/ckeditor.js"></script> -->
<script type="text/javascript">
    CKEDITOR.replace( 'detail', {
        language: 'en',
      height: '200',
        // uiColor: '#0000000'
    });
</script>