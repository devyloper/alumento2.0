<?php
include 'admin/db_connect.php';
?>
<?php session_start(); ?>
<?php

  if(!isset($_SESSION['login_id'])){
    header('location:user_login.php');
  }
    
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
                                <a class="dropdown-item" href="admin/ajax.php?action=logout2"><i class="fa fa-power-off"></i> Logout</a>
                                    <!-- <form action="" id="certificate_generator"> -->
                                        <div class="row form-group">
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Documents</label>
                                                <select class="custom-select" name="Documnets" required id ="doc" >
                                                <option value="" disabled selected hidden>Please Choose...</option>
                                                <option>TC/CC</option>
                                                <option>Migration</option>
                                                </select>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Name</label>
                                                <input type="text" class="form-control" id="name" name="name" required>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Father Name</label>
                                                <input type="text" class="form-control" id = "fname"name="fathername" required>
                                        </div>
                                        </div>
                                        <div class="row form-group">
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Enrollment Number</label>
                                                <input type="text" class="form-control" id = "e_no"name="enroll_no" required>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Passout Year</label>
                                                <input type="input" class="form-control datepickerY" id = "pass_year" name="batch" required>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="" class="control-label">Course Graduated</label>
                                                <select class="custom-select" id = "course" name="course_id" required>
                                                <option value="" disabled selected hidden>Please Choose...</option>
                                                    <?php
                                                    $course = $conn->query("SELECT * FROM courses order by course asc");
                                                    while($row=$course->fetch_assoc()):
                                                    ?>
                                                        <option value="<?php echo $row['course'] ?>"><?php echo $row['course'] ?></option>
                                                    <?php endwhile; ?>
                                                </select>
                                        </div>
                                    </div>
                                        <div id="msg">
                                           
                                        </div>
                                        <hr class="divider">
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <button id="submitBtn" class="btn btn-primary">Book Appoitment</button>
                                            </div>
                                        </div>
                                    <!-- </form> -->
                                </div>
                            </div>
                        </div>
                   </div>
               </div>
               
            </div>
           
<script src="https://unpkg.com/pdf-lib@1.4.0"></script>
<script src="./app_generator/FileSaver.js"></script>
<script src="https://unpkg.com/@pdf-lib/fontkit@0.0.4"></script>
<script>


   $('.datepickerY').datepicker({
        format: " yyyy",
        viewMode: "years",
        minViewMode: "years"
   })


const userName = document.getElementById("name");
const fatherName = document.getElementById("fname");
const enrollmentNo = document.getElementById("e_no");
const course = document.getElementById("course");
const year = document.getElementById("pass_year")
const documents = document.getElementById("doc");
// const address = prompt("Enter your permanent address:");
// const contactNo = prompt("Enter your contact number:");

const submitBtn = document.getElementById("submitBtn");

const { PDFDocument, rgb, degrees } = PDFLib;

const capitalize = (str, lower = false) =>
  (lower ? str.toLowerCase() : str).replace(/(?:^|\s|["'([{])+\S/g, (match) =>
    match.toUpperCase()
  );


submitBtn.addEventListener("click", () => {
  const val = capitalize(userName.value);


  //check if the text is empty or not
  if (val.trim() !== "" && userName.checkValidity()) {
    // console.log(val);
    generatePDF(val);
  } else {
    userName.reportValidity();
  }
});

const generatePDF = async (name) => {
  const existingPdfBytes = await fetch("./app_generator/Tc.pdf").then((res) =>
    res.arrayBuffer()
  );


  // Load a PDFDocument from the existing PDF bytes
  const pdfDoc = await PDFDocument.load(existingPdfBytes);
  pdfDoc.registerFontkit(fontkit);


  //get font
  const fontBytes = await fetch("./app_generator/Sanchez-Regular.ttf").then((res) =>
    res.arrayBuffer()
  );

  // Embed our custom font in the document
  const SanChezFont = await pdfDoc.embedFont(fontBytes);

  // Get the first page of the document
  const pages = pdfDoc.getPages();
  const firstPage = pages[0];
    // Prompt the user for information

// Generate the letter dynamically
  const letter = `To,
  The Director
  BIST Kokta Anand Nagar,
  Bhopal (M.P)
  Subject: Request for issue of ${documents.value}


  I, ${userName.value} son/daughter of Shri ${fatherName.value}, was a student of 
  ${course.value} final year branch having Enrollment No ${enrollmentNo.value}. 
  
  I kindly request you to issue me ${documents.value} for which the following 
  documents are enclosed.


  1. Self-attested photocopy of Admission slip, Marksheet 10th & 12th, I to VII semesters.
  2. No due certificate
  3. Identity card (original)
  4. Photocopy of provisional and migration
  5. Student permanent address:
  6. Student contact number:


  Thank you for your assistance.


  Yours faithfully,
  ${userName.value}`;

// Output the letter
console.log(letter);

  // Draw a string of text diagonally across the first page
  firstPage.drawText(String(letter), {
    x: 50,
    y: 650,
    size: 12,
    font: SanChezFont,
    color: rgb(0, 0, 0),
  });

  // Serialize the PDFDocument to bytes (a Uint8Array)
  const pdfBytes = await pdfDoc.save();
  console.log("Done creating");

  // this was for creating uri and showing in iframe

  // const pdfDataUri = await pdfDoc.saveAsBase64({ dataUri: true });
  // document.getElementById("pdf").src = pdfDataUri;

  var file = new File(
    [pdfBytes],
    "Appoitnment.pdf",
    {
      type: "application/pdf;charset=utf-8",
    }
  );
 saveAs(file);
};

</script>

<script src="https://unpkg.com/pdf-lib@1.4.0"></script>
<script src="./app_generator/FileSaver.js"></script>
<script src="https://unpkg.com/@pdf-lib/fontkit@0.0.4"></script>

