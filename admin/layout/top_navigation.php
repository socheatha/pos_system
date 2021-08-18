<?php 
    $select = "SELECT * FROM tbl_pos_invoice Order by inv_no desc";
    $query_select = $connect->query($select);
    $sel = $query_select->fetch_array();
    $tt = $query_select->num_rows;
    $no = $sel['transaction_id'];
    $no1 = $sel['inv_no'];
    $finalcode = '';

    if($tt > 0 ){
        $finalcode = $no1 + 1;
    }else{
        $finalcode = $no + 1;
    }
?>
<div class="page-actions">
    <li class="btn-group"><a href="../dashboard/" class="btn red-haze btn-sm <?= (@$menu_active==0)?("active"):("") ?>">Dashboard</a></li>
    <li class="btn-group"><a href="../sale/index.php?cash=cash&invoice=<?= $finalcode ?>" class="btn red-haze btn-sm <?= (@$menu_active==999)?("active"):("") ?>">Sale</a></li>
    <li class="btn-group"><a href="../invoice/" class="btn red-haze btn-sm <?= (@$menu_active==1)?("active"):("") ?>">Invoice</a></li>    
    <li class="btn-group"><a href="../account/" class="btn red-haze btn-sm <?= (@$menu_active==6)?("active"):("") ?>">Accounting</a></li>
    <!-- <div class="btn-group">
        <button type="button" class="btn red-haze btn-sm dropdown-toggle <?= (@$menu_active==3)?("active"):("") ?>" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
            <span class="hidden-sm hidden-xs">Stock&nbsp;</span>
            <i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="../stock_warehouse/"><i class="fa fa-cubes"></i> Stock Warehouse </a>
            </li>
            <li><a href="../stock_sell/"><i class="fa fa-cube"></i> Stock sell</a> </li>
        </ul>
    </div>     -->
    <li class="btn-group"><a href="../stock_sell/" class="btn red-haze btn-sm <?= (@$menu_active==3)?("active"):("") ?>">Stock</a></li>
    <li class="btn-group"><a href="../product/" class="btn red-haze btn-sm <?= (@$menu_active==2)?("active"):("") ?>">Product</a></li>
    <li class="btn-group"><a href="../supplier/" class="btn red-haze btn-sm <?= (@$menu_active==4)?("active"):("") ?>">Supplier</a></li>
    <li class="btn-group"><a href="../customer/" class="btn red-haze btn-sm <?= (@$menu_active==7)?("active"):("") ?>">Customer</a></li>
    <li class="btn-group"><a href="../employee/" class="btn red-haze btn-sm <?= (@$menu_active==8)?("active"):("") ?>">Employee</a></li>
    <!-- <div class="btn-group">
        <button type="button" class="btn red-haze btn-sm dropdown-toggle <?= (@$menu_active==9)?("active"):("") ?>" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
            <span class="hidden-sm hidden-xs">Report&nbsp;</span>
            <i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="../report_sell/"><i class="fa fa-cube"></i> Report Sell </a></li>
            <li><a href="../report_stock_warehouse/"><i class="fa fa-cubes"></i> Report Stock Warehouse</a> </li>
            <li><a href="../report_stock_sell/"><i class="fa fa-cubes"></i> Report Stock Sell</a> </li>
            <li><a href="../report_account/"><i class="fa fa-cubes"></i> Report Account</a> </li>
        </ul>
    </div> -->
    <li class="btn-group"><a href="../setting/" class="btn red-haze btn-sm <?= (@$menu_active==10)?("active"):("") ?>">Setting</a></li>
    

    
    <li class="btn-group"><a href="../user/" class="btn red-haze btn-sm <?= (@$menu_active==5)?("active"):("") ?>">User</a></li>
    <li class="btn-group"><a href="../system/" class="btn red-haze btn-sm <?= (@$menu_active==99)?("active"):("") ?>">Help</a></li>
    


    <!-- dropdown menu -->
    <!-- <div class="btn-group">
        <button type="button" class="btn red-haze btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
            <span class="hidden-sm hidden-xs">Actions&nbsp;</span>
            <i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="javascript:;"><i class="icon-share"></i> Share </a></li>
            <li class="divider"> </li>
            <li><a href="javascript:;"><i class="icon-flag"></i> Comments<span class="badge badge-success">4</span></a>
            </li>
            <li><a href="javascript:;"><i class="icon-users"></i> Feedbacks<span class="badge badge-danger">2</span></a> </li>
        </ul>
    </div>  --> 

</div>