<?php 
    $menu_active =1;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?> 
<?php  
  if(isset($_POST['search'])){
    $dateStart = $_POST['from'];
    $dateEnd = $_POST['to'];
    if($_POST['txt_option'] != ""){
      $cate_id_s = $_POST['txt_option'];
      $sql = "SELECT * FROM tbl_pos_stockout A 
                LEFT JOIN tbl_pos_product B ON A.pro_id=B.pro_id
                LEFT JOIN tbl_pos_category C ON B.cate_id=C.cate_id
                WHERE date_out >= '$dateStart' AND date_out <= '$dateEnd' AND C.cate_id='$cate_id_s'";
      $result = $connect->query($sql);
    }else{
      $sql = "SELECT * FROM tbl_pos_stockout A 
                LEFT JOIN tbl_pos_product B ON A.pro_id=B.pro_id
                LEFT JOIN tbl_pos_category C ON B.cate_id=C.cate_id
                WHERE date_out >= '$dateStart' AND date_out <= '$dateEnd'";
      $result = $connect->query($sql);
    }            
  }else{
    $v_date = date('Y-m-d');
    $sql = "SELECT * FROM tbl_pos_stockout A 
                  LEFT JOIN tbl_pos_product B ON A.pro_id=B.pro_id
                  LEFT JOIN tbl_pos_category C ON B.cate_id=C.cate_id
                  WHERE date_out = '$v_date'";
    $result = $connect->query($sql);
  }    
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Report Sell by Category</h2>
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
                <div class="form-group">
                    <select class="form-control" name = "txt_option"> 
                      <option value="">==choose category==</option>
                      <?php 
                        $vv_search = $connect->query("SELECT * FROM tbl_pos_category GROUP BY category_name ORDER BY category_name ASC");
                        while ($row_vv_search = mysqli_fetch_object($vv_search)) {
                          if($row_vv_search->cate_id == @$_POST['txt_option']){
                            echo '<option SELECTED value="'.$row_vv_search->cate_id.'">'.$row_vv_search->category_name.'</option>';
                          }else{
                            echo '<option value="'.$row_vv_search->cate_id.'">'.$row_vv_search->category_name.'</option>';
                          }
                        }
                       ?>
                    </select>
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
                      <th>Date</th>
                      <th>Invoice_No</th>
                      <th>Code</th>
                      <th>Name(Ref)</th>
                      <th>Name(Kh)</th>
                      <th>Category</th>
                      <th class="text-center">Qty</th>
                      <th class="text-center">Price</th>
                      <th class="text-center">Amount</th>
                      <th class="text-center">VAT</th>
                     
                  </tr>
              </thead>
              <tbody>
                  <?php
                      $total_qty=0;
                      $total_amount=0;

                      while($row = @$result->fetch_assoc()) 
                      {     
                        $total_qty+= $row["qty_out"]; 
                        $total_amount+= $row["amount"];  

                        $v1=$row["invoice"];
                        $v2=$row["code"];
                        $v3=$row["ref"];
                        $v4=$row["name_kh"];
                        $v_category=$row["category_name"];
                        $v5=$row["qty_out"];
                        $v6=$row["price"];
                        $v7=$row["amount"];
                        $v8=$row["vat"];
                        $v9=$row["date_out"];
                        
                    ?>
                    <tr>
                      <td><?php echo $v9;?></td>
                      <td><?php echo $v1;?></td> 
                      <td><?php echo $v2;?></td>
                      <td><?php echo $v3;?></td>
                      <td><?php echo $v4;?></td>
                      <td><?php echo $row['category_name'] ?></td>
                      <td class="text-center"><?php echo number_format($v5,0); ?></td>
                      <td class="text-center"><?php echo number_format($v6,2); ?></td>
                      <td class="text-center"><?php echo number_format($v7,2); ?></td>
                      <td class="text-center"><?php echo number_format($v8,2); ?></td>
                    
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
                      <th></th>
                      <th>Total:</th>
                      <th class="text-center"> 
                          <?php
                              echo number_format($total_qty,2);
                          ?>
                      </th>
                      <th></th>
                      <th class="text-center"> 
                          <?php
                              echo number_format($total_amount,2);
                          ?>
                      </th>
                      <th></th>
                  </tr>
              </tfoot>
            </table>
        </div>
    </div>
</div>






<?php include_once '../layout/footer.php' ?>
