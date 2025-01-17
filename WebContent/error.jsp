<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
        
          <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
  <title>Google Maps Multiple Markers</title> 
  <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>
        </head>
    <body>
         
      <header >
                    
                  <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close"> &times;</span>
    <p style="color: black; ">LOGIN before access</p>
  </div>

</div>
        <nav class= "sticky" id="navbar" >
          <div class="row">
        
               <img src="resources/img/BULLEY.JPG" alt="royalpair logo-black" class="logo-black">   
        <div class="menu-bar">
              <ul class="main-nav">
                  <li ><a class="active" href="#">HOME</a></li>
              <li><a href="#"></a>
                
                  
                  
                  </li>
                   <li><a href="#mapp">OUR-LOCATIONS</a></li>
            <li><a href="#work">HOW-DO-WE-WORK</a></li>
              <li><a href="ownerlogin.html">FOR-BUSINESS</a></li>
              <li><a href="#fb">Feedback</a></li>
                  
              </ul>
              
              </div>
   
              
 
              </div>
          
          </nav>
          <div >
        <div style="z-index: 1" class=" col span-1-of-2 bullet-text-box">
           <h1> <div class="motorcycle">MOTORCYCLE.</div>
               IT WAS MY LOVE AT FIRST RIDE!!!</h1>
            
          <a class="btn btn-full "  id="myBtn" href="#" >Book service</a>
            <a class="btn btn-ghost js--scroll-to-plans" href="ownerlogin.html" >link-Garage</a>
            
     </div >
              <div class=" col span-1-of-2 bullet-text-box match">
              
              
              <div class="button-box">
                  <div id="btn"></div>
                  <button type="button" class="active toggle-btn  " onclick="login()">LOG-IN</button>
                  
                     <button type="button" class="toggle-btn " onclick="register()" > REGISTER</button>
   
                  </div>
              
              
              
              <div class="social-icons">
                  <i class="ion-social-facebook bad-icon b11"></i> 
                  <i class="ion-social-twitter bad-icon b12"></i>
                  <i class="ion-social-pinterest bad-icon b13"></i>
                   <i class="ion-social-googleplus bad-icon b14"></i>
              </div>
                  <form id="login"action="login" method="post" class="input-group1 active ">
                  <input type="text" name="cemail"  class="input-field" placeholder="User-id" required>
                  <input type="text" name="cpswd" class="input-field" placeholder="Enter password" required><br>
                  <h4 style="color:red;"> Email-id or PhoneNumber has already exist.</h3>
                      <input type="checkbox"   class="check-box" ><span>Remember-password</span>
                      <button type="submit" name="submit" class="submit-btn">login</button>
                  </form>
       <form   action="registering" method="post" id="register" class="input-group2">
     <input type="text" name="name"  class="input-field" placeholder="User-name" required>
     <input type="email"  name="email" class="input-field" placeholder="Email-id" required>
     <input type="text"   name="phnb"  class="input-field" oninvalid="alert('Phonenumber should be valid');" pattern="(?=.*\d).{10}" placeholder="phonenumber" required>
     <input type="text" name="enpass" class="input-field"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{10,}" title="Must contain at least 10 characters with one number , one uppercase and lowercase letters" placeholder="Enter password" required>
     <input type="checkbox" name="accept"   value="true" class="check-box" checked ><span>aggred to the terms and condition</span>
     <button type="submit"   name="submit" class="submit-btn">Register</button>
                  </form>
                  
              </div>
          
              
          </div>
          
          
     
          
          
          
          
          
        </header>
                            
               
        <section id="mapp"class="section-map" style="padding-bottom: 20px; background-color:rgb(234, 234, 234) ">
        
        
          
   <h2 style="padding-top: 80px;"> Find our Garage location here </h2>
    
    
  <div  style="transform: translate(90% ,5% );width: 500px; height: 400px; "></div>

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
               
               
               
                         
        
        
   
        
     
        <section class="section-features" id="work">
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
        
        <section class ="section-form js--section-start "id="fb">
        <div class ="row">
    <h2>PROVIDE VALUE THE CUSTOMERS,GET KNOWN BY MANY.. </h2>
            </div>
        <div class ="row">
            <form method="post" action="#" class="contact-form">      
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
        
        
        <section class="section-meals" >
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
        
          
        
        <section class="sections-steps" id="works">
        
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
                <a href="wwww.appstore.com" class="btn-app" >
                <img src="resources/img/download-app.svg" alt="link google-play">
                </a>
                <a href="www.googleplay" class="btn-app" >
                <img src="resources/img/download-app-android.png" alt="link google-play">
                </a>
                  </div>
            </div>
            
     
        
        </section>
        
    
        <section class="testomonial" >
        
        <div class="row">
        <h2>Our customers's can't leave with out Us.</h2>
        
        <div class="col span-1-of-3 boxing ">
            <blockquote>
            ROYAL-PAIR is just awesome ! it's  so helpful in this bust world ,they may be small now but their customer's interactions are in god level ,this concepts make them grow big. All the best. 
                <cite><img src="resources/img/customer-1.jpg"> pavan kumar n</cite>
            </blockquote>
            </div>
            
         <div class="col span-1-of-3 boxing">
            <blockquote>
            Inexpensive, hard working and great-punchuality , 
                delivered right to my home. We have lots of good response  here ,
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
              y.style.left="-350px";
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
    $(document).ready(function(){   
       $('.js--scroll-to-plans').click(function(){
       $('html,body').animate({scrollTop:$('.js--section-start').offset().top},1000);    
           
       });
    
    $('a[href*="#"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#0"]')
  .click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
      && 
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000, function() {
          // Callback after animation
          // Must change focus!
          var $target = $(target);
          $target.focus();
          if ($target.is(":focus")) { // Checking if the target was focused
            return false;
          } else {
            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
            $target.focus(); // Set focus again
          };
        });
      }
    }
  });
    
    
    });
        
        
        
        </script>
        
        
        
        
        
        
        <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

       
       
        </body> 
 
    </html>