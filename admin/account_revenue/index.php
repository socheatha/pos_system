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
            <h2><i class="fa fa-image fa-fw"></i> Revenue List Administrator</h2>
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
                        <th class="text-center">N&deg;</th>
                        <th class="text-center">Date Record</th>
                        <th class="text-center">Description</th>
                        <th class="text-center">Revenue Category</th>
                        <th class="text-center">Amount</th>
                        <th class="text-center">Employee</th>
                        <th class="text-center">Note</th>
                        <th class="text-center"><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * FROM tbl_pos_revenue_list AS A
                            LEFT JOIN tbl_pos_revenue_category AS B ON A.rev_revenue_category=B.reca_id
                            LEFT JOIN tbl_pos_employee AS C ON A.rev_employee=C.emp_id
                        ");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->rev_date_record.'</td>';
                                echo '<td>'.$row->rev_description.'</td>';
                                echo '<td>'.$row->reca_name.'</td>';
                                echo '<td class="text-center">$'.number_format($row->rev_amount,2).'</td>';
                                echo '<td>'.$row->name_english.'</td>';
                                echo '<td>'.$row->rev_note.'</td>';
                                echo '<td class="text-center"><a href="edit.php?edit_id='.$row->rev_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a>
                                    <a href="delete.php?del_id='.$row->rev_id.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a>
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
