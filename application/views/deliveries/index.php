<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Deliveries</h1>
	</div>
<!-- /.col-lg-12 -->
</div>
<div class="row">
 <div class="col-lg-12">
     <div class="panel panel-default">
         <div class="panel-heading">
             Deliveries List
         </div>
         <!-- /.panel-heading -->
         <div class="panel-body">
 
             <table class="table table-striped table-bordered table-hover table-responsive" id="deliveries_table">
				<thead>
					<tr>
						<th>Supplier Name</th>
						<th>Item Name</th>
						<th>Size</th> 
						<th>Quantity Delivered</th>
						<th>Arrival Date</th>
						<th>Status</th>
						<th>Remarks</th>
						<th></th>
					</tr>
				</thead>

				<tbody>
					<?php foreach($dataSet as $data): ?> 
						<tr>
							<td><?php echo $data['supplier_name'] ?></td>
							<td><?php echo $data['item'] ?></td>
							<td><?php echo $data['price'] ?></td>
							<td><?php echo $data['quantity'] ?></td>
							<td><?php echo $data['expiry_date'] ?></td>
							<td><?php echo $data['status'] ?></td>
							<td><?php echo $data['remarks'] ?></td>
							<td><?php echo $data['edit'] ?></td>
						</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
			
		</table>
         </div>
         <!-- /.panel-body -->
     </div>
     <!-- /.panel -->
 </div>
 <!-- /.col-lg-12 -->
</div>

 

