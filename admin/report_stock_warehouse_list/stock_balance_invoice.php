<?php 
    $menu_active =9;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>
<?php
 $sql = "SELECT * , SUM(A.whsi_qty_in) AS total_qty_in FROM tbl_pos_wh_stock_in A  
                    LEFT JOIN tbl_pos_product B ON A.whsi_product_code = B.pro_id 
                    LEFT JOIN tbl_pos_category C ON B.cate_id=C.cate_id
                    GROUP BY A.whsi_product_code
                     ";

  $result = $connect->query($sql);  
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Report Wareshouse Stock Balance by Invoice</h2>
        </div>
    </div>
    <br>
    <br>
       <div class="portlet-title">
        <div class="caption font-dark">
            <form class="form-inline" method = "post" action="">
                <div class="form-group">
                    <select class="form-control" name = "txt_s_number"> 
                      <option value="">==choose invoice==</option>
                      <?php 
                        $vv_search = $connect->query("SELECT * FROM tbl_pos_wh_stock_out GROUP BY whso_letter_no ORDER BY whso_letter_no ASC");
                        while ($row_vv_search = mysqli_fetch_object($vv_search)) {
                          if($row_vv_search->whso_letter_no == @$_POST['txt_option']){
                            echo '<option SELECTED value="'.$row_vv_search->whso_letter_no.'">'.$row_vv_search->whso_letter_no.'</option>';
                          }else{
                            echo '<option value="'.$row_vv_search->whso_letter_no.'">'.$row_vv_search->whso_letter_no.'</option>';
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
                      <th>Photo</th>
                      <th>Code</th>
                      <th>Name(En)</th>
                      <th>Name(Kh)</th>
                      <th>Category</th>
                      <th class="text-center">Qty In</th>
                      <th class="text-center">Qty Out</th>
                      <th class="text-center">Qty Adjust</th>
                      <th class="text-center">Balance</th>
                      <th>Status</th>
                  </tr>
              </thead>
              <tbody>
                  <?php
                      while($row = $result->fetch_assoc()) 
                      {     
                        $photo = $row['photo'];
                        $v2=$row["whsi_product_code"];
                        $v3=$row["name_en"];
                        $v4=$row["name_kh"];
                        // $v5=$row["qty_in"];
                        // $v6=$row["qty_left"];
                        // $v7 = $v5 - $v6;
                    ?>
                    <tr>
                      <td><?php echo '<img src="../../img/img_product/' . $photo . '" style="width: 50px;" alt="Logo">';?></td>
                      <td><?php echo $v2;?></td>
                      <td><?php echo $v3;?></td>
                      <td><?php echo $v4;?></td>
                      <td><?php echo $row['category_name'] ?></td>
                      <td class="text-center">
                      
                        <?php $v_total_sum_qty_in = ($row['total_qty_in'])?($row['total_qty_in']):("0") ?>
                        <?php echo number_format($v_total_sum_qty_in,0) ;?>

                      </td>
                      <td class="text-center">

                        <?php 
                          $v_out_id = $row['whsi_product_code']; 
                          if(isset($_POST['search']) AND $_POST['txt_s_number'] !=""){
                            $v_s_number = @$_POST['txt_s_number'];
                            $get_qty_out = $connect->query("SELECT SUM(whso_qty_out) AS total_sum_qty_out FROM  tbl_pos_wh_stock_out WHERE whso_product_code='$v_out_id' AND whso_letter_no<='$v_s_number'");

                          }else{
                            $get_qty_out = $connect->query("SELECT SUM(whso_qty_out) AS total_sum_qty_out FROM  tbl_pos_wh_stock_out WHERE whso_product_code='$v_out_id'");
                            
                          }


                         
                          $row_out = mysqli_fetch_assoc($get_qty_out);
                          
                          $v_total_sum_qty_stockout =($row_out['total_sum_qty_out'])?($row_out['total_sum_qty_out']):("0") ; 
                          echo number_format($v_total_sum_qty_stockout,0);
                        ?>

                      </td>
                      <td class="text-center">
                        
                        <?php 
                          $v_add_id = $row['pro_id']; ;
                          $get_qty_add = $connect->query("SELECT SUM(whsa_qty_add) AS total_qty_add FROM  tbl_pos_wh_stock_adjust WHERE whsa_product_code='$v_add_id'");
                          $row_add = mysqli_fetch_assoc($get_qty_add);
                          $v_total_sum_qty_add =($row_add['total_qty_add'])?($row_add['total_qty_add']):("0") ; 

                          $v_minus_id = $row['pro_id']; ;
                          $get_qty_minus = $connect->query("SELECT SUM(whsa_qty_minus) AS total_qty_minus FROM  tbl_pos_wh_stock_adjust WHERE whsa_product_code='$v_minus_id'");
                          $row_minus = mysqli_fetch_assoc($get_qty_minus);
                          $v_total_sum_qty_minus =($row_minus['total_qty_minus'])?($row_minus['total_qty_minus']):("0") ; 

                          $v_qty_adjust=$v_total_sum_qty_add-$v_total_sum_qty_minus;
                          echo number_format($v_qty_adjust,0);
                        ?>

                      </td>
                      <td class="text-center">
                          <?php $v7 = $v_total_sum_qty_in-$v_total_sum_qty_stockout+$v_qty_adjust; ?>
                          <?php echo number_format($v_total_sum_qty_in-$v_total_sum_qty_stockout+$v_qty_adjust,0) ?>
                      </td>
                      <td>
                      <?php
                          if($v7 < 2 & $v7 > 0){
                           echo '<span class="label label-warning">Low Stock</span>';
                          }
                          elseif ($v7 <= 0 ){
                             echo '<span class="label label-danger">Out Of Stock</span>';
                          }
                          else{
                             echo '<span class="label label-success">Available</span>';
                          }
                      ?>  
                      </td>
                    </tr> 
                    <?php
                      }  
                    ?>
              </tbody>
            </table>
        </div>
    </div>
</div>






<?php include_once '../layout/footer.php' ?>
