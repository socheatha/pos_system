<?php 
    $menu_active =1;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?> 
<?php 
  if(isset($_POST['search'])){
      $from = $_POST['from'];
      $to = $_POST['to'];
      $sql = "SELECT * FROM tbl_pos_wh_stock_in AS A
                        LEFT JOIN tbl_pos_product AS B ON A.whsi_product_code=B.pro_id
                        LEFT JOIN tbl_pos_employee AS C ON A.whsi_employee=C.emp_id
              WHERE whsi_date_record >= '$from' AND whsi_date_record <= '$to'";
      
      $result = $connect->query($sql);
      
    }else{
      $v_date = date('Y-m-d');
      $sql = "SELECT * FROM tbl_pos_wh_stock_in AS A
                        LEFT JOIN tbl_pos_product AS B ON A.whsi_product_code=B.pro_id
                        LEFT JOIN tbl_pos_employee AS C ON A.whsi_employee=C.emp_id
              WHERE whsi_date_record = '$v_date'";  
      $result = $connect->query($sql);
    }  
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Report Warehouse Stockin by Date</h2>
        </div>
    </div>
    <br>
    <br>
       <div class="portlet-title">
        <div class="caption font-dark">
            <form class="form-inline" method = "post" action="">
                <div class="form-group">
                    <input type="text" class="form-control" autocomplete="off" placeholder="start date" data-provide="datepicker" data-date-format="yyyy-mm-dd" required="" name = "from" value="<?= @$_POST['from'] ?>">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" autocomplete="off" placeholder="end date" data-provide="datepicker" data-date-format="yyyy-mm-dd" required="" name = "to" value="<?= @$_POST['to'] ?>"> 
                </div>
                <button type="submit" name="search" class="btn btn-success">Search</button>
                <a href="<?= $_SERVER['PHP_SELF'] ?>" class="btn btn-danger"><i class="fa fa-undo" aria-hidden="true"></i> Clear</a>
          </form> 
        </div>
        <div class="tools"></div>
    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info">
              <thead>
                  <tr>
                      <th>#</th>
                      <th>Date Record</th>
                      <th>Letter In No</th>
                      <th>Product Code</th>
                      <th>Product Name</th>
                      <th class="text-center">Qty In</th>
                      <th>Unit</th>
                      <th>Received From</th>
                      <th>Employee</th>
                      <th>Note</th>
                  </tr>
              </thead>
              <tbody>
                  <?php
                  $i=1;
                  $total=0;

                      while($row = $result->fetch_assoc()) 
                      {     
                        $total+= $row["whsi_qty_in"]; 

                        $v1=$i++;
                        $v2=$row["whsi_date_record"];
                        $v3=$row["whsi_letter_no"];
                        $v4=$row["code"];
                        $v5=$row["ref"];
                        $v6=$row["whsi_qty_in"];
                        $v7=$row["whsi_unit"];
                        $v8=$row["whsi_received_from"];
                        $v9=$row["name_english"];
                        $v10=$row["whsi_note"];
                    ?>
                    <tr>
                      <td><?php echo $v1;?></td> 
                      <td><?php echo $v2;?></td>
                      <td><?php echo $v3;?></td>
                      <td><?php echo $v4;?></td>
                      <td><?php echo $v5;?></td>
                      <td class="text-center"><?php echo number_format($v6,0);?></td>
                      <td><?php echo $v7;?></td>
                      <td><?php echo $v8;?></td>
                      <td><?php echo $v9;?></td>
                      <td><?php echo $v10;?></td>
                    </tr> 
                    <?php
                      }  
                    ?>
              </tbody>
              <tfoot>
                  <tr>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th>Total:</th>
                      <th class="text-center"> 
                          <?php
                              echo number_format($total,0);
                          ?>
                      </th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                  </tr>
              </tfoot>
            </table>
        </div>
    </div>
</div>






<?php include_once '../layout/footer.php' ?>
