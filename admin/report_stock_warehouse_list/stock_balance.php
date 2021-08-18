<?php 
    $menu_active =1;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>
<?php 
  $sql = "SELECT *,SUM(whsi_qty_in) AS total_qty_in FROM tbl_pos_product AS A 
                          LEFT JOIN tbl_pos_wh_stock_in AS B ON A.pro_id=B.whsi_product_code 
                          GROUP BY B.whsi_product_code
                            ";  
  $result = $connect->query($sql);
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Report Warehouse Stock Balance</h2>
        </div>
    </div>
    <br>
    <br>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info">
              <thead>
                  <tr>
                      <th>No</th>
                      <th>Code</th>
                      <th>Ref_Name</th>
                      <th>Name(Kh)</th>
                      <th class="text-center">Qty In</th>
                      <th class="text-center">Qty Out</th>
                      <th class="text-center">Qty Adjust</th>    
                      <th class="text-center">Balance</th>
                  </tr>
              </thead>
              <tbody> 
                  <?php
                  $i=1;
                  $total_qin=0;
                  $total_qout=0;
                  $total_qadjust=0;
                  $total_qbalance=0;

                      while($row = $result->fetch_assoc()) 
                      {     
                        
                        $v1=$i;
                        $v2=$row["code"];
                        $v3=$row["ref"];
                        $v4=$row["name_kh"];
                       
                        
                        
                    ?>
                    <tr>
                      <td><?php echo $v1;?></td> 
                      <td><?php echo $v2;?></td>
                      <td><?php echo $v3;?></td>
                      <td><?php echo $v4;?></td>

                      <td class="text-center">

                        <?php $v_total_sum_qty_stockin =($row['total_qty_in'])?($row['total_qty_in']):("0")  ?>
                        <?php echo number_format($v_total_sum_qty_stockin,0); ?>

                      </td>
                      <td class="text-center">

                        <?php 
                          $v_out_id = $row['pro_id']; ;
                          $get_qty_out = $connect->query("SELECT SUM(whso_qty_out) AS total_qty_out FROM  tbl_pos_wh_stock_out WHERE whso_product_code='$v_out_id'");
                          $row_out = mysqli_fetch_assoc($get_qty_out);
                          
                          $v_total_sum_qty_stockout =($row_out['total_qty_out'])?($row_out['total_qty_out']):("0") ; 
                          echo number_format($v_total_sum_qty_stockout,0);
                        ?>

                      </td>
                      <td class="text-center">
                        <?php 
                          $v_add_id = $row['pro_id']; 
                          $get_qty_add = $connect->query("SELECT SUM(whsa_qty_add) AS total_qty_add FROM  tbl_pos_wh_stock_adjust WHERE whsa_product_code='$v_add_id'");
                          $row_add = mysqli_fetch_assoc($get_qty_add);
                          $v_total_sum_qty_add =($row_add['total_qty_add'])?($row_add['total_qty_add']):("0") ; 

                          $v_minus_id = $row['pro_id']; 
                          $get_qty_minus = $connect->query("SELECT SUM(whsa_qty_minus) AS total_qty_minus FROM  tbl_pos_wh_stock_adjust WHERE whsa_product_code='$v_minus_id'");
                          $row_minus = mysqli_fetch_assoc($get_qty_minus);
                          $v_total_sum_qty_minus =($row_minus['total_qty_minus'])?($row_minus['total_qty_minus']):("0") ; 

                          $v_qty_adjust=$v_total_sum_qty_add-$v_total_sum_qty_minus;
                          echo number_format($v_qty_adjust,0);
                        ?>

                      </td>
                      <td class="text-center">
                        <?php 
                          $v_cal_balance=$v_total_sum_qty_stockin-$v_total_sum_qty_stockout+$v_qty_adjust; 
                          echo number_format($v_cal_balance,0);
                        ?>
                      </td>
                    </tr> 
                    <?php
                          $i++;
                      }  
                  
                    ?>
              </tbody>
            </table>
        </div>
    </div>
</div>






<?php include_once '../layout/footer.php' ?>
