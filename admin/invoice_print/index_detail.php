<?php 
    $menu_active =1;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>
<?php 
    if(isset($_GET["id"])){
        $inv = $_GET["id"]; 
    }
?>

<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Invoice Detail</h2>
        </div>
    </div>
    <br>
    <br>
    <div class="portlet-title">
        <div class="caption font-dark">
            <a href="index.php" id="sample_editable_1_new" class="btn red"> 
                <i class="fa fa-undo"></i>
                Back
            </a>
        </div>
        <div class="tools"></div>
    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info">
                <thead>
                    <tr>
                        <th class="text-center">Invoice No</th>
                        <th class="text-center">Code</th>
                        <th class="text-center">Date</th>
                        <th class="text-center">Name(En)</th>
                        <th class="text-center">Name(KH)</th>
                        <th class="text-center">Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Amount</th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * from tbl_pos_stockout AS A
                        LEFT JOIN tbl_pos_product AS B ON B.pro_id=A.pro_id
                        where invoice = '$inv'");


                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.$row->invoice.'</td>';
                                echo '<td>'.$row->code_out.'</td>';
                                echo '<td>'.$row->date_out.'</td>';
                                echo '<td>'.$row->name_en.'</td>';
                                echo '<td>'.$row->name_kh.'</td>';
                                echo '<td class="text-center">'.$row->qty_out.'</td>';
                                echo '<td class="text-center">'.$row->price.'</td>';
                                echo '<td class="text-center">'.$row->amount.'</td>';
                            echo '</tr>';
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>




<?php include_once '../layout/footer.php' ?>
