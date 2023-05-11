<?php 
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
            <div class="container mt-3 pt-2">
               <div class="col-lg-12">
                   <div class="card mb-4">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="col-md-12">
                                    <form action="" id="create_account">
                                        <div class="row form-group">
                                        <div class="col-md-4">
                                                <label for="" class="control-label">First Name</label>
                                                <input type="text" class="form-control" name="firstname" required>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Last Name</label>
                                                <input type="text" class="form-control" name="lastname" required>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Enrollment Number</label>
                                                <input type="text" class="form-control" name="enroll_no" required>
                                        </div>
                                        
                                        </div>
                                        <div class="row form-group">
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Gender</label>
                                                <select class="custom-select" name="gender" required>
                                                <option value="" disabled selected hidden>Please Choose...</option>
                                                <option>Male</option>
                                                <option>Female</option>
                                                </select>
                                            </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Native State</label>
                                                <!--- India states -->
                                                        <select class="custom-select" name="navstate">
                                                            <option value="" disabled selected hidden>Please Choose...</option>
                                                            <option value="AN">Andaman and Nicobar Islands</option>
                                                            <option value="AP">Andhra Pradesh</option>
                                                            <option value="AR">Arunachal Pradesh</option>
                                                            <option value="AS">Assam</option>
                                                            <option value="BR">Bihar</option>
                                                            <option value="CH">Chandigarh</option>
                                                            <option value="CT">Chhattisgarh</option>
                                                            <option value="DN">Dadra and Nagar Haveli</option>
                                                            <option value="DD">Daman and Diu</option>
                                                            <option value="DL">Delhi</option>
                                                            <option value="GA">Goa</option>
                                                            <option value="GJ">Gujarat</option>
                                                            <option value="HR">Haryana</option>
                                                            <option value="HP">Himachal Pradesh</option>
                                                            <option value="JK">Jammu and Kashmir</option>
                                                            <option value="JH">Jharkhand</option>
                                                            <option value="KA">Karnataka</option>
                                                            <option value="KL">Kerala</option>
                                                            <option value="LA">Ladakh</option>
                                                            <option value="LD">Lakshadweep</option>
                                                            <option value="MP">Madhya Pradesh</option>
                                                            <option value="MH">Maharashtra</option>
                                                            <option value="MN">Manipur</option>
                                                            <option value="ML">Meghalaya</option>
                                                            <option value="MZ">Mizoram</option>
                                                            <option value="NL">Nagaland</option>
                                                            <option value="OR">Odisha</option>
                                                            <option value="PY">Puducherry</option>
                                                            <option value="PB">Punjab</option>
                                                            <option value="RJ">Rajasthan</option>
                                                            <option value="SK">Sikkim</option>
                                                            <option value="TN">Tamil Nadu</option>
                                                            <option value="TG">Telangana</option>
                                                            <option value="TR">Tripura</option>
                                                            <option value="UP">Uttar Pradesh</option>
                                                            <option value="UT">Uttarakhand</option>
                                                            <option value="WB">West Bengal</option>
                                                        </select>
                                            </div>                                          
                                           
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Native Place</label>
                                                <input type="text" class="form-control" name="native" >
                                            </div>
</div>
                                        
                                        <div class="row form-group">
                                            <div class="col-md-4">
                                                <label for="" class="control-label">College</label>
                                                <select class="custom-select" name="college" required>
                                                    <option value="" disabled selected hidden>Please Choose...</option>
                                                    <option>BIST</option>
                                                    <option>BIRT</option>
                                                    <option>BIRTS</option>
                                                </select>
                                            </div>

                                            <div class="col-md-4">
                                                <label for="" class="control-label">Passout Year</label>
                                                <input type="input" class="form-control datepickerY" name="batch" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Course Graduated</label>
                                                <select class="custom-select" name="course_id" required>
                                                <option value="" disabled selected hidden>Please Choose...</option>
                                                    <?php 
                                                    $course = $conn->query("SELECT * FROM courses order by course asc");
                                                    while($row=$course->fetch_assoc()):
                                                    ?>
                                                        <option value="<?php echo $row['id'] ?>"><?php echo $row['course'] ?></option>
                                                    <?php endwhile; ?>
                                                </select>
                                            </div>
                                            </div>
                                            <div class="row form-group">
                                            
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Working Sector</label>
                                                <select class="custom-select" name="companysector" required>
                                                    <option value="" disabled selected hidden>Please Choose...</option>
                                                    <option>Government</option>
                                                    <option>Semi-Government</option>
                                                    <option>Private</option>
                                                    <option>Self Employed</option>
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Currently Working At</label>
                                                <input type="text" placeholder = "Company Name"class="form-control" name="connected_to" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Position</label>
                                                <input type="text" class="form-control" name="pos" required>
                                            </div>
                                            
                                            </div>
                                        <div class="row form-group">
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Company Loaction</label>
                                                <select class="custom-select" name="comploc" required>
                                                    <option>INDIA</option>
                                                    <option>ABROAD</option>
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Current Location</label>
                                                <input type="text" class="form-control" name="companyloc" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Image</label>
                                                <input type="file"placeholder = "" class="form-control" name="img" onchange="displayImg(this,$(this))">
                                                <img src="" alt="" id="cimg">
                                            </div>  
                                        </div>
                                        <div class="row form-group">
                                             <div class="col-md-4">
                                                <label for="" class="control-label">Email</label>
                                                <input type="email" placeholder = "Enter email"class="form-control" name="email" >
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Phone Number</label>
                                                <input type="text" placeholder = "+91" class="form-control" name="phone_no" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Social Media Id </label>
                                                <input type="text" placeholder = "Linkedin Preferred"class="form-control" name="linkedinid" >
                                            </div>
                                        </div>
                                        </div>
                                        <div id="msg">
                                            
                                        </div>
                                        <hr class="divider">
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <button class="btn btn-primary">Join Us!!</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                   </div>
               </div>
                
            </div>


<script>
   $('.datepickerY').datepicker({
        format: " yyyy", 
        viewMode: "years", 
        minViewMode: "years"
   })
   $('.select2').select2({
    placeholder:"Please Select Here",
    width:"100%"
   })
   function displayImg(input,_this) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#cimg').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}
$('#create_account').submit(function(e){
    e.preventDefault()
    start_load()
    $.ajax({
        url:'admin/ajax.php?action=signup',
        data: new FormData($(this)[0]),
        cache: false,
        contentType: false,
        processData: false,
        method: 'POST',
        type: 'POST',
        success:function(resp){
            if(resp == 1){
                alert_toast("Registration Request Sent.",'success')
                end_load()
                uni_modal("","register_msg.php")
            }else{
                $('#msg').html('<div class="alert alert-danger">Email already exist.</div>')
                end_load()
            }
        }
    })
})
</script>