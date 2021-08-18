<?php 
    $menu_active =4;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 

    if(isset($_POST["btn_add"])){
        $kname = @$connect->real_escape_string($_POST["name_khmer"]);
        $ename = @$connect->real_escape_string($_POST["name_english"]);
        $phone = @$connect->real_escape_string($_POST["phone"]);
        $addr = @$connect->real_escape_string($_POST["addr"]);
        $note = @$connect->real_escape_string($_POST["note"]);

        $query_add = "INSERT INTO tbl_pos_vender 
                                (vendername_kh,vendername_en,phone,address,note) 
                            VALUES 
                                ('$kname', '$ename' ,'$phone' , '$addr', '$note')";
        if($connect->query($query_add)){
            $sms = '<div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Successfull!</strong> Data inserted ...
            </div>'; 
        }else{
            $sms = '<div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Error!</strong> Query error ...
            </div>';   
        }
    }

 ?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <?= @$sms ?>
            <h2><i class="fa fa-plus-circle fa-fw"></i>Create Record</h2>
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
                 <form action="<?= $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label>Name English
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <input type="text" class="form-control" name="name_english" placeholder="" required="required" autocomplete="off">
                                </div>
                                <div class="form-group">
                                    <label>Name Khmer
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <input type="text" class="form-control" name="name_khmer" placeholder="" required="required" autocomplete="off">
                                </div>
                                <div class="form-group">
                                    <label>Phone
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <input type="text" class="form-control" name="phone" placeholder="" required="required" autocomplete="off">
                                </div>
                                <div class="form-group">
                                    <label>Address
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <input type="text" class="form-control" name="addr" placeholder="" required="required" autocomplete="off">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label>Note
                                        <span class="required" aria-required="true">*</span>
                                    </label>
                                    <textarea class="form-control" name="note" placeholder="" required="required" autocomplete="off" style="height: 251px;"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <button type="submit" name="btn_add" class="btn blue"><i class="fa fa-save fa-fw"></i>Save</button>
                                <a href="index.php" class="btn red"><i class="fa fa-undo fa-fw"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form><br>
            </div>
        </div>
    </div>
</div>
<?php include_once '../layout/footer.php' ?>
