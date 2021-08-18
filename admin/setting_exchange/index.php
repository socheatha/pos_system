<?php 
    $menu_active =10;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>
<?php 

    if(isset($_POST["btn_change"])){
        $exch = $_POST["txt_exchange"];
        $note = $_POST['txt_note'];
    
        $sql = "UPDATE tbl_pos_exchange SET exchange = '$exch' ,note = '$note'";
        $result = mysqli_query($connect, $sql);

    }
?>
<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-cubes fa-fw"></i> Setting Exchange</h2>
        </div>
    </div>
    <br>
    <br>
    <div class="portlet-title">
        <div class="caption font-dark">
            <a  data-toggle="modal" href='#modal_change' class="btn green"> Change
                <i class="fa fa-pencil"></i>
            </a>
        </div>
        <div class="tools"> </div>
    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info">
                <thead>
                    <tr role="row" class="text-center">
                        <th class="text-center">N&deg;</th>
                        <th class="text-center">Exchange Percentage</th>
                        <th class="text-center">Exchange Note</th>
                    </tr>
                </thead>
                <tbody>                                 
                    <?php 
                        $i = 0;
                        $get_data = $connect->query("SELECT * FROM tbl_pos_exchange");
                        $row = mysqli_fetch_object($get_data);
                        echo '<tr>';
                            echo '<td>'.(++$i).'</td>';
                            echo '<td class="text-center">'.number_format($row->exchange,0).'</td>';
                            echo '<td>'.$row->note.'</td>';
                        echo '</tr>';
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php include_once '../layout/footer.php' ?>
<div class="modal fade" id="modal_change">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Change Exchange</h4>
            </div>
            <div class="modal-body">
                <form action="" method="POST" role="form" id="form_change">
                    <div class="form-group">
                        <label for="">Exchange Rate</label>
                        <input type="text" class="form-control" value="<?= $row->exchange ?>" placeholder="" name="txt_exchange" required="" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="">Exchange Note</label>
                        <input type="text" class="form-control" value="<?= $row->note ?>" placeholder="" name="txt_note" required="" autocomplete="off">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" name="btn_change" form="form_change">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>