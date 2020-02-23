<%@page import="java.sql.ResultSet"%>
<%@page import="model.customermodel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<h1>WE ARE THE LOCOMOTIVE FOR THE LOCOMOTIVE</h1>
<table STYLE="color:  #bcbc07;font-size: 110%;">
<tr> <td>FULL-NAME </td><td>PHONE-NUMBER </td><td>VEHICAL-NUMBER </td><td>LOCATION</td><td>PICKUP </td><td>NEARBY </td><td>   </td>   </tr> 
<% 
customermodel mod =new customermodel();
ResultSet rset = (ResultSet)mod.alldispatchrequest();

while(rset.next()==true){
	out.print(  "<tr> <td>"+ rset.getString(1)+" </td><td>"+ rset.getString(2)+" </td><td>"+ rset.getString(3)+" </td><td>"+ rset.getString(7)+" </td><td>"+ rset.getString(8)+" </td><td>"+ rset.getString(9)+" </td><td> <a href='delivered?value="+ rset.getString(3)+"'> DONE</a>   </td>   </tr>   ");  
	}
	     




%>





</table>
</body>
</html>