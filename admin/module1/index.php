<?php 
    $layout_title = "Welcome Dashboard";
    $menu_active =1;
    include_once '../../config/database.php';
    include_once '../../config/athonication.php';
    include_once '../layout/header.php';
?>


<div class="portlet light bordered">
    <div class="row">
        <div class="col-xs-12">
            <h2>Module 1 Example</h2>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-sm-3">
            <div class="input-group date date-picker margin-bottom-5" data-date-format="yyyy-mm-dd">
                <span class="input-group-btn">
                    <button class="btn btn-sm default" type="button">
                        <i class="fa fa-calendar"></i>
                    </button>
                </span>
                <input type="text" class="form-control form-filter input-sm" name="order_date_from" placeholder="From">
            </div>
        </div>
    </div>
    <br>
    <div class="portlet-title">
        <div class="caption font-dark">
            <button id="sample_editable_1_new" class="btn green"> Add New
                <i class="fa fa-plus"></i>
            </button>
        </div>
        <div class="tools"> </div>
    </div>
    <div class="portlet-body">
        <div id="sample_1_wrapper" class="dataTables_wrapper">
            <table class="table table-striped table-bordered table-hover dataTable dtr-inline " id="sample_2" role="grid" aria-describedby="sample_1_info" style="width: 1180px;">
                <thead>
                    <tr role="row">
                    	<th>Name</th>
                    	<th>Position</th>
                    	<th>Office</th>
                    	<th>Age</th>
                    	<th>Start date</th>
                    	<th>Salary</th>
                    	<th class="text-center">Action <i class="fa fa-cog fa-spin"></i></th>
                    </tr>
                </thead>
                <tbody>                                 
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                        <td class="text-center">
                        	<a href="#" class="btn btn-xs btn-warning" title="edit"><i class="fa fa-edit"></i></a> 
                        	<a href="#" class="btn btn-xs btn-danger" title="delete"><i class="fa fa-trash"></i></a> 
                        	<a href="#" class="btn btn-xs btn-primary" title="copy"><i class="fa fa-copy"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="print"><i class="fa fa-print"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="detail"><i class="fa fa-info-circle"></i></a> 
                        	<a href="#" class="btn btn-xs btn-info" title="pay"><i class="fa fa-dollar"></i></a> 
                        </td>
                    </tr>
                    
                    
                </tbody>
            </table>
        </div>
    </div>
</div>






<?php include_once '../layout/footer.php' ?>
