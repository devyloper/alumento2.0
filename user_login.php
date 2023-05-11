<!DOCTYPE html>
<html lang="en">
<?php
session_start();
include('admin/db_connect.php');
ob_start();
if(!isset($_SESSION['system'])){
	$system = $conn->query("SELECT * FROM system_settings limit 1")->fetch_array();
	foreach($system as $k => $v){
		$_SESSION['system'][$k] = $v;
	}
}
ob_end_flush();
?>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?php echo $_SESSION['system']['name'] ?></title>


<?php include('./header.php'); ?>
<?php
if(isset($_SESSION['login_id']))
header("location:index.php?page=dashboard");

?>

</head>
<style>
	body{
		width: 100%;
	    height: calc(100%);
	    /*background: #007bff;*/
	}
	main#main{
		width:100%;
		height: calc(100%);
		background:white;
	}
	#login-right{
		position: absolute;
		right:0;
		width:40%;
		height: calc(100%);
		background:white;
		display: flex;
		align-items: center;
	}
	#login-left{
		position: absolute;
		left:0;
		width:60%;
		height: calc(100%);
		background:#59b6ec61;
		display: flex;
		align-items: center;
		background: url(admin/assets/uploads/<?php echo $_SESSION['system']['cover_img'] ?>);
	    background-repeat: no-repeat;
	    background-size: cover;
	}
	#login-right .card{
		margin: auto;
		z-index: 1
	}
	.logo {
    margin: auto;
    font-size: 8rem;
    background: white;
    padding: .5em 0.7em;
    border-radius: 50% 50%;
    color: #000000b3;
    z-index: 10;
}
div#login-right::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: calc(100%);
    height: calc(100%);
    background: #000000e0;
}

</style>

<body>


  <main id="main" class=" bg-dark">
  		<div id="login-left">
  		</div>

  		<div id="login-right">
  			<div class="card col-md-8">
  				<div class="card-body">

          <form id="login-form" >
            <div class="form-group">
              <label for="username" class="control-label">Enrollment Number</label>
              <input type="text" id="username" name="username" class="form-control">
            </div>

            <div class="form-group">
              <label for="password" class="control-label">Password</label>
              <input type="password" id="password" name="password" class="form-control">
            </div>
            <center><button class="btn-sm btn-block btn-wave col-md-4 btn-primary">Login</button></center>
          </form>
  				</div>
  			</div>
  		</div>


  </main>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


</body>
<script>
  
	$('#login-form').submit(function(e){
		e.preventDefault()
		$('#login-form button[type="button"]').attr('disabled',true).html('Logging in...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'admin/ajax.php?action=login2',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
		$('#login-form button[type="button"]').removeAttr('disabled').html('Login');

			},
			success:function(resp){
				if(resp == 1){
					// location.href ='index.php?page=appoinmet_letter_generator';
          // location.href='index.php?page=dashboard'
          location.href="dashboard.php"
				}else{
					$('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
					$('#login-form button[type="button"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>
</html>


<!-- <?php
include 'admin/db_connect.php';
?>
<style>
    .masthead{
        min-height: 23vh !important;
        height: 23vh !important;
    }
     .masthead:before{
        min-height: 23vh !important;
        height: 23vh !important;
    }
    img#cimg{
        max-height: 10vh;
        max-width: 6vw;
    }
    #login-block{
      max-width: 40vw !important
    }
</style>
<header class="masthead">
    <div class="container-fluid h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-8 align-self-end mb-4 page-title">

            <div class="col-md-12 mb-2 justify-content-center">
            </div>
            </div>
        </div>
    </div>
</header>
<main id="main" >
    <div id="login-left">
    </div>

    <div id="login-right">
      <div class="card col-md-8">
        <div class="card-body">

          <form id="login-form" >
            <div class="form-group">
              <label for="username" class="control-label">Enrollment Number</label>
              <input type="text" id="username" name="username" class="form-control">
            </div>

            <div class="form-group">
              <label for="password" class="control-label">Password</label>
              <input type="password" id="password" name="password" class="form-control">
            </div>
            <center><button class="btn-sm btn-block btn-wave col-md-4 btn-primary">Login</button></center>
          </form>
        </div>
      </div>
    </div>


</main> -->

<!-- <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a> -->

<!-- <div class="container mt-3 pt-2" id="login-block">
   <div class="col-lg-12">
       <div class="card mb-4">
            <div class="card-body">
                <div class="container-fluid">
                  <h2 class="text-center">LOGIN</h2>
                    <div class="col-md-12">
                        <form action="" id="user_login">
                            <div class="row form-group">
                                    <label for="" class="control-label">Enrollment Number</label>
                                    <input type="text" class="form-control" name="enroll_no" required>
                            </div>
                            <div class="row form-group">

                                    <label for="" class="control-label">Password</label>
                                    <input type="password" placeholder = "Enter Password"class="form-control" name="password" >

                            </div>
                            </div>
                            <div id="msg">

                            </div>
                            <hr class="divider">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <button class="btn btn-primary">Login</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
       </div>
   </div> -->


<!-- <script>
$('#login-form').submit(function(e){
  e.preventDefault()
  $('#login-form button[type="button"]').attr('disabled',true).html('Logging in...');
  if($(this).find('.alert-danger').length > 0 )
    $(this).find('.alert-danger').remove();
  $.ajax({
    url:'ajax.php?action=login2',
    method:'POST',
    data:$(this).serialize(),
    error:err=>{
      console.log(err)
  $('#login-form button[type="button"]').removeAttr('disabled').html('Login');

    },
    success:function(resp){
      if(resp == 1){
        location.href ='./dashboard.php';
      }else{
        $('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
        $('#login-form button[type="button"]').removeAttr('disabled').html('Login');
      }
    }
  })
})
</script> -->
