<?php 
    $menu_active =2;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
    if(isset($_POST['btn_update'])){
        $v_id = @$connect->real_escape_string($_POST['txt_id']);
        $cate = $_POST["catename"];
        $note = $_POST["note"];
        
        $query_update = "UPDATE tbl_pos_category SET 
                                    category_name = '$cate' 
                                    , note_cate = '$note'
                                    WHERE cate_id = '$v_id'" ;
        if($connect->query($query_update)){
            $sms = '<div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Successfull!</strong> Data update ...
            </div>'; 
            echo '<script> window.location.replace("index.php");</script>';
        }else{
            $sms = '<div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Error!</strong> Query error ...
            </div>';   
        }
    }


// get old data 
    $edit_id = @$_GET['edit_id'];
    $old_data = $connect->query("SELECT * FROM tbl_pos_category WHERE cate_id='$edit_id'");
    $row_old = mysqli_fetch_object($old_data);


 ?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <?= @$sms ?>
            <h2><i class="fa fa-plus-circle fa-fw"></i>Edit Record</h2>
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
                <form action="<?= $_SERVER['PHP_SELF'] ?>?edit_id=<?= $edit_id ?>" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="txt_id" value="<?= $row_old->cate_id ?>">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label for ="">Category Name:</label>                                          
                                    <input class="form-control" required  name="catename" type="text" placeholder="Category Name" value="<?= $row_old->category_name ?>">          
                                </div>
                                <div class="form-group">
                                    <label for="note">Note:</label>
                                     <textarea class="form-control" rows="4" id="note" name = "note"><?= $row_old->note_cate ?></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <button type="submit" name="btn_update" class="btn green"><i class="fa fa-save fa-fw"></i>Save Change</button>
                                <a href="index.php" class="btn red"><i class="fa fa-undo fa-fw"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form><br>
            </div>
        </div>
    </div>
</div>