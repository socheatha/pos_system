<?php 
    $menu_active =8;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 

    if(isset($_POST["btn_add"])){
        $kname = @$connect->real_escape_string($_POST["name_khmer"]);
        $ename = @$connect->real_escape_string($_POST["name_english"]);
        $start = @$connect->real_escape_string($_POST["starton"]);
        $position = @$connect->real_escape_string($_POST["position"]);
        $phone = @$connect->real_escape_string($_POST["phone"]);
        $note = @$connect->real_escape_string($_POST["note"]); 
     
        $query_add = "INSERT INTO tbl_pos_employee (name_khmer,name_english,start_on,position_id,phone,emp_note) 
                            VALUES ('$kname', '$ename' , '$start', '$position', '$phone' , '$note')";

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
                                <label for ="">Name(kh):</label>                                          
                                    <input class="form-control"  autocomplete="off" required name="name_khmer" type="text" placeholder="Name(kh)">                                   
                                </div>
                                <div class="form-group">
                                    <label for ="">Name(en):</label>                                          
                                    <input class="form-control"  autocomplete="off" required name="name_english" type="text" placeholder="Name(en)">                                                                  
                                </div>
                                <div class="form-group">
                                    <label for ="">Start On:</label>                                          
                                    <input class="form-control" required readonly name="starton" type="text" placeholder="starton" data-provide="datepicker" data-date-format="yyyy-mm-dd" autocomplete="off">
                                </div>
                                
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class = "form-group">
                                    <label for = "">Position:</label>
                                    <select class = "form-control"  autocomplete="off" name = "position">
                                        <option value="">Select here</option>
                                            <?php
                                                $position = mysqli_query($connect,"SELECT * FROM tbl_pos_position");
                                                while ($row = mysqli_fetch_assoc($position)) {
                                                    echo '<option value="'.$row['position_id'].'">'.$row['position'].'</option>';
                                                }
                                             ?>     
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for ="">Phone:</label>                                          
                                    <input class="form-control"  autocomplete="off" required name="phone" type="text" placeholder="Phone">                                   
                                </div>
                                <div class="form-group">
                                    <label for="note">Note:</label>
                                     <textarea class="form-control"  autocomplete="off" rows="4" id="note" name = "note"></textarea>
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
