<?php 
    $menu_active =1;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
    if(isset($_POST['btn_update'])){
        $v_id = @$connect->real_escape_string($_POST['txt_id']);
        $v_date_record = $_POST["txt_date_record"];
        $v_letter_no = $_POST["txt_letter_no"];
        $v_product_code = $_POST["txt_product_code"];
        $v_qty_add = $_POST["txt_qty_add"];
        $v_qty_minus = $_POST["txt_qty_minus"];
        $v_unit = $_POST["txt_unit"];
        $v_approved_by = $_POST["txt_approved_by"];
        $v_employee = $_POST["txt_employee"];
        $v_note = $_POST["txt_note"];

        $query_update = "UPDATE tbl_pos_wh_stock_adjust SET whsa_date_record = '$v_date_record'
                                            , whsa_letter_no = '$v_letter_no' 
                                            , whsa_product_code = '$v_product_code' 
                                            , whsa_qty_add = '$v_qty_add' 
                                            , whsa_qty_minus = '$v_qty_minus' 
                                            , whsa_unit = '$v_unit' 
                                            , whsa_approved_by = '$v_approved_by' 
                                            , whsa_employee = '$v_employee' 
                                            , whsa_note = '$v_note' 
                                        WHERE whsa_id = '$v_id'" ;
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
    $old_data = $connect->query("SELECT * FROM tbl_pos_wh_stock_adjust WHERE whsa_id='$edit_id'");
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
                    <input type="hidden" name="txt_id" value="<?= $row_old->whsa_id ?>">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                              <div class="form-group">
                                <label for ="">Date Record:</label>                                          
                                <input class="form-control" required data-provide="datepicker" data-date-format="yyyy-mm-dd" autocomplete="off" name="txt_date_record" value="<?= $row_old->whsa_date_record ?>" type="text" placeholder="date..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Letter No:</label>                                          
                                <input class="form-control" required value="<?= $row_old->whsa_letter_no ?>" autocomplete="off" name="txt_letter_no" type="text" placeholder="letter no..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Product Code:</label>                                          
                                      <select class = "form-control select2" style = "width:100%" name = "txt_product_code" id = "code">
                                        <option value="">Select Product</option>
                                            <?php
                                                $product = mysqli_query($connect,"SELECT * FROM tbl_pos_product ORDER BY code ASC");
                                                while ($row1 = mysqli_fetch_assoc($product)) { 
                                                    if($row1['pro_id'] == $row_old->whsa_product_code){
                                                        echo '<option SELECTED value="'.$row1['pro_id'].'">'.$row1['code']." :: ".$row1['ref'].'</option>';
                                                        
                                                    }else{
                                                        echo '<option value="'.$row1['pro_id'].'">'.$row1['code']." :: ".$row1['ref'].'</option>';

                                                    }
                                                }
                                            ?>   
                                      </select>           
                              </div>
                              <div class="form-group">
                                <label for ="">Qty Add:</label>                                          
                                <input class="form-control" required value="<?= $row_old->whsa_qty_add ?>" autocomplete="off" name="txt_qty_add" type="text" placeholder="qty add..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Qty Minus:</label>                                          
                                <input class="form-control" required value="<?= $row_old->whsa_qty_minus ?>" autocomplete="off" name="txt_qty_minus" type="text" placeholder="qty minus..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Unit:</label>                                          
                                <input class="form-control" required value="<?= $row_old->whsa_unit ?>" autocomplete="off" name="txt_unit" type="text" placeholder="unit..">          
                              </div>
                              
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                              <div class="form-group">
                                <label for ="">Approved By:</label>                                          
                                <input class="form-control" required value="<?= $row_old->whsa_approved_by ?>" autocomplete="off" name="txt_approved_by" type="text" placeholder="received from..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Employee:</label>                                          
                                  <select class = "form-control" name = "txt_employee" required>
                                       <option value="">Select Employee</option>
                                        <?php
                                           $employee = mysqli_query($connect,"SELECT * FROM tbl_pos_employee ORDER BY name_english ASC");
                                            while ($row3 = mysqli_fetch_assoc($employee)) {
                                                if($row3['emp_id'] == $row_old->whsa_employee){
                                                    echo '<option SELECTED value="'.$row3['emp_id'].'">'.$row3['name_english'].' :: '.$row3['name_khmer'].'</option>';
                                                    
                                                }else{
                                                    echo '<option value="'.$row3['emp_id'].'">'.$row3['name_english'].' :: '.$row3['name_khmer'].'</option>';

                                                }
                                            }
                                         ?>   
                                   </select>
                                </div>
                              <div class="form-group">
                                <label for="note">Note:</label>
                                 <textarea class="form-control"  autocomplete="off" rows="4" id="note" name = "txt_note"><?= $row_old->whsa_note ?></textarea>
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
<?php include_once '../layout/footer.php' ?>
