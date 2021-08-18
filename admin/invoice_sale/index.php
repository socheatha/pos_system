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
            <h2><i class="fa fa-image fa-fw"></i> Sale Invoice Administrator</h2>
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
                    <select class="form-control" name = "txt_emplyee_s"> 
                      <option value="">=== employee ===</option>
                          <?php 
                            $emp_search = $connect->query("SELECT * FROM tbl_pos_user ORDER BY username ASC");
                            while ($row_emp = mysqli_fetch_object($emp_search)) {
                              if($row_emp->id == @$_POST['txt_emplyee_s']){
                                echo '<option SELECTED value="'.$row_emp->id.'">'.$row_emp->username.'</option>';
                              }else{
                                echo '<option value="'.$row_emp->id.'">'.$row_emp->username.'</option>';
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
                        <th class="text-center">Invoice #</th>
                        <th class="text-center">Date</th>
                        <th class="text-center">Employee Name</th>
                        <th class="text-center">Customer Name</th>
                        <th class="text-center">Amount</th>
                        <th class="text-center">Cost</th>
                        <th class="text-center">Revenue</th>
                        <th class="text-center">Vat</th>
                        <th class="text-center">Total</th>
                        <th class="text-center">Detail</th>
                        <th class="text-center"><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        if(isset($_POST['search'])){
                            $dateStart = $_POST['from'];
                            $dateEnd = $_POST['to'];
                            if($_POST['txt_emplyee_s'] != ""){
                                $cus_id_s = $_POST['txt_emplyee_s'];
                                $get_data = $connect->query("SELECT A.*,U.*,B.*,SUM(price*qty_out) as sum_cost FROM tbl_pos_invoice A 
                                    LEFT JOIN tbl_pos_customer B ON A.cus=B.no 
                                    LEFT JOIN tbl_pos_user AS U ON U.id=A.user_id
                                    LEFT JOIN tbl_pos_stockout AS S ON S.invoice=A.inv_no
                                    WHERE A.date_sell BETWEEN '$dateStart' AND '$dateEnd' AND A.user_id='$cus_id_s'  
                                    GROUP BY transaction_id
                                    ");
                            }else{
                                $get_data = $connect->query("SELECT A.*,U.*,B.*,SUM(price*qty_out) as sum_cost FROM tbl_pos_invoice A 
                                    LEFT JOIN tbl_pos_customer B ON A.cus=B.no 
                                    LEFT JOIN tbl_pos_user AS U ON U.id=A.user_id
                                    LEFT JOIN tbl_pos_stockout AS S ON S.invoice=A.inv_no
                                    WHERE A.date_sell BETWEEN '$dateStart' AND '$dateEnd' 
                                    GROUP BY transaction_id
                                    ");
                            }            
                        }else{
                            $v_date = date('Y-m-d');
                            $get_data = $connect->query("SELECT A.*,U.*,B.*,SUM(price*qty_out) as sum_cost FROM tbl_pos_invoice A 
                                LEFT JOIN tbl_pos_customer B ON A.cus=B.no 
                                LEFT JOIN tbl_pos_user AS U ON U.id=A.user_id
                                LEFT JOIN tbl_pos_stockout AS S ON S.invoice=A.inv_no
                                WHERE date_sell = '$v_date' 
                                GROUP BY transaction_id
                            ");
                        }                        
                        $i = 0;
                        $total=0;
                        $total_amount = 0;
                        $total_vat = 0;
                        $total_grandtotal = 0;
                        $total_cost = 0;
                        $total_revenue = 0;
                        while ($row = mysqli_fetch_object($get_data)) {
                            $v_amount = $row->amount;
                            $v_cost = $row->sum_cost;
                            $v_revenue = $row->amount-$row->sum_cost;
                            $v_vat = $row->amount*$row->vat/100;
                            $v_sub_total = $v_amount+$v_vat;

                            $total_amount += $v_amount;
                            $total_vat += $v_vat;
                            $total_revenue += $v_revenue;
                            $total_grandtotal += $v_sub_total;
                            echo '<tr>';
                                echo '<td>'.$row->transaction_id.'</td>';
                                echo '<td>'.$row->date_sell.'</td>';
                                echo '<td>'.$row->username.'</td>';
                                echo '<td>'.$row->cus_name.'</td>';
                                echo '<td class="text-center">$'.number_format($v_amount,2).'</td>';
                                echo '<td class="text-center">$';
                                    // number_format($v_cost,2)
                                    $get_cost = $connect->query("SELECT * from tbl_pos_stockout AS A 
                                        INNER JOIN tbl_pos_product AS P ON P.pro_id=A.pro_id 
                                        LEFT JOIN tbl_pos_invoice AS I ON I.inv_no=A.invoice 
                                        WHERE I.inv_no ='$row->inv_no'
                                        ");
                                    $v_cost = 0;
                                    while($row_get_cost = mysqli_fetch_object($get_cost)){
                                        $v_cost += $row_get_cost->price_riel*$row_get_cost->qty_out;
                                    }
                                    echo number_format($v_cost,2);
                                    $total_cost += $v_cost;
                                echo '</td>';
                                echo '<td class="text-center">$'.number_format($v_revenue,2).'</td>';
                                echo '<td class="text-center">'.$v_vat.'</td>';
                                echo '<td class="text-center">'.$v_sub_total.'</td>';
                                echo '<td class="text-center"><a href="index_detail.php?id='.$row->inv_no.'" class="btn btn-primary btn-xs"><i class="fa fa-file-text-o" aria-hidden="true"></i></a></td>';
                                echo '<td class="text-center">';
                                    if($_SESSION['user']->position_id == 1){
                                        echo '<a href="delete.php?del_id='.$row->transaction_id.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a>';
                                    }else{
                                        echo '<a href="#" class="btn btn-xs btn-danger disabled" title="delete"><i class="fa fa-trash"></i></a>';
                                    }
                                echo '</td>';
                            echo '</tr>';
                        }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th></th>
                        <th></th> 
                        <th></th> 
                        <th>Total : </th>
                        <th>$ <?= number_format($total_amount,2) ?></th>
                        <th>$ <?= number_format($total_cost,2) ?></th>
                        <th>$ <?= number_format($total_revenue,2) ?></th>
                        <th>$ <?= number_format($total_vat,2) ?></th> 
                        <th>$ <?= number_format($total_grandtotal,2) ?></th> 
                        <th></th>
                        <th></th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>




<?php include_once '../layout/footer.php' ?>
