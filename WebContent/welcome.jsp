<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>--->
<DOCTYPE html>
    <html>
    <head>
    <meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/normalize.css">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/Grid%20(1).css">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        
        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400&display=swap" type="text/css" rel="stylesheet">
        <title>ROYALPAIR</title>
         <script type="text/javascript" src="./lib/jquery-3.3.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style type="text/css">
    
    
    .login-form{
        position: absolute;
        width :250px;
        height :250px;
        background-color: #f5eeee ;
         transform: translate(430% ,-4%);
    border-radius: 20px;
    border-bottom: 5px solid gray;}
    
    
    
    
    .arrow-up{
        width: 0;
        height: 0;
        border-left: 20px solid transparent;
         border-right: 20px solid transparent;
        border-bottom: 20px solid #fff;
     transform: translate(-100% ,0%);
    }
    .h33{
        margin-left: 130px;
    }
   
   .bullet-text-box{
        z-index: 1;
    }
.matchbox{
     transform: translate(103% ,-25%);
    

   width:90%;
    margin-left: 30%;
  margin-top: 30%;
    overflow: hidden;}


* {box-sizing: border-box}
body {font-family:LOTO;
     margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width:90%;
  position: relative;
  margin-left;20px; 
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 2px;
  margin-top: -22px;
  color: orange;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}
    
    
    

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}
.logo-youtube{
    color: aqua;
}
.b12{
    color: #ff0000;
    padding-right :20px;
}
/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  
  
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px,
    }
}</style>







        </head>
    <body>
    <%   HttpSession sesssion = request.getSession();
    String unumb = (String)sesssion.getAttribute("name");
    String uname=(String)sesssion.getAttribute("unumb");   %>
         
      <header>
           <nav class="sticky" id="navbar" >
          <div class="row">
          <img src="resources/img/BULLEY.JPG" alt="royalpair logo" class="logo-black">   
        <div class="menu-bar">
              <ul class="main-nav">
                  <li ><a href="#">HOME</a></li>
              <li><a href="#mapp">OUR- LOCATIONS</a>
               
                  
                  
                  </li>
                  <li><a href="checkstatus.html">CHECK-STATUS</a></li>
            <li><a href="#work">HOW-DO-WE-WORK</a></li>
              <li><a href="link2.html">FOR-NEW-BUSINESS</a></li>
              <li><a href="#">CONTACT-US</a></li>
               <li  id="login" ><a  class="dropbtn2"  href="#" style="background-color:  rgba(255, 165, 0, 0.71) ;color: azure; font-weight: 500; border-radius: 15%; float: left" id="login">Account</a></li>   
               <li style=" transform: translate(2300% ,-120%);" ><i  style="display: none;" class="arrow-up "></i> </li>  
              </ul>
               
              </div>
   
              <div  style="display: none;" class="login-form" >
              <form  action="bulletbike.html">
                  <h6 style="padding:5px 0 5px 15px;  width: 100%; margin: 30px 0 5px 0  ; background-color:#b1bab3 ;  color: #fff ;font-size: 110%; ">USER-NAME</h6>
                  <lable style=" color:rgba(69, 69, 69, 0.8) ;font-size: 110%; margin-left: 60px;"><% out.print(unumb) ;%></lable>
                  <h6 style="padding:5px 0 5px 13px;  width: 100%; margin: 30px 0 5px 0 ; background-color:#b1bab3 ;  color: #fff ;font-size: 110%; ">PHONE-NUMBER</h6>
                  <lable style=" color: rgba(69, 69, 69, 0.8) ;font-size: 110%; margin-left: 60px;"><% out.print(uname) ;%></lable>
                 
                  <input style="margin-top: 17px;margin-left: 40px; width: 68%; height:15%; "type="submit" value="logout"> <a href="bulletbike.html"></a></input>
                  
                  </form>
              </div>
 
              </div>
          
          </nav>
          <div>
        <div class=" col span-1-of-2 bullet-text-box">
           <h1 > <div class="motorcycle">MOTORCYCLE.</div>
               IT WAS MY LOVE AT FIRST RIDE!!!</h1>
            
          <a class="btn btn-full"  href="customerpage.html" >Book service</a>
            <a class="btn btn-ghost" href="ownerlogin.html" >link-Garage</a>
          </div >
             
                <div class="col span-1-of-2 steps-box">
            
                    <div class="row matchbox">          
                        <div class="h33">
                        <h2 style="color: #ffe200 ; ">NOTICE-BOARD!!!<i class="fa fa-youtube-play" aria-hidden="true"></i> </h2>  </div>  
                    
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="resources/img/offer.jpg" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="resources/img/slide3.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="resources/img/slide1.jpg"style="width:100%">
  <div class="text">Caption Three</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    </div> 
                    </div>
          
              
          </div>
        </header>
         <section id="mapp"class="section-map" style="padding-bottom: 20px; background-color:rgb(234, 234, 234) ">
        
        
          
   <h2 style="padding-top: 80px;"> Find our Garage location here </h2>
    
    
  <div  style="transform: translate(90% ,5% );width: 500px; height: 300px; "></div>

  <script type="text/javascript">
    var locations = [
      ['jalahalli-royalpair', 13.063100, 77.535332, 4],
      ['vijaynagar-royalpair', 12.976750, 77.575280, 5],
      ['biec-royalpair', 13.058790, 77.460806, 3],
      ['sjbit-royalpair', 12.899407, 77.496153, 2],
      ['Maroubra Beach', 12.990058, 77.552490, 1]
    ];

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
      center: new google.maps.LatLng(13.063100, 77.535332),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
  </script>
       
            
           
            
            
         </section>       
               
               
     <section id="work" class="section-feature" style="margin-top:80px;">
        <div class="row">
            
            <h2>D0N'T BUY SUPERBIKE &mdash; MAKE YOUR BIKE SUPER </h2>
            
            <p class ="long-copy">
            Hello, we  are Royalpair, your new premium online Bike-Garage service. We know you are always busy. No time for taking care on your altruistic vehicle. So let us take care of that, we are really good at it.We are not exhibitionist ,so get started!
            </p>            
            </div>
            
        <div class="row " >
            <div class="col span-1-of-4 box">
                <i class="ion-android-done-all big-icon b1"></i>
            <h3> Experience to get Mesmorised</h3> 
                <p>You're very near to the Revolution!.GET Exclusive offers on servicing your bike , we pick your vehicle and deliver right to your home. We are new here to bring a change to ensure that you're 100% happy.
                </p></div>
            
            
             <div class="col span-1-of-4 box">
                <i class="ion-android-bicycle big-icon b2"></i>
            <h3>Making you'r life Easier</h3> 
                <p> We really mean that. Our RoyalPair works up to 365 days/year coverage. You just inform us to service vehicle ,we pick it and make repairs in your near RoyalPair-workshop .By checking the review of garage performance you can choose your near by RoyalPair and book the slot. Just experience for 1 time and get Mesmorised!!! 
                </p></div>
            
            
            
             <div class="col span-1-of-4 box">
            <i class="ion-cash big-icon b3"></i>    
            <h3>Get value for your Money.</h3> 
                <p>Never fear again!.All our business partners are Trained-Specialist, Experienced only. We provide Excellient Service for Bikes of 2-Reputed Major catogory. So now its a safest place to repair your vehicle. Only for the purpose of your Experience we wish you to get your Service!!!  </p></div>
            
            
             <div class="col span-1-of-4 box">
                <i class="ion-ios-people big-icon b4"></i>
            <h3>Linking-Garage(For Business)</h3> 
                <p>We don't limit your creativity, which means you can fix any vehicle that you like to repair.Before linking up your make sure your are an Experienced-hand for atleast 2.5 years.

                </p></div>
            </div>
    </section>
        
        <section class ="section-form">
        <div class ="row">
    <h2>WE ARE HAPPY TO HEAR YOU FROM </h2>
            </div>
        <div class ="row">
            <form method="post" action="director" class="contact-form">      
            <div class="row">
                <div class="col span-1-of-3">
                <lable for="name"  >Name</lable>
                
                </div>
                <div class="col span-2-of-3">
                
                <input type="text" name="name" id="name"    placeholder ="your-name" required>
                </div>
        </div>   
            
             <div class="row">
                <div class="col span-1-of-3">
                <lable for="points">points out of 10</lable>
                
                </div>
                <div class="col span-2-of-3">
                
                <input type="point" name="point" id="e-mail"  placeholder="your e-mail" required>
                </div>
        </div> 
            
             <div class="row">
                <div class="col span-1-of-3">
                <lable for="find-us">how do you find us</lable>
                
                </div>
                <div class="col span-2-of-3">
                
                    <select name="find-us" id="find-us"> 
                    <option value="Friends"> Friends  </option>  
                    <option value="search" selected> search engine  </option> 
                     <option value="ad"> ads  </option> 
                  <option value="contact" > search engine  </option>  
                        <option value="other"> other  </option> 
                        </select> </div>
        </div> 
            
            
            
             <div class="row">
                <div class="col span-1-of-3">
                <lable>news letter</lable>
                
                </div>
                <div class="col span-2-of-3">
                
                <input type="checkbox" name="news" id="news" checked>yes please
                </div>
        </div>
                
                <div class="row">
                <div class="col span-1-of-3">
                <lable>drop us a line</lable>
                
                </div>
                <div class="col span-2-of-3">
                
                <textarea name="message" placeholder="your message"></textarea>
                </div>
        </div>
              
                <div class="row">
                <div class="col span-1-of-3">
                <lable>&nbsp;</lable>
                
                </div>
                <div class="col span-2-of-3">
                 <input type="submit" value="place a slot">yes please
              
                </div>
        </div>
            
            
            
            
            </form>
            
</div></section>
        
        
        <section class="section-meals">
        <ul class="meals-shocase clearfix">
            <li>
            <figure  class="meal-photo">
                 <img src="resources/img/picture4.jpg" alt="Korean bibimbap with egg and vegetables">
                
                </figure >
            </li><li>
            <figure  class="meal-photo">
                 <img src="resources/img/picture2.jpg" alt="Korean bibimbap with egg and vegetables">
                
                </figure >
            </li>
             <li>
            <figure class="meal-photo">
                 <img src="resources/img/picture3.jpg" alt="Korean bibimbap with egg and vegetables">
                
                </figure>
            </li>
             <li>
            <figure class="meal-photo">
                 <img src="resources/img/picture 6.jpg" alt="Korean bibimbap with egg and vegetables">
                
                </figure>
            </li>
            </ul>
            
             <ul class="meals-shocase clearfix">
           
             <li>
            <figure class="meal-photo">
                 <img src="resources/img/picture5.jpg" alt="Korean bibimbap with egg and vegetables">
                
                </figure>
            </li>
             <li>
            <figure class="meal-photo">
                 <img src="resources/img/picture7.jpg" alt="Korean bibimbap with egg and vegetables">
                
                </figure>
            </li>
             <li>
            <figure class="meal-photo">
                 <img src="resources/img/picture 3.jpg" alt="Korean bibimbap with egg and vegetables">
                
               
                
                </figure>
            </li>
                 <li><figure class="meal-photo">
                 <img src="resources/img/picture8.jpg" alt="Korean bibimbap with egg and vegetables">
                           </figure> </li></ul>
          
        
        </section>
        
          
        
        <section class="sections-steps">
        
        <div class="row">
            <h2> How it works &mdash; Simple as 1, 2, 3
         </h2>
            </div>
            
            <div class="row">
            <div class="col span-1-of-2 steps-box">
                <img src="resources/img/app-iPhone.png" alt="royalpair app on i phone"
                class="appscreen">
                </div>
            <div class="col span-1-of-2 steps-box">
            
                <div class="works-step">
                <div>1</div>
                    <p>	Just enter you'r location for near by garage or select a garage of good rating and book the slot . </p>
                      </div>
                 <div class="works-step">
                     <div>2</div>
                    <p>	Order your slot using our  website. Or you can even call us! .or you can bring to us.</p>
                     </div> 
                 <div class="works-step">
                     <div>3</div>
                    <p>	After the service you'll get a message, now you can collect the vehicle and get lot of discounts for the further services. </p>
                  </div> 
                <a href="#" class="btn-app" >
                <img src="resources/img/download-app.svg" alt="link google-play">
                </a>
                <a href="#" class="btn-app" >
                <img src="resources/img/download-app-android.png" alt="link google-play">
                </a>
                  </div>
            </div>
            
     
        
        </section>
        
    
        <section class="testomonial">
        
        <div class="row">
        <h2>Our customers's cant leave with out Us.</h2>
        
        <div class="col span-1-of-3 boxing ">
            <blockquote>
            ROYAL-PAIR is just awesome ! it's  so helpful in this bust world ,they may be small now but their customer's interactions are in god level ,this concepts make them grow big. All the best. 
                <cite><img src="resources/img/customer-1.jpg"> pavan kumar n</cite>
            </blockquote>
            </div>
            
         <div class="col span-1-of-3 boxing">
            <blockquote>
            Inexpensive, hardworking and great-punchuality , 
                delivered right to my home. We have lots of good responce  here ,
                but no one comes even close to Royalpair. Me and my friends are so in love!

                <cite><img src="resources/img/customer-2.jpg"> pavan kumar n</cite>
            </blockquote></div>     
             <div class="col span-1-of-3 boxing">
            <blockquote>
            I was looking for a quick and trusted bike service in bangalore. I tried a lot of them and ended up with the Adorable royal-pair. Best bike  service and delivery in the market. Keep up the great work guys!
                <cite><img src="resources/img/customer-3.jpg"> pavan kumar n</cite>
                 </blockquote>                                                     </div>
        
      </div>
        </section>
   <script >
       var x =document.getElementById("login");
       var y =document.getElementById("register");
       var z =document.getElementById("btn");
               
     function login(){
              x.style.left="50px";
              y.style.left="450px";
              z.style.left="0px";
       }
       function register(){
             x.style.left="-400px";
              y.style.left="50px";
              z.style.left="110px";
       }
      
       </script>
       
       
       <script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script>
function myFunction1() {
  var x = document.getElementById("myInput1");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script>
function myFunction2() {
  var x = document.getElementById("myInput2");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
        
        
    <script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
        <script type="text/javascript">

          $(document).ready(function(){
         var arrow= $(".arrow-up");
         var form= $(".login-form");    
          var status=false; 
            $("#login").click(function(event){
                
                event.preventDefault();
                if(status ==false){
                    arrow.fadeIn();
                    form.fadeIn();
                    status = true;
                }
                else{
                     arrow.fadeOut();
                    form.fadeOut();
                    status = false;
                }
                
            })})  
     
</script>
       
        </body> 
 
    </html>