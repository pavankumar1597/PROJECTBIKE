<%@page import="model.customermodel,java.util.Enumeration"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>     <link rel="stylesheet" type="text/css" href="resources/css/customer.css">  
<style>
       
     
.butbox2{
      width: 220px;
     
    float: left;
        margin-left: 600px;
    }
.butbox1{
      width: 220px;
   
    float: left;
        margin-left: 150px;
    }
 
table {
  width:80%;
    margin-left: 20%;
   background-color:
  
        rgba(255, 255, 0, 0.35);
}
table, th, td {
  border: 1px solid #ffd00a;
  border-collapse: collapse;
}
th, td {
 margin-left: 20%;
  padding: 10px;
  text-align: left;
}
table#t01 tr:nth-child(even) {
  background-color: rgba(255, 77, 77, 0.41);
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: #ffff0d;
  color: white;
}
button{
     display: inline-block;
    padding: 10px 30px;
    font-weight: 400;
    text-decoration: none;
    border-radius: 600px;
    color: #fff;
    transition: background-color .2s,border 0.2s,color 0.2s;}
button:hover{
    background-color: rgba(181, 170, 170, 0.7); 
     color :#fff;
}
</style>
</head>
<body style="background-color: rgba(255, 255, 255, 0.88);">


<h2 style="margin-left:35%;color:  #07ba31;font-size: 220%;">Pickup Request Successfully Sent!!</h2>
<%!String  name,vnumber,contact_info,location,nearby,pickup,service_type,model,message;
int price,disc,newprice; %>



<%
response.setContentType("text/HTML");
HttpSession sesion = request.getSession();
name= (String)sesion.getAttribute("name");
vnumber=(String)sesion.getAttribute("vnumber");
contact_info=(String)sesion.getAttribute("contact_info");
location=(String)sesion.getAttribute("location");
nearby=(String)sesion.getAttribute("nearby");
pickup=(String)sesion.getAttribute("pickup");
service_type=(String)sesion.getAttribute("service_type");
model=(String)sesion.getAttribute("model");
message=(String)sesion.getAttribute("message");
price=(Integer)sesion.getAttribute("price");
request.setAttribute("VEHICAL_no", vnumber);





%>
<table STYLE=" margin-left: 10%; font-style:lato; font-size: 120%;">

  <tr>
    <th></th>
    <th>Details</th> 
    
  </tr>
  <tr>
    <td>Full_Name</td>
    <td><% out.print(name); %></td>
   
  </tr>
  <tr>
    <td>Phone-Number</td>
    <td><% out.print(contact_info); %></td>
   
  </tr>
  <tr>
    <td>Vehical-Number.</td>
    <td><% out.print(vnumber); %></td>
   
  </tr>
    <tr>
    <td>Location</td>
    <td><% out.print(location); %></td>
    
  </tr>
    <tr>
    <td>Your Nearby</td>
    <td><% out.print(nearby); %></td>
    
  </tr>
    <tr>
    <td>Pickup Address</td>
    <td><% out.print(pickup); %></td>
    
  </tr>
    <tr>
    <td>Selected Bike Model</td>
    <td><% out.print(model); %></td>
    
  </tr>
     <tr>
    <td>SERVICE-TYPE</td>
    <td><% out.print(service_type); %></td>
   
  </tr>
    
    </tr>
     <tr>
    <td>EStimated Price (Price - 5% Disc = Total) </td>
    <td><% out.print(price+"-"+(price*5/100)+" = <strong> "+(price-(price*5/100))+"&#x20b9;</strong>"); %></td>
   
  </tr>
    
    
</table>
<br>








  <div class="badbut">
    <div class= "col span-1-of-2 butbox1">
    <a  style=" "href="welcome.jsp" ><button style="color:black ">continue with the page...

</button></a>
    </div>
    
    <div class= "col span-1-of-2 butbox2">
    
  <form method="post" action="cancel" >
    <input type="submit" class="btn btn-full"  value="cancel pickup-request"></form>
    
    </div>
</div>

</body>
</html>
