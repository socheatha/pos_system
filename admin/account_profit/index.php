<?php 
    $menu_active =6;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Profit List Administrator</h2>
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
                        <th>Date</th>
                        <th>Revenue</th>
                        <th>Expense</th>
                        <th>Balance</th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT *,SUM(rev_amount) AS total_revenue FROM tbl_pos_revenue_list AS A 
                          GROUP BY A.rev_date_record
                            ");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->rev_date_record.'</td>';
                                echo '<td class="text-center">$';
                                    $v_total_sum_revenue =($row->total_revenue)?($row->total_revenue):("0");
                                    echo number_format($v_total_sum_revenue,2);
                                echo '</td>';
                                echo '<td class="text-center">$';
                                    $v_out_date = $row->rev_date_record;
                                    $get_expense = $connect->query("SELECT SUM(exp_amount) AS total_expense FROM  tbl_pos_expense_list WHERE exp_date_record='$v_out_date'");
                                    $row_out = mysqli_fetch_assoc($get_expense);
                                    
                                    $v_total_sum_qty_stockout =($row_out['total_expense'])?($row_out['total_expense']):("0") ; 
                                    echo number_format($v_total_sum_qty_stockout,2);
                                echo '</td>';
                                echo '<td class="text-center">$'.number_format($v_total_sum_revenue-$v_total_sum_qty_stockout,2).'</td>';
                            echo '</tr>';
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>




<?php include_once '../layout/footer.php' ?>
