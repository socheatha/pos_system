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
            <h2><i class="fa fa-image fa-fw"></i> Warehouse Stockout Administrator</h2>
        </div>
    </div>
    <br>
    <br>
    <div class="portlet-title">
        <div class="caption font-dark">
            <a href="add.php" id="sample_editable_1_new" class="btn green"> Add New
                <i class="fa fa-plus"></i>
            </a>
        </div>
        <div class="tools"></div>
    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info">
                <thead>
                    <tr>
                        <th>N&deg;</th>
                        <th>Date Record</th>
                        <th>Letter Out No</th>
                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Qty Out</th>
                        <th>Unit</th>
                        <th>Sent To</th>
                        <th>Employee</th>
                        <th>Note</th>
                        <th>Action <i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * FROM tbl_pos_wh_stock_out AS A
                            LEFT JOIN tbl_pos_product AS B ON A.whso_product_code=B.pro_id
                            LEFT JOIN tbl_pos_employee AS C ON A.whso_employee=C.emp_id
                            ORDER BY whso_date_record DESC
                          ");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->whso_date_record.'</td>';
                                echo '<td>'.$row->whso_letter_no.'</td>';
                                echo '<td>'.$row->code.'</td>';
                                echo '<td>'.$row->ref.'</td>';
                                echo '<td class="text-center">'.$row->whso_qty_out.'</td>';
                                echo '<td>'.$row->whso_unit.'</td>';
                                echo '<td>'.$row->whso_sent_to.'</td>';
                                echo '<td>'.$row->name_english.'</td>';
                                echo '<td>'.$row->whso_note.'</td>';
                                echo '<td class="text-center"><a href="edit.php?edit_id='.$row->whso_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a>
                                    <a href="delete.php?del_id='.$row->whso_id.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a>
                                    </td>';
                            echo '</tr>';
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>




<?php include_once '../layout/footer.php' ?>
