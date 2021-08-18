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
            <h2><i class="fa fa-image fa-fw"></i> Sell Stockin Administrator</h2>
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
                        <th>Date</th>
                        <th>Code</th>
                        <th>Ref Name</th>
                        <th>Name KH</th>
                        <th>Category</th>
                        <th>Qauntity</th>
                        <th>Packet</th>
                        <th>Cost</th>
                        <th>Amount</th>
                        <th>Pay Amount</th>
                        <th>Rest</th>
                        <th>Expire Date</th>
                        <th>Note</th>
                        <th>Vender</th>
                        <th>Employee</th>
                        <th>Action <i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * FROM tbl_pos_stockin A  
                              LEFT JOIN tbl_pos_product B ON A.pro_id = B.pro_id 
                              LEFT JOIN tbl_pos_employee C ON A.emp_id = C.emp_id 
                              LEFT JOIN tbl_pos_vender D ON A.vender_id = D.vender_id 
                              LEFT JOIN tbl_pos_category E ON B.cate_id=E.cate_id");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->date_in.'</td>';
                                echo '<td>'.$row->code.'</td>';
                                echo '<td>'.$row->ref.'</td>';
                                echo '<td>'.$row->name_kh.'</td>';
                                echo '<td>'.$row->category_name.'</td>';
                                echo '<td>'.$row->qty_in.'</td>';
                                echo '<td>'.$row->paket.'</td>';
                                echo '<td>'.$row->price.'</td>';
                                echo '<td>'.$row->amount.'</td>';
                                echo '<td>'.$row->payamount.'</td>';
                                echo '<td>'.$row->rest_amount.'</td>';
                                echo '<td>'.$row->expire_date.'</td>';
                                echo '<td>'.$row->note_in.'</td>';
                                echo '<td>'.$row->vendername_en.'</td>';
                                echo '<td>'.$row->name_khmer.'</td>';
                                echo '<td class="text-center"><a href="edit.php?edit_id='.$row->in_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a>
                                    <a href="delete.php?del_id='.$row->in_id.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a>
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
