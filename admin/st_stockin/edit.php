<?php 
    $menu_active =3;
    $layout_title = "Welcome to Website";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
    if(isset($_POST['btn_update'])){
        $v_id = @$connect->real_escape_string($_POST['txt_id']);
        $date      = @$connect->real_escape_string($_POST["date"]);
        $v_product_name      = @$connect->real_escape_string($_POST["tbox_product"]);
        // $product   = @$connect->real_escape_string($_POST["tbox_product"]);
        $qauntity  = @$connect->real_escape_string($_POST["qauntity"]);
        $v_price     = @$connect->real_escape_string($_POST["txt_price"]);
        $v_amount    = @$connect->real_escape_string($_POST["amount"]);
        $v_payamount = @$connect->real_escape_string($_POST["payamount"]);
        $v_rest      = @$connect->real_escape_string($_POST["rest"]);
        $v_expire    = @$connect->real_escape_string($_POST["expire"]);
        $v_vender    = @$connect->real_escape_string($_POST["vender"]);
        $v_employee  = @$connect->real_escape_string($_POST["employee"]);
        $v_note      = @$connect->real_escape_string($_POST["note"]);
    
        $query_update = "UPDATE tbl_pos_stockin SET date_in  ='$date'
                            , pro_id        = '$v_product_name' 
                            , qty_in        = '$qauntity'
                            , price         = '$v_price'
                            , amount        = '$v_amount'
                            , payamount     =   '$v_payamount'
                            , rest_amount   =   '$v_rest'
                            , expire_date   =   '$v_expire'
                            , note_in       =   '$v_note'
                            , vender_id     =   '$v_vender'
                            , emp_id        =   '$v_employee'
                                WHERE 
                                in_id = '$v_id'" ;
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
    $old_data = $connect->query("SELECT * FROM tbl_pos_stockin WHERE in_id='$edit_id'");
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
                <form action="<?= $_SERVER['PHP_SELF'] ?>?edit_id=<?= $edit_id ?>" method="post" enctype="multipart/form-data" oninput="get_calculate()">
                    <input type="hidden" name="txt_id" value="<?= $row_old->in_id ?>">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                              <div class="form-group">
                                <label for ="">Date:</label>                                          
                                <input class="form-control" required name="date" type="text" data-provide="datepicker" data-date-format="yyyy-mm-dd" placeholder="date..." autocomplete="off" value="<?= $row_old->date_in ?>">          
                              </div>
                              <div class="form-group">
                                <label for = "">Product Name:</label>
                                <select class = "form-control select2" id="id_product" name = "tbox_product">
                                    <option value="">====Select here====</option>
                                        <?php
                                          $v_select = mysqli_query($connect,"SELECT * FROM tbl_pos_product ORDER BY code");
                                          while ($row = mysqli_fetch_assoc($v_select)) {
                                            if($row['pro_id'] == $row_old->pro_id){
                                                echo '<option SELECTED value="'.$row['pro_id'].'">'.$row['code']." :: ".$row['name_en'].'</option>';
                                                
                                            }else{
                                                echo '<option value="'.$row['pro_id'].'">'.$row['code']." :: ".$row['name_en'].'</option>';

                                            }
                                          }
                                        ?>     
                                </select>        
                              </div>
                              <div id = "result">
                                <div class="form-group">
                                  <label for ="">Cost:</label>                                          
                                  <input class="form-control price" id="id_price"  required name="txt_price" type="text" placeholder="Price" autocomplete="off" value="<?= $row_old->price ?>">         
                                </div>
                              </div>
                              <div class="form-group">
                                <label for ="">Qauntity:</label>                                          
                                <input class="form-control quantity"   required name="qauntity" type="number" placeholder="qauntity..." autocomplete="off" value="<?= $row_old->qty_in ?>">          
                              </div>
                              <div class="form-group">
                                <label for ="">Amount:</label>                                          
                                <input class="form-control amount"   required readonly name="amount" type="number" placeholder="amount..." autocomplete="off" value="<?= $row_old->amount ?>">          
                              </div>
                              <div class="form-group">
                                <label for ="">Pay Amount:</label>                                          
                                <input class="form-control pay"   required name="payamount" type="text" placeholder="Pay Amount" autocomplete="off" value="<?= $row_old->payamount ?>">    
                              </div>
                              <div class = "form-group">
                                <label for = "">Rest:</label>                                     
                                <input class="form-control rest"   required readonly name="rest" type="number" placeholder="Rest" autocomplete="off" value="<?= $row_old->rest_amount ?>"> 
                              </div>
                              
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                              <div class = "form-group">
                                <label for = "">Expire Date:</label>                                     
                                 <input class="form-control" required name="expire" type="text" data-provide="datepicker" data-date-format="yyyy-mm-dd" placeholder="Expire Date" autocomplete="off" value="<?= $row_old->expire_date ?>"> 
                              </div>
                              <div class = "form-group">
                                  <label for = "">Vendor:</label>
                                  <select class = "form-control" name = "vender" required>
                                    <option value="">Select Product</option>
                                        <?php
                                          $vender = mysqli_query($connect,"SELECT * FROM tbl_pos_vender ORDER BY vendername_en ASC");
                                          while ($row2 = mysqli_fetch_assoc($vender)) {
                                            if($row2['vender_id'] == $row_old->vender_id){
                                                echo '<option SELECTED value="'.$row2['vender_id'].'">'.$row2['vendername_en'].' :: '.$row2['vendername_kh'].'</option>';
                                                
                                            }else{
                                                echo '<option value="'.$row2['vender_id'].'">'.$row2['vendername_en'].' :: '.$row2['vendername_kh'].'</option>';

                                            }
                                          }
                                        ?>   
                                  </select>
                              </div>
                              <div class = "form-group">
                                  <label for = "">Employee:</label>
                                    <select class = "form-control" id="id_product" name = "employee" required>
                                       <option value="">Select Employee</option>
                                        <?php
                                           $employee = mysqli_query($connect,"SELECT * FROM tbl_pos_employee ORDER BY name_english ASC");
                                            while ($row3 = mysqli_fetch_assoc($employee)) {
                                                if($row3['emp_id'] == $row_old->emp_id){
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
                                 <textarea class="form-control" rows="4" id="note" name = "note"  autocomplete="off"><?= $row_old->note_in ?></textarea>
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
<script type="text/javascript" src="../../assets/global/plugins/jquery.min.js"></script>
<script type="text/javascript">
    $('#id_product').change(function(){
      $vpro_id = $(this).val();
      $.get("ajx_get_product_price.php?sent_id="+$vpro_id, function(data, status){
          $('#id_price').val(data);
      });
    });

    function get_calculate(){
      $v_price = $('#id_price').val();
      $v_qty = $('.quantity').val();
      $('.amount').val($v_price*$v_qty);
      $v_amount = $('.amount').val();
      $v_pay = $('.pay').val();
      $('.rest').val($v_amount-$v_pay);
    }
</script>
<?php include_once '../layout/footer.php' ?>
