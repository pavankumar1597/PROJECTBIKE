
<%@page import="java.io.PrintWriter"%>
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
<body >



   <header >
   
   
   
   
  <nav class= "sticky" id="navbar" >
          <div class="row">
        
               <img src="resources/img/BULLEY.JPG" alt="royalpair logo-black" class="logo-black">   
        <div class="menu-bar">
              <ul class="main-nav">
                  <li ><a class="active" href="#">HOME</a></li>
              <li><a href="#"></a>
                
                  
                  
                  </li>
                   <li><a href="#">NOTIFICATIONS</a></li>
            <li><a href="#work">HOW-DO-WE-WORK</a></li>
              <li><a href="#links">FOR-BUSINESS</a></li>
              <li><a href="#">Feedback</a></li>  </ul>
              
              </div>
   
              
 
              </div>
          
          </nav>
         <div class="row">
            
            <h2>D0N'T BUY SUPERBIKE &mdash; MAKE YOUR BIKE SUPER </h2>

<%!String  name,vnumber,contact_info,location,nearby,pickup,service_type,model,message;
 %>
    <%

HttpSession sssion =request.getSession();
String 	name, contact_info, vnumber, model, service_type, message ;
name =(String) sssion.getAttribute("name");
contact_info = (String)sssion.getAttribute("contact_info");
vnumber =(String)sssion.getAttribute("vnumber");
model =(String)sssion.getAttribute("model");
service_type =(String)sssion.getAttribute("service_type");
message =(String)sssion.getAttribute("message");





%>
            
                     
            </div>
           <div class="row " >

            
             <div  style="background-color:""" class=" box">
                <h2>Pending</h2>
             <table STYLE="color:  #f4490b; font-size: 110%;">
  <tr>
    <th></th>
    <th>DETAILS</th> 
    
  </tr>
  <tr>
    <td>FULL-NAME</td>
    <td><% out.print(name); %></td>
   
  </tr>
  <tr>
    <td>CONTACT-INFO</td>
    <td><% out.print(contact_info); %></td>
   
  </tr>
  <tr>
    <td>VEHICLE-NUMBER.</td>
    <td><% out.print(vnumber); %></td>
   
  </tr>
   
    <tr>
    <td>SELECTED BIKE MODEL</td>
    <td><% out.print(model); %></td>
    
  </tr>
     <tr>
    <td>SERVICE TYPE</td>
    <td><% out.print(service_type); %></td>
   
  </tr>
  
   <tr>
    <td>MESSAGE</td>
    <td><% out.print(message); %></td>
   
  </tr>
    
</table>
<br></div>
            
           </div> 
    
    

  <div class="badbut">
   
    
    <div class= "col span-1-of-2 butbox2">
    
  <form method="post" action="owner.jsp" >
    <input type="submit" class="btn btn-full"  value="BACK"></form>
    
    </div>
</div>
    
    
    </header>
                     
    
    </body>
</html>















































































































































