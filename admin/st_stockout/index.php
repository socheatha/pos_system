<?php 
    $menu_active =3;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Warehouse Stockout Administrator</h2>
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
                        <th>Invoice_No</th>
                        <th>Code</th>
                        <th>Name(Ref)</th>
                        <th>Name(Kh)</th>
                        <th>Category</th>
                        <th>Qty</th>
                        <th>Price</th>
                        <th>Amount</th>
                        <th>VAT</th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * FROM tbl_pos_stockout A 
                              LEFT JOIN tbl_pos_product B ON A.pro_id=B.pro_id
                              LEFT JOIN tbl_pos_category C ON B.cate_id=C.cate_id ORDER BY A.date_out DESC");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->date_out.'</td>';
                                echo '<td>'.$row->invoice.'</td>';
                                echo '<td>'.$row->code.'</td>';
                                echo '<td>'.$row->ref.'</td>';
                                echo '<td>'.$row->name_kh.'</td>';
                                echo '<td>'.$row->category_name.'</td>';
                                echo '<td>'.$row->qty_out.'</td>';
                                echo '<td>'.$row->price.'</td>';
                                echo '<td>'.$row->amount.'</td>';
                                echo '<td>'.$row->vat.'</td>';
                            echo '</tr>';
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>




<?php include_once '../layout/footer.php' ?>
