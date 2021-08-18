<?php 
    $menu_active =1;
    $layout_title = "Welcome to Page";
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>
<?php 
  if(isset($_POST['search'])){
    $dateStart = $_POST['from'];
    $dateEnd = $_POST['to'];
    if($_POST['txt_option'] != ""){
      $v_option = $_POST['txt_option'];
      $sql = "SELECT * FROM tbl_pos_stockin A  
                    LEFT JOIN tbl_pos_product B ON A.pro_id = B.pro_id 
                    LEFT JOIN tbl_pos_employee C ON A.emp_id = C.emp_id 
                    LEFT JOIN tbl_pos_vender D ON A.vender_id = D.vender_id 
                    LEFT JOIN tbl_pos_category E ON B.cate_id=E.cate_id
                    WHERE date_in BETWEEN '$dateStart' AND '$dateEnd' AND A.emp_id='$v_option'
                    "; 
    $result = $connect->query($sql);
    }else{
        $sql = "SELECT * FROM tbl_pos_stockin A  
                    LEFT JOIN tbl_pos_product B ON A.pro_id = B.pro_id 
                    LEFT JOIN tbl_pos_employee C ON A.emp_id = C.emp_id 
                    LEFT JOIN tbl_pos_vender D ON A.vender_id = D.vender_id 
                    LEFT JOIN tbl_pos_category E ON B.cate_id=E.cate_id
                    WHERE date_in BETWEEN '$dateStart' AND '$dateEnd'
                    "; 
    $result = $connect->query($sql);
    }            
  }else{
    $v_date = date('Y-m-d');
    $sql = "SELECT * FROM tbl_pos_stockin A  
                    LEFT JOIN tbl_pos_product B ON A.pro_id = B.pro_id 
                    LEFT JOIN tbl_pos_employee C ON A.emp_id = C.emp_id 
                    LEFT JOIN tbl_pos_vender D ON A.vender_id = D.vender_id 
                    LEFT JOIN tbl_pos_category E ON B.cate_id=E.cate_id
                    WHERE date_in='$v_date' 
                    "; 
    $result = $connect->query($sql);
  }
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2><i class="fa fa-image fa-fw"></i> Report Stockin by Employee</h2>
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
                    <select class="form-control" name = "txt_option"> 
                      <option value="">==choose employee==</option>
                      <?php 
                        $vv_search = $connect->query("SELECT * FROM tbl_pos_employee ORDER BY name_english ASC");
                        while ($row_vv_search = mysqli_fetch_object($vv_search)) {
                          if($row_vv_search->emp_id == @$_POST['txt_option']){
                            echo '<option SELECTED value="'.$row_vv_search->emp_id.'">'.$row_vv_search->name_english.' :: '.$row_vv_search->name_khmer.'</option>';
                          }else{
                            echo '<option value="'.$row_vv_search->emp_id.'">'.$row_vv_search->name_english.' :: '.$row_vv_search->name_khmer.'</option>';
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
                </tr>
            </thead>
            <tbody>
                <?php
                $total=0;

                    while($row = $result->fetch_assoc()) 
                    {     
                      $total+= $row["qty_in"]; 

                      $v1=$row["date_in"];
                      $v2=$row["code"];
                      $v_ref=$row["ref"];
                      $v3=$row["name_kh"];
                      $v4=$row["qty_in"];
                      $v13=$row["paket"];
                      $v5=$row["price"];
                      $v6=$row["amount"];
                      $v7=$row["payamount"];
                      $v8=$row["rest_amount"];
                      $v9=$row["expire_date"];
                      $v10=$row["note_in"];
                      $v11=$row["vendername_en"];
                      $v12=$row["name_khmer"];
                  ?>
                  <tr>
                    <td><?php echo $v1;?></td> 
                    <td><?php echo $v2;?></td>
                    <td><?php echo $v_ref;?></td>
                     
                    <td><?php echo $v3;?></td>
                    <td><?php echo $row['category_name'];?></td>
                    <td class="text-center"><?php echo number_format($v4,0);?></td>
                    <td><?php echo $v13;?></td>
                    <td><?php echo $v5;?></td>
                    <td><?php echo $v6;?></td>
                    <td><?php echo $v7;?></td>
                    <td><?php echo $v8;?></td>
                    <td><?php echo $v9;?></td>
                    <td><?php echo $v10;?></td>
                    <td><?php echo $v11;?></td>
                    <td><?php echo $v12;?></td>
                  </tr> 
                  <?php
                    }  
                  ?>
            </tbody>
            <tfoot>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>Total:</th>
                    <th class="text-center"> 
                        <?php
                            echo number_format($total,0);
                        ?>
                    </th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </tfoot>
            </table>
        </div>
    </div>
</div>






<?php include_once '../layout/footer.php' ?>
