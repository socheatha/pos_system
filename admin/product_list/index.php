<?php 
    $menu_active =2;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>
 

<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Product List Administrator</h2>
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
                        <th>Code</th>
                        <th>Ref_Name</th>
                        <th>Photo</th>
                        <th>Packet</th>
                        <th>Name(En)</th>
                        <th>Name(Kh)</th>
                        <th>Price</th>
                        <th>Cost</th>    
                        <th>Note</th>
                        <th>Category</th>
                        <th><i class="fa fa-cog" aria-hidden="true"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * FROM tbl_pos_product LEFT JOIN tbl_pos_category ON tbl_pos_product.cate_id = tbl_pos_category.cate_id ORDER BY pro_id DESC");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->code.'</td>';
                                echo '<td>'.$row->ref.'</td>';
                                echo '<td class="text-center"><a href="../../img/img_product/'.$row->photo.'" target="_blank"><img class="img-thumbnail" src="../../img/img_product/'.$row->photo.'" style="max-height: 50px;"></a></td>';
                                echo '<td>'.$row->paket.'</td>';
                                echo '<td>'.$row->name_en.'</td>';
                                echo '<td>'.$row->name_kh.'</td>';
                                echo '<td>'.$row->price_dolla.'</td>';
                                echo '<td>'.$row->price_riel.'</td>';
                                echo '<td>'.$row->note_pro.'</td>';
                                echo '<td>'.$row->category_name.'</td>';
                                echo '<td class="text-center"><a href="edit.php?edit_id='.$row->pro_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a>
                                    <a href="delete.php?del_id='.$row->pro_id.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a>
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
