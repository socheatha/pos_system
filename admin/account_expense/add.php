<?php 
    $menu_active =6;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 

    if(isset($_POST["btn_add"])){
        $v_date_record = @$connect->real_escape_string($_POST["txt_date_record"]);
        $v_description = @$connect->real_escape_string($_POST["txt_description"]);
        $v_expense_category = @$connect->real_escape_string($_POST["txt_expense_category"]);
        $v_amount = @$connect->real_escape_string($_POST["txt_amount"]);
        $v_employee = @$connect->real_escape_string($_POST["txt_employee"]);
        $v_note = @$connect->real_escape_string($_POST["txt_note"]);

        $query_add = "INSERT INTO tbl_pos_expense_list 
                              (exp_date_record
                                , exp_description
                                , exp_expense_category
                                , exp_amount
                                , exp_employee
                                , exp_note
                                ) 
                            VALUES 
                              ('$v_date_record'
                                , '$v_description'
                                , '$v_expense_category'
                                , '$v_amount'
                                , '$v_employee'
                                , '$v_note'
                                )";
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
                                    <label for ="">Date Record :</label>                                          
                                    <input class="form-control" required autocomplete="off" data-provide="datepicker" data-date-format="yyyy-mm-dd" name="txt_date_record" type="text" placeholder="date..." value="<?= date('Y-m-d'); ?>">          
                                </div>
                                <div class="form-group">
                                    <label for ="">Description :</label>                                          
                                    <input class="form-control" required  name="txt_description" type="text" placeholder="description..." autocomplete="off">          
                                </div>
                                <div class="form-group">
                                    <label for ="">Expense Category :</label>                                          
                                    <select class = "form-control select2" style = "width:100%" name = "txt_expense_category">
                                        <option value="">====Select and Choose====</option>
                                            <?php
                                              $v_select = mysqli_query($connect,"SELECT * FROM tbl_pos_expense_category ORDER BY exca_name ASC");
                                              while ($row1 = mysqli_fetch_assoc($v_select)) {
                                                echo '<option value="'.$row1['exca_id'].'">'.$row1['exca_name'].'</option>';
                                              }
                                            ?>   
                                    </select>           
                                </div>
                                <div class="form-group">
                                    <label for ="">Amount :</label>                                          
                                    <input class="form-control" required  name="txt_amount" type="text" placeholder="amount..." autocomplete="off">          
                                </div>
                                
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label for ="">Employee :</label>                                          
                                      <select class = "form-control select2" name = "txt_employee">
                                        <option value="">====Select and Choose====</option>
                                            <?php
                                              $v_select = mysqli_query($connect,"SELECT * FROM tbl_pos_employee ORDER BY name_english ASC");
                                              while ($row1 = mysqli_fetch_assoc($v_select)) {
                                                echo '<option value="'.$row1['emp_id'].'">'.$row1['name_english'].'</option>';
                                              }
                                            ?>   
                                      </select>           
                                </div>
                                <div class="form-group">
                                    <label for="note">Note :</label>
                                     <textarea class="form-control" rows="4" name = "txt_note"></textarea>
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
