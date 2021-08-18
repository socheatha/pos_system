<?php 
    $menu_active =9;
    $layout_title = "Edit Affiliation Right Aside Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<?php 
// add record
    if(isset($_POST['btn_add'])){
        $v_id = @$_POST['txt_aff_id'];
        $v_title = @$connect->real_escape_string($_POST['txt_title']);
        $v_description = @$connect->real_escape_string($_POST['txt_description']);
        $v_posted_by = @$_SESSION['user']->user_id;

        $query_insert = "INSERT INTO tbl_affiliation_right_aside 
            (
            ars_title_en,
            ars_title_kh,
            ars_title_cn,
            ars_affiliation,
            ars_description_en,
            ars_description_kh,
            ars_description_cn,
            ars_posted_by
            ) 
            VALUES 
            (
            '$v_title',
            '$v_title',
            '$v_title',
            '$v_id',
            '$v_description',
            '$v_description',
            '$v_description',
            '$v_posted_by'
            )";
            

        if($connect->query($query_insert)){
            $sms = '<div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Successfull!</strong> Data update ...
            </div>'; 
        }else{
            $sms = '<div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Error!</strong> Query error ...
            </div>';   
        }
    }

// delete record
    if(@$_GET['del_id'] != ""){
        $del_id = @$_GET['del_id'];
        $connect->query("DELETE FROM tbl_affiliation_right_aside WHERE ars_id='$del_id'");
    }


// get old data 
    $edit_id = @$_GET['edit_id'];
    $old_slider = $connect->query("SELECT * FROM tbl_affiliation WHERE aff_id='$edit_id'");
    $row_old_slider = mysqli_fetch_object($old_slider);


 ?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <?= @$sms ?>
            <h2><i class="fa fa-plus-circle fa-fw"></i>Edit Aside Detail [ <?= $row_old_slider->aff_title_en ?> ]</h2>
        </div>
    </div>
    
    <br>
    <br>

    <div class="portlet-title">
        <div class="caption font-dark">
            <a href="index.php" id="sample_editable_1_new" class="btn red"> 
                <i class="fa fa-arrow-left"></i>
                Back
            </a>
             <a href="affiliation_right_detail_add.php?edit_id=<?= $edit_id ?>" id="sample_editable_1_new" class="btn green">
                <i class="fa fa-plus"></i>
            </a>
        </div>

    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info" style="width: 1180px;">
                <thead>
                    <tr role="row" class="text-center">
                        <th>N&deg;</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th class="text-center">Posted By</th>
                        <th>Created at</th>
                        <th>Updated at</th>
                        <th style="min-width: 250px;" class="text-center">Action <i class="fa fa-cog fa-spin"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT A.*,U.user_name FROM tbl_affiliation_right_aside AS A 
                            LEFT JOIN tbl_user AS U ON U.user_id=A.ars_posted_by 
                            WHERE ars_affiliation = '$edit_id'
                            ORDER BY ars_id DESC");

                        while ($row = mysqli_fetch_object($get_data)) {
                            echo '<tr>';
                                echo '<td>'.(++$i).'</td>';
                                echo '<td>'.$row->ars_title_en.'</td>';
                                echo '<td>'.$row->ars_description_en.'</td>';
                                echo '<td>'.$row->user_name.'</td>';
                                echo '<td>'.$row->ars_created_at.'</td>';
                                echo '<td>'.$row->ars_updated_at.'</td>';
                                echo '<td class="text-center">';
                                    echo '<a href="affiliation_right_detail_edit.php?ars_id='.$row->ars_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i> English</a> ';
                                    echo '<a href="affiliation_right_detail_edit_kh.php?ars_id='.$row->ars_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i> Khmer</a> ';
                                    echo '<a href="affiliation_right_detail_edit_cn.php?ars_id='.$row->ars_id.'" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i> Chinese</a> ';
                                    echo '<a href="'.$_SERVER['PHP_SELF'].'?del_id='.$row->ars_id.'&edit_id='.$row->ars_affiliation.'" onclick="return confirm(\'Are you sure to delete this?\')" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> ';
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


<div class="modal fade" id="modal_add">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Add Information</h4>
            </div>
            <div class="modal-body">
                <form action="" method="POST" role="form">
                    <input type="hidden" name="txt_aff_id" value="<?= $edit_id ?>">
                    <div class="form-group">
                        <label for="">Title</label>
                        <input name="txt_title" type="text" class="form-control" id="" placeholder="Input Title">
                    </div>
                
                    <div class="form-group">
                        <label for="">Description</label>
                        <textarea name="txt_description" class="form-control detail" id="detail" rows="4" placeholder="Input Description"></textarea>
                    </div>
                
                    
                
                    <button type="submit" name="btn_add" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-warning">Reset</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../../plugin/ckeditor_4.7.0_full/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    CKEDITOR.replace( 'detail', {
        language: 'en',
        height: '200'
        // uiColor: '#9AB8F3'
    });
</script>