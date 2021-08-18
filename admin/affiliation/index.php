<?php 
    $menu_active =9;
    $layout_title = "Welcome to Affiliation Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-cubes fa-fw"></i> Affiliation Administrator</h2>
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
        <div class="tools"> </div>
    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info" style="width: 1180px;">
                <thead>
                    <tr role="row" class="text-center">
                        <th>N&deg;</th>
                        <th>Title</th>
                        <th class="text-center">Image</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Posted By</th>
                        <th>Created At</th>
                        <th style="min-width: 300px;" class="text-center">Action <i class="fa fa-cog fa-spin"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT A.*,U.user_name,AC.ac_title_en FROM tbl_affiliation AS A LEFT JOIN tbl_user AS U ON U.user_id=A.aff_posted_by LEFT JOIN tbl_affiliation_category AS AC ON AC.ac_id=A.aff_category_id ORDER BY aff_id DESC");
                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->aff_title_en.'</td>';
                                echo '<td class="text-center"><img class="img-thumbnail" style="height: 40px;" src="../../img/img_affiliation/'.$row->aff_image.'"/></td>';
                                echo '<td>'.$row->aff_description_en.'</td>';
                                echo '<td>'.$row->ac_title_en.'</td>';
                                echo '<td>'.$row->user_name.'</td>';
                                echo '<td>'.$row->aff_created_at.'</td>';
                                echo '<td class="text-center">';
                                    echo '<a href="edit.php?edit_id='.$row->aff_id.'&edit_img='.$row->aff_image.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i> English</a> ';
                                    echo '<a href="edit_kh.php?edit_id='.$row->aff_id.'&edit_img='.$row->aff_image.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i> Khmer</a> ';
                                    echo '<a href="edit_cn.php?edit_id='.$row->aff_id.'&edit_img='.$row->aff_image.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i> Chinese</a> ';
                                    echo '<a href="delete.php?del_id='.$row->aff_id.'&del_img='.$row->aff_image.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> ';
                                    echo '<a href="../../affiliation_detail.php?aff_id='.$row->aff_id.'" target="_blank" class="btn btn-xs btn-info" title="copy"><i class="fa fa-info-circle fa-fw"></i></a> ';
                                    echo '<a href="affiliation_right_detail.php?edit_id='.$row->aff_id.'" class="btn btn-xs btn-success" title="affiliation information"><i class="fa fa-tasks fa-fw"></i></a> ';
                                    
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
