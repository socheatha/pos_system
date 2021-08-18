<?php 
    $menu_active =1;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Warehouse Stock Balance Administrator</h2>
        </div>
    </div>
    <br>
    <br>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info">
                <thead>
                    <tr>
                        <th>N&deg;</th>
                        <th>No</th>
                        <th>Code</th>
                        <th>Ref_Name</th>
                        <th>Name(Kh)</th>
                        <th>Qty In</th>
                        <th>Qty Out</th>
                        <th>Qty Adjust</th>    
                        <th>Balance</th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT *,SUM(whsi_qty_in) AS total_qty_in FROM tbl_pos_product AS A 
                          LEFT JOIN tbl_pos_wh_stock_in AS B ON A.pro_id=B.whsi_product_code 
                          GROUP BY B.whsi_product_code
                            ");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->code.'</td>';
                                echo '<td>'.$row->ref.'</td>';
                                echo '<td>'.$row->name_kh.'</td>';
                                echo '<td>'.$row->ref.'</td>';
                                echo '<td class="text-center">';
                                    $v_total_sum_qty_stockin =($row->total_qty_in)?($row->total_qty_in):("0");
                                    echo $v_total_sum_qty_stockin;
                                echo '</td>';
                                echo '<td class="text-center">';
                                    $v_out_id = $row->pro_id; ;
                                    $get_qty_out = $connect->query("SELECT SUM(whso_qty_out) AS total_qty_out FROM  tbl_wh_stock_out WHERE whso_product_code='$v_out_id'");
                                    $row_out = mysqli_fetch_assoc($get_qty_out);
                                    
                                    $v_total_sum_qty_stockout =($row_out['total_qty_out'])?($row_out['total_qty_out']):("0") ; 
                                    echo $v_total_sum_qty_stockout ;
                                echo '</td>';
                                echo '<td class="text-center">';
                                    $v_add_id = $row->pro_id;
                                    $get_qty_add = $connect->query("SELECT SUM(whsa_qty_add) AS total_qty_add FROM  tbl_wh_stock_adjust WHERE whsa_product_code='$v_add_id'");
                                    $row_add = mysqli_fetch_assoc($get_qty_add);
                                    $v_total_sum_qty_add =($row_add['total_qty_add'])?($row_add['total_qty_add']):("0") ; 

                                    $v_minus_id = $row->pro_id;
                                    $get_qty_minus = $connect->query("SELECT SUM(whsa_qty_minus) AS total_qty_minus FROM  tbl_wh_stock_adjust WHERE whsa_product_code='$v_minus_id'");
                                    $row_minus = mysqli_fetch_assoc($get_qty_minus);
                                    $v_total_sum_qty_minus =($row_minus['total_qty_minus'])?($row_minus['total_qty_minus']):("0") ; 

                                    $v_qty_adjust=$v_total_sum_qty_add-$v_total_sum_qty_minus;
                                    echo $v_qty_adjust;
                                echo '</td>';
                                echo '<td class="text-center">';
                                    echo $v_total_sum_qty_stockin-$v_total_sum_qty_stockout+$v_qty_adjust;
                                echo '</td>';
                            echo '</tr>';
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>




<?php include_once '../layout/footer.php' ?>
