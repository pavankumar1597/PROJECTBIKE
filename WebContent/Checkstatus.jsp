<%@page import="java.sql.ResultSet"%>
<%@page import="model.customermodel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
    <meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/normalize.css">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/Grid%20(1).css">
        <link rel="stylesheet" type="text/css" href="vendors/CSS/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        
        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400&display=swap" type="text/css" rel="stylesheet">
        
     <style>
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

<% String vnumber = request.getParameter("vehiclenumber");  
ResultSet rsett;
customermodel cm =new customermodel();








%>

   <header >
  <nav class= "sticky" id="navbar" >
          <div class="row">
        
               <img src="resources/img/BULLEY.JPG" alt="royalpair logo-black" class="logo-black">   
        <div class="menu-bar">
              <ul class="main-nav">
                  <li ><a href="welcome.jsp">HOME</a></li>
              <li><a href="#mapp">OUR- LOCATIONS</a>
               
                  
                  
                  </li>
                  <li  style="background-color:  rgba(255, 165, 0, 0.71) ;color: azure"class="active"><a href="checkstatus.html">CHECK-STATUS</a></li>
            <li><a href="#work">HOW-DO-WE-WORK</a></li>
              <li><a href="link2.html">FOR-NEW-BUSINESS</a></li>
              <li><a href="#">CONTACT-US</a></li>
              
              </ul>
               
              </div>
   
              
 
              </div>
          
          </nav>
         <div class="row">
            
            <h2>D0N'T BUY SUPERBIKE &mdash; MAKE YOUR BIKE SUPER </h2>
            
            <p class ="long-copy">
         Check status of your vehicle by typing your vehicle number !
            </p>            
            </div>
           <div class="row " >
            <div class="box">
                                <h2>Your vehicle status</h2>
            
          <table STYLE="color:  #bcbc07;font-size: 110%;">
  
 
 <% String stripnum=cm.strip(vnumber);
 if(stripnum!=null)
 {  System.out.print(stripnum);
  rsett=(ResultSet)cm.check(stripnum);
  int count=1;
  if(rsett.next()){   
  out.print(  "<tr><td>sl.no</td><td> vehicle number</td><td>bike-model</td><td>location</td><td>garage name</td><td>status</td></tr><tr><td>"+ count++ +" </td><td>"+ rsett.getString(3)+" </td><td>"+ rsett.getString(7)+" </td> <td>"+ rsett.getString(6)+" </td><td>"+ rsett.getString(8)+" </td><td>"+ rsett.getString(10)+" </td>    </tr>   ");  }
  else{
	  
	  out.print( "<h3>data not present</h3>" );
 	
 }}
 else{
	 out.print(  "<h3> In valid vehical number format ,click CHECK-STATUS to enter again</3>");}
 
 // System.out.print(count+"----111111111111111111111111111111111111111111111111111111111111111111111111111111111111");%>
 
 
 
  
    
    
    
    
    
    
 
    
    
    
    
</table></div>
            
            
 
            
          </div> </header>
                     
    
    </body>
</html>