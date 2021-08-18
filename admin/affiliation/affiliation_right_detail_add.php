<?php 
    $menu_active =9;
    $layout_title = "Edit Affiliation Right Aside Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php
// get old data 
    $edit_id = @$_GET['edit_id'];
    $old_slider = $connect->query("SELECT * FROM tbl_affiliation WHERE aff_id='$edit_id'");
    $row_old_slider = mysqli_fetch_object($old_slider);


 ?>




<div class="portlet light bordered">
    <div class="portlet-body">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit Information</h4>
            </div>
            <div class="modal-body">
                <form action="affiliation_right_detail.php?edit_id=<?= $edit_id ?>" method="POST" role="form">
                    <input type="hidden" name="txt_aff_id" value="<?= $edit_id ?>">
                    <div class="form-group">
                        <label for="">Title</label>
                        <input name="txt_title" type="text" class="form-control" id="" placeholder="Input Title">
                    </div>
                
                    <div class="form-group">
                        <label for="">Description</label>
                        <textarea name="txt_description" class="form-control detail" id="detail" rows="4" placeholder="Input Description"></textarea>
                    </div>
                
                    
                
                    <button type="submit" name="btn_add" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-warning">Reset</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>



<?php include_once '../layout/footer.php' ?>
<script type="text/javascript" src="../../plugin/ckeditor_4.7.0_full/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    CKEDITOR.replace( 'detail', {
        language: 'en',
      height: '200'
        // uiColor: '#9AB8F3'
    });
</script>