<?php 
    $menu_active =1;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 

    if(isset($_POST["btn_add"])){
        $v_date_record = @$connect->real_escape_string($_POST["txt_date_record"]);
        $v_letter_no = @$connect->real_escape_string($_POST["txt_letter_no"]);
        $v_product_code = @$connect->real_escape_string($_POST["txt_product_code"]);
        $v_qty_add = @$connect->real_escape_string($_POST["txt_qty_add"]);
        $v_qty_minus = @$connect->real_escape_string($_POST["txt_qty_minus"]);
        $v_unit = @$connect->real_escape_string($_POST["txt_unit"]);
        $v_approved_by = @$connect->real_escape_string($_POST["txt_approved_by"]);
        $v_employee = @$connect->real_escape_string($_POST["txt_employee"]);
        $v_note = @$connect->real_escape_string($_POST["txt_note"]);

         $query_add = "INSERT INTO tbl_pos_wh_stock_adjust 
                              (whsa_date_record
                                ,whsa_letter_no
                                ,whsa_product_code
                                ,whsa_qty_add
                                ,whsa_qty_minus
                                ,whsa_unit
                                ,whsa_approved_by
                                ,whsa_employee
                                ,whsa_note
                                ) 
                  VALUES 
                    ('$v_date_record'
                      , '$v_letter_no'
                      , '$v_product_code'
                      , '$v_qty_add'
                      , '$v_qty_minus'
                      , '$v_unit'
                      , '$v_approved_by'
                      , '$v_employee'
                      , '$v_note')";
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
                                <label for ="">Date Record:</label>                                          
                                <input class="form-control" required data-provide="datepicker" data-date-format="yyyy-mm-dd" autocomplete="off" name="txt_date_record" type="text" placeholder="date..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Letter No:</label>                                          
                                <input class="form-control" required  autocomplete="off" name="txt_letter_no" type="text" placeholder="letter no..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Product Code:</label>                                          
                                      <select class = "form-control select2" style = "width:100%" name = "txt_product_code" id = "code">
                                        <option value="">Select Product</option>
                                            <?php
                                              $product = mysqli_query($connect,"SELECT * FROM tbl_pos_product ORDER BY code ASC");
                                              while ($row1 = mysqli_fetch_assoc($product)) { ?>
                                              <option value="<?php echo $row1['pro_id']; ?>"><?php echo $row1['code']." :: ".$row1['ref'] ;?></option>
                                            <?php 
                                            }
                                             ?>   
                                      </select>           
                              </div>
                              <div class="form-group">
                                <label for ="">Qty Add:</label>                                          
                                <input class="form-control" required  autocomplete="off" name="txt_qty_add" type="text" placeholder="qty add..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Qty Minus:</label>                                          
                                <input class="form-control" required  autocomplete="off" name="txt_qty_minus" type="text" placeholder="qty minus..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Unit:</label>                                          
                                <input class="form-control" required  autocomplete="off" name="txt_unit" type="text" placeholder="unit..">          
                              </div>
                              
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                              <div class="form-group">
                                <label for ="">Approved By:</label>                                          
                                <input class="form-control" required  autocomplete="off" name="txt_approved_by" type="text" placeholder="received from..">          
                              </div>
                              <div class="form-group">
                                <label for ="">Employee:</label>                                          
                                  <select class = "form-control" name = "txt_employee" required>
                                       <option value="">Select Employee</option>
                                        <?php
                                           $employee = mysqli_query($connect,"SELECT * FROM tbl_pos_employee ORDER BY name_english ASC");
                                            while ($row3 = mysqli_fetch_assoc($employee)) { ?>
                                           <option value="<?php echo $row3['emp_id']; ?>"><?php echo $row3['name_english'];?> :: <?php echo $row3['name_khmer'];?></option>
                                        <?php 
                                        }
                                         ?>   
                                   </select>
                                </div>
                              <div class="form-group">
                                <label for="note">Note:</label>
                                 <textarea class="form-control"  autocomplete="off" rows="4" id="note" name = "txt_note"></textarea>
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
