<?php 
    $menu_active =9;
    $layout_title = "Edit Affiliation Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
    if(isset($_POST['btn_add'])){
        $v_image = @$_FILES['txt_image'];
        $v_id = @$_POST['txt_id'];
        $v_title = @$connect->real_escape_string($_POST['txt_title']);
        $v_description = @$connect->real_escape_string($_POST['txt_description']);
        $v_detail = @$connect->real_escape_string($_POST['txt_detail']);
        $v_category = @$_POST['txt_category'];
        if($v_image["name"] != ""){
            $old_image = @$_POST['txt_old_img'];
            if(file_exists("../../img/img_affiliation/".$old_image)){
                unlink("../../img/img_affiliation/".$old_image);
            }

            $new_name = date("Ymd")."_".rand(1111,9999)."_".$v_image["name"];
            move_uploaded_file($v_image["tmp_name"], "../../img/img_affiliation/".$new_name);

            $query_update = "UPDATE tbl_affiliation SET
                    aff_title_cn='$v_title',
                    aff_image='$new_name',
                    aff_category_id='$v_category',
                    aff_description_cn='$v_description',
                    aff_detail_cn='$v_detail' WHERE aff_id='$v_id'";
            
        }else{
            $query_update = "UPDATE tbl_affiliation SET
                    aff_title_cn='$v_title',
                    aff_category_id='$v_category',
                    aff_description_cn='$v_description',
                    aff_detail_cn='$v_detail' WHERE aff_id='$v_id'";
        }
        if($connect->query($query_update)){
            $sms = '<div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Successfull!</strong> Data update ...
            </div>'; 
        }else{
            $sms = '<div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Error!</strong> Query error ...
            </div>';   
        }
    }


// get old data 
    $edit_id = @$_GET['edit_id'];
    $edit_img = @$_GET['edit_img'];
    $old_slider = $connect->query("SELECT * FROM tbl_affiliation WHERE aff_id='$edit_id'");
    $row_old_slider = mysqli_fetch_object($old_slider);


 ?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <?= @$sms ?>
            <h2><i class="fa fa-plus-circle fa-fw"></i>Edit Record in Chinese</h2>
        </div>
    </div>
    
    <br>
    <br>

    <div class="portlet-title">
        <div class="caption font-dark">
            <a href="index.php" id="sample_editable_1_new" class="btn red"> 
                <i class="fa fa-arrow-left"></i>
                Back
            </a>
        </div>
    </div>
    <div class="portlet-body">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Input Information</h3>
            </div>
            <div class="panel-body">
                 <form action="#" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="txt_id" value="<?= @$row_old_slider->aff_id ?>">
                    <input type="hidden" name="txt_old_img" value="<?= @$row_old_slider->aff_image ?>">
                    <div class="form-body">
                        <img width="100%" src="../../img/img_affiliation/<?= @$row_old_slider->aff_image ?>" class="img-responsive img-responsive img-thumbnail" alt="Image"><br><br><br>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group form-md-line-input">
                                    <input type="text" class="form-control" name="txt_title" placeholder="Enter your name" required="required" autocomplete="off" value="<?= @$row_old_slider->aff_title_cn ?>">
                                    <label>Title
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <span class="help-block">Enter Slider Title...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="file" class="form-control" name="txt_image" placeholder="Enter your email" autocomplete="off">
                                    <label>Image
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <span class="help-block">Enter Slider Image...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <select name="txt_category" class="form-control" required="required">
                                        <option value="">==Choose Category==</option>
                                        <?php 
                                            $get_category = $connect->query("SELECT * FROM tbl_affiliation_category ORDER BY ac_id ASC");
                                            while ($row_category = mysqli_fetch_object($get_category)) {
                                                if($row_category->ac_id==@$row_old_slider->aff_category_id){
                                                    echo '<option SELECTED value="'.$row_category->ac_id.'">'.$row_category->ac_title_en.'</option>';
                                                }else{
                                                    echo '<option value="'.$row_category->ac_id.'">'.$row_category->ac_title_en.'</option>';
                                                }
                                            }
                                        ?>
                                    </select>
                                    <label>Category
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <span class="help-block">Enter Category...</span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group form-md-line-input">
                                    <textarea style="height: 123px;" class="form-control" name="txt_description" placeholder="Repeat your password" required="required" autocomplete="off"><?= @$row_old_slider->aff_description_cn ?></textarea>
                                    <label>Description
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <span class="help-block">Enter Slider Summary Description...</span>
                                </div>
                            </div>
                            <hr><hr><hr><br>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group form-md-line-input">
                                    <textarea style="height: 290px;" class="form-control detail" id="detail" name="txt_detail" placeholder="Repeat your password" required="required" autocomplete="off"><?= @$row_old_slider->aff_detail_cn ?></textarea>
                                    <label>Detail
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <span class="help-block">Enter Slider Detail...</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <button type="submit" name="btn_add" class="btn green"><i class="fa fa-check fa-fw"></i>Update</button>
                                <button type="reset" class="btn yellow"><i class="fa fa-eraser fa-fw"></i>Reset</button>
                                <a href="index.php" class="btn red"><i class="fa fa-undo fa-fw"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form><br>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript" src="../../plugin/ckeditor_4.7.0_full/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    CKEDITOR.replace( 'detail', {
        language: 'en',
      height: '700'
        // uiColor: '#9AB8F3'
    });
</script>


<?php include_once '../layout/footer.php' ?>
