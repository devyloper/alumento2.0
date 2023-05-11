<?php include('db_connect.php');?>
	
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="row mb-4 mt-4">
			<div class="col-md-12">
				
			</div>
		</div>
		<div class="row">
			<!-- FORM Panel -->

			<!-- Table Panel -->
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<b>List of Alumni</b>
						<!-- <span class="float:right"><a class="btn btn-primary btn-block btn-sm col-sm-2 float-right" href="index.php?page=manage_alumni" id="new_alumni">
					<i class="fa fa-plus"></i> New Entry
				</a></span> -->
					</div>
					<div class="card-body">
						<table class="table table-condensed table-bordered table-hover">
							<!-- <colgroup>
								<col width="5%">
								<col width="10%">
								<col width="15%">
								<col width="15%">
								<col width="30%">
								<col width="15%">
							</colgroup> -->
							<thead>
								<tr>
									<th class="text-center">#</th>
									<th class="">Profile</th>
									<th class="">Enrollment</th>
									<th class="">Name</th>
									<th class="">College</th>
									<th class="">Company</th>
									<th class="">Batch</th>
									<th class="">Phone No.</th>
									<th class="">Status</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								$i = 1;
								if($_SESSION['login_dept'] === '0' )
								{
										$alumni = $conn->query("SELECT a.*,c.course,Concat(a.firstname,' ',a.lastname) as name from alumnus_bio a inner join courses c on c.id = a.course_id where status != 1 and college LIKE '".$_SESSION['college']."' order by batch asc, Concat(a.firstname,' ',a.lastname) asc");
									
								}else{
									$alumni = $conn->query("SELECT a.*,c.course,Concat(a.firstname,' ',a.lastname) as name from alumnus_bio a inner join courses c on c.id = a.course_id where a.course_id='". $_SESSION['login_dept'] ."' and college LIKE '".$_SESSION['college']."'  and status != 1 order by batch asc, Concat(a.firstname,' ',a.lastname) asc");
									
								}
								
								while($row=$alumni->fetch_assoc()):
									
								?>
								<tr>
									<td class="text-center"><?php echo $i++ ?></td>
									<td class="text-center">
										<div class="avatar">
										 <img src="assets/uploads/<?php echo $row['avatar'] ?>" class="" alt="">
										</div>
									</td>
									<td class="">
										 <p> <b><?php echo ucwords($row['enroll_no']) ?></b></p>
									</td>
									<td class="">
										 <p> <b><?php echo ucwords($row['name']) ?></b></p>
									</td>
									<td class="">
										 <p> <b><?php echo ucwords($row['college']) ?></b></p>
									</td>
									<td class="">
										 <p> <b><?php echo $row['connected_to'] ?></b></p>
									</td>
									<td class="">
										 <p> <b><?php echo $row['batch'] ?></b></p>
									</td>
									<td class="">
										 <p> <b><?php echo $row['phone_no'] ?></b></p>
									</td>
									<td class="text-center">
										<?php if($row['status'] == 1): ?>
											<span class="badge badge-primary">Verified</span>
										<?php else: ?>
											<span class="badge badge-secondary">Not Verified</span>
										<?php endif; ?>

									</td>
									<td class="text-center">
										<button class="btn btn-sm btn-outline-primary view_alumni" type="button" data-id="<?php echo $row['id'] ?>" >View</button>
										<button class="btn btn-sm btn-outline-danger delete_alumni" type="button" data-id="<?php echo $row['id'] ?>">Delete</button>
									</td>
								</tr>
								<?php endwhile; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Table Panel -->
		</div>
	</div>	

</div>
<style>
	
	td{
		vertical-align: middle !important;
	}
	td p{
		margin: unset
	}
	img{
		max-width:100px;
		max-height: :150px;
	}
	.avatar {
	    display: flex;
	    border-radius: 100%;
	    width: 100px;
	    height: 100px;
	    align-items: center;
	    justify-content: center;
	    border: 3px solid;
	    padding: 5px;
	}
	.avatar img {
	    max-width: calc(100%);
	    max-height: calc(100%);
	    border-radius: 100%;
	}
</style>

<script>
	
	$(document).ready(function(){
		$('table').dataTable()
	})
	
	$('.view_alumni').click(function(){
		uni_modal("Bio","view_alumni.php?id="+$(this).attr('data-id'),'mid-large')
		
	})
	$('.delete_alumni').click(function(){
		_conf("Are you sure to delete this alumni?","delete_alumni",[$(this).attr('data-id')])
	})
	
	function delete_alumni($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_alumni',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>

