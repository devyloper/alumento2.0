<?php 
include 'admin/db_connect.php'; 
?>
<link rel="stylesheet" href="elite.css">
<style>
#portfolio .img-fluid{
    width: calc(100%);
    height: 30vh;
    z-index: -1;
    position: relative;
    padding: 1em;
}
.event-list{
cursor: pointer;
}
span.hightlight{
    background: yellow;
}
.banner{
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 26vh;
        width: calc(30%);
    }
    .banner img{
        width: calc(100%);
        height: calc(100%);
        cursor :pointer;
    }
.event-list{
cursor: pointer;
border: unset;
flex-direction: inherit;
}

.event-list .banner {
    width: calc(40%)
}
.event-list .card-body {
    width: calc(60%)
}
.event-list .banner img {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
    min-height: 50vh;
}
span.hightlight{
    background: yellow;
}
.banner{
   min-height: calc(100%)
}

</style>

<!-- Banner start  -->
<style>
  .carousel .carousel-item {
  height: 500px;
}

.carousel-item img {
    position: absolute;
    object-fit: cover;
    top: 0;
    left: 0;
    min-height: 500px;
}
</style>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
  <div class="carousel-item active">
      <img class="d-block w-100" src="banner/13.jpg" alt="Third slide">
  </div>

    <div class="carousel-item">
      <img class="h-50 w-100" src="banner/DSC_0014.JPG" alt="Second slide">
    </div>

    <div class="carousel-item" >
      <img class="d-block w-100" src="banner/DSC_0515.JPG" alt="Third slide">
    </div>
    
    <div class="carousel-item">
      <img class="h-50 w-100" src="banner/banner-1.jpg" alt="First slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- Banner ends -->
        <br><br>

<!-- Alumini Section 1 -->
<h4 class="text-center text-white">&hearts; Our Abroad Alumni &hearts;</h4>
<section>
    
    <div class="swiper mySwiper container">
      <div class="swiper-wrapper content">
        <?php
            $fpath = 'admin/assets/uploads';
            // $alumni = $conn->query("SELECT a.*,c.course,Concat(a.firstname,' ',a.lastname) as name from alumnus_bio a inner join courses c on c.id = a.course_id order by Concat(a.firstname,' ',a.lastname) desc");
            $alumni = $conn->query("SELECT a.*,c.course,Concat(a.firstname,' ',a.lastname) as name from alumnus_bio a  inner join courses c on c.id = a.course_id and a.comploc like 'ABROAD'");
          while($row = $alumni->fetch_assoc()):
        ?>
        <div class="swiper-slide card" style="">
        <div class="card-content">
            <div class="image">
            <img src="<?php echo $fpath.'/'.$row['avatar'] ?>" alt="">
            </div>

            <div class="name-profession">
            <span class="name"><?php echo $row['name'] ?></span>
            <span class="profession"><?php echo $row['connected_to'] ?></span>
            <span class="profession"><?php echo $row['course'] ?></span>
            <span class="profession"><?php echo $row['batch']?></span>

            </div>
        </div>
        </div>
      <?php endwhile; ?>
      </div>
    </div>

    <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
  </section>

  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>

 <!--End of alumini list  -->

 <!-- Elite Alumini -->
 <br>
 <h4 class="text-center text-white">&hearts; Our elite Alumni &hearts;</h4>
      <div class="container1">
         <div class="card1">
            <div class="img">
               <img src="elite/saurab.jfif">
            </div>
            <div class="top-text">
               <div class="name">
               Saurabh Gupat
               </div>
               <p>
               Manager SCM At TATA Projects
               </p>
               <br>
            </div>
         </div>
         <div class="card1">
            <div class="img">
               <img src="elite/alok.jfif">
            </div>
            <div class="top-text">
               <div class="name">
               Alok Kumar
               </div>
               <p>
               Quality Engg. At L&T defense
               </p>
            </div>
         </div>
         <div class="card1">
            <div class="img">
               <img src="elite/prabhat.jfif">
            </div>
            <div class="top-text">
               <div class="name">
               Prabhat Pathak
               </div>
               <p>
               Sr. Associate At Amazon
               </p>
            </div>
         </div>
         <div class="card1">
            <div class="img">
               <img src="elite/shi.jfif">
            </div>
            <div class="top-text">
               <div class="name">
               Shefali Varshney
               </div>
               <p>
               Program Manager At Google
               </p>
            </div>
         </div>
         <div class="card1">
            <div class="img">
               <img src="elite/nitin.jfif">
            </div>
            <div class="top-text">
               <div class="name">
               Nitin Mathur
               </div>
               <p>
               Principal Consultant At Infosys
               </p>
               <br>
            </div>
         </div>
      </div>
<!-- 

  <div class="col-md-4 item">
    <div class="card">
      <img src="" alt="Mike" style="width:100%">
      <div class="container">
        <p style ="font-size: 1.5rem;font-family:Poppins;"><p>
        <p class="title"></p>
        <p>BIST EC 2017</p>
        </div>
    </div>
  </div>
  <div class="col-md-4 item">
    <div style ="height:90% " class="card">
      <img src="elite/alok.jfif"  style="width:100%">
      <div class="container">
      <p style ="font-size: 1.5rem;font-family:Poppins;"><p>
        <p class="title"></p>
        <p>BIST ME 2018</p>
        </div>
    </div>
  </div>
  <div class="col-md-4 item">
    <div class="card">
      <img src="elite/saurab.jfif"  style="width:100%">
      <div class="container">
        <p style ="font-size: 1.5rem;font-family:Poppins;">Saurabh Gupat</p>
        <p class="title">Manager SCM At TATA Projects</p>
        <p>BIST 2009 CSE </p>
        </div>
    </div>
  </div>
</div> -->


 <!-- Events Starts -->
  
            <div class="container mt-3 pt-2">
                <h4 class="text-center text-white">Upcoming Events</h4><br><br>
                <?php
                $event = $conn->query("SELECT * FROM events where date_format(schedule,'%Y-%m%-d') >= '".date('Y-m-d')."' order by unix_timestamp(schedule) asc");
                while($row = $event->fetch_assoc()):
                    $trans = get_html_translation_table(HTML_ENTITIES,ENT_QUOTES);
                    unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
                    $desc = strtr(html_entity_decode($row['content']),$trans);
                    $desc=str_replace(array("<li>","</li>"), array("",","), $desc);
                ?>
                <div class="card event-list" data-id="<?php echo $row['id'] ?>">
                     <div class='banner'>
                        <?php if(!empty($row['banner'])): ?>
                            <img src="admin/assets/uploads/<?php echo($row['banner']) ?>" alt="">
                        <?php endif; ?>
                    </div>
                    <div class="card-body">
                        <div class="row  align-items-center justify-content-center text-center h-100">
                            <div class="">
                                <h3><b class="filter-txt"><?php echo ucwords($row['title']) ?></b></h3>
                                <div><small><p><b><i class="fa fa-calendar"></i> <?php echo date("F d, Y h:i A",strtotime($row['schedule'])) ?></b></p></small></div>
                                <hr>
                                <larger class="truncate filter-txt"><?php echo strip_tags($desc) ?></larger>
                                <br>
                                <hr class="divider"  style="max-width: calc(80%)">
                                
                            </div>
                        </div>
                        

                    </div>
                </div>
                <br>
                <?php endwhile; ?>
                
            </div>


<script>
     $('.read_more').click(function(){
         location.href = "index.php?page=view_event&id="+$(this).attr('data-id')
     })
     $('.banner img').click(function(){
        viewer_modal($(this).attr('src'))
    })
    $('#filter').keyup(function(e){
        var filter = $(this).val()

        $('.card.event-list .filter-txt').each(function(){
            var txto = $(this).html();
            txt = txto
            if((txt.toLowerCase()).includes((filter.toLowerCase())) == true){
                $(this).closest('.card').toggle(true)
            }else{
                $(this).closest('.card').toggle(false)
               
            }
        })
    })
  
 
</script>