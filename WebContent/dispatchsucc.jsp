




<%@page import="controller.owner"%>
<%@page import="model.ownermodel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.catalina.filters.AddDefaultCharsetFilter.ResponseWrapper,model.customermodel,model.mainmodel,java.util.ArrayList"%>
<html>
    <head>
    <meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/normalize.css">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/Grid%20(1).css">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        
        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400&display=swap" type="text/css" rel="stylesheet">
                 <script type="text/javascript" src="./lib/jquery-3.3.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <style>
       
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
       table, th, td {
  border: 1px solid rgba(152, 148, 144, 0.31);
  border-collapse: collapse;
}  
         
         
         
         th, td {
  padding: 15px;
  text-align: left;
         font-size: 90%;

}
         table {
  width:80%;
    margin-left: 10%;
    background-color: rgba(255, 255, 255, 0.92);
}
         table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: #f0f0e6;
  color: white;
}
         
         
         .box{
            background-color: #f0f0e6;  
             border-radius: 5%;
         
         }
        
         table{
             
             
         }
        
         .long-copy{
            color: rgb(255, 167, 0);
            font:Lato;
             border-radius:2%;
             font-size: 200%;
             font-weight: 600;
               margin-top: 80px;
             margin-bottom: 30px;
         
         } 
         
         
         
         
       
header{
    background-image:url(images/garage3.jpg);
    background-position: center;
 background-size: cover;
    height: 100vh;
     background-attachment: fixed;

}       
        
        </style>
    </head>
<body>

<% HttpSession sessin  = request.getSession();
String nb =(String)sessin.getAttribute("vehicalnb"); 

String phone = (String)sessin.getAttribute("phnbown");
String pswd = (String)sessin.getAttribute("opswd");



%>
 


   <header >
  <nav class= "sticky" id="navbar" >
          <div class="row">
   
          <img src="resources/img/BULLEY.JPG" alt="royalpair logo-black" class="logo-black">   
        <div class="menu-bar">
              <ul class="main-nav">
                  <li  style="margin-left:5%; background-color: rgb(255, 167, 0); border-radius: 15%;"  ><a class="active" href="#">HOME</a></li>
            <li ><a href="detaildispatch.jsp">MANAGE WORKSHOP </a></li>
                    <li><a href="#">NOTIFICATIONS</a></li>
              <li><a href="#links">EXPAND YOUR-BUSINESS</a></li>
                
              </ul>
              </div>
          
              
              </div>
   
              
 
              </div>
          
          </nav>
         <div class="row">
            
            <h2>D0N'T BUY SUPERBIKE &mdash; MAKE YOUR BIKE SUPER </h2>
            
            <p class ="long-copy">
           If you really look closely, most overnight successes took a long time. <em>&mdash;Steve Jobs</em>
            </p>            
            </div>
           <div class="row " >
            <div class=" box">
               
               

                                <h2>delivered successful</h2>
                                
<h3>The bike  <strong style="color:green;"><% out.print(nb); %></strong> successfully Dispatched and you earned 7 coins.<h3>
<a href="owner.jsp">back to page</a>













         </div>
            </div>
            
            
            
                
 
    </body>
</html>






