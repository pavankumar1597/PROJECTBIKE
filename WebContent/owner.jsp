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

<% customermodel cm = new customermodel(); 
HttpSession sessionlist = request.getSession();
ArrayList<customermodel> custpendlist = (ArrayList<customermodel>)sessionlist.getAttribute("listObject");
//ResultSet custdelivlist = (ResultSet)sessionlist.getAttribute("deliveredobj");
//ResultSet custdelivlist22 = (ResultSet)sessionlist.getAttribute("deliveredobj22");
ResultSet custdelivlist22,custdelivlist;
 String phone = (String)sessionlist.getAttribute("phnbown");
 String pswd = (String)sessionlist.getAttribute("opswd");
System.out.print(custpendlist);
 
ownermodel omOwnermodel = new ownermodel();


custdelivlist=omOwnermodel.delivered(phone);
custdelivlist22=omOwnermodel.delivered(phone);





 out.println(custpendlist.isEmpty());

 



%>








   <header >
  <nav class= "sticky" id="navbar" >
          <div class="row">
   
          <img src="resources/img/BULLEY.JPG" alt="royalpair logo-black" class="logo-black">   
        <div class="menu-bar">
              <ul class="main-nav">
                  <li  style="margin-left:5%; background-color: rgb(255, 167, 0); border-radius: 15%;"  ><a class="active" href="#">HOME</a></li>
            <li ><a href="#repair">MANAGE WORKSHOP </a></li>
                    <li><a href="#">NOTIFICATIONS</a></li>
              <li><a href="#links">EXPAND YOUR-BUSINESS</a></li>
             <li  id="login" ><a  class="dropbtn2"  href="#" style="background-color:  rgba(255, 165, 0, 0.71) ;color: azure; font-weight: 500; border-radius: 15%; float: left" id="login">Profile</a></li>   
               <li style=" transform: translate(2300% ,-120%);" ><i  style="display: none;" class="arrow-up "></i> </li> 
                  
              </ul>
              </div>
               <div  style="display: none;" class="login-form" >
              <form  action="logout">
                  <h6 style="padding:5px 0 5px 15px;  width: 100%; margin: 30px 0 5px 0  ; background-color:#b1bab3 ;  color: #fff ;font-size: 110%; ">USER-NAME</h6>
                  <lable style=" color:rgba(69, 69, 69, 0.8) ;font-size: 110%; margin-left: 60px;"></lable>
                  <h6 style="padding:5px 0 5px 13px;  width: 100%; margin: 30px 0 5px 0 ; background-color:#b1bab3 ;  color: #fff ;font-size: 110%; ">PHONE-NUMBER</h6>
                  <lable style=" color: rgba(69, 69, 69, 0.8) ;font-size: 110%; margin-left: 60px;"></lable>
                 
                     <input style="margin-top: 17px; width: 68%; height:15%; "type="submit" value="logout">
                  
                  </form>
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
            <div class="col span-1-of-3 box">
                                <h2>pickup-request</h2>
            
          <table STYLE="color:  #bcbc07;font-size: 110%;">
          
          
          
          
  <% for ( customermodel cmlist : custpendlist){     
 out.print(  "<tr> <td>"+ cmlist.getVnumber()+" </td> <td>   <a href='details?value="+ cmlist.getVnumber()+"' >click-here </a>   </td>   </tr>   ");  } %>

   
</table></div>
            
            
             <div  style="background-color:""" class="col span-1-of-3 box">
                <h2>Pending</h2>
             <table STYLE="color:  #f4490b; font-size: 110%;">
  <% while (custdelivlist.next()==true){     
 out.print(  "<tr> <td>"+ custdelivlist.getString(3)+" </td> <td>   <a href='details?value="+ custdelivlist.getString(3)+"' >click-here </a>   </td>   </tr>   ");  } 
  %>   
</table></div>
             <div class="col span-1-of-3 box">
           <h2>Dispatched</h2>   
               <table STYLE=" color:  #22a50a;font-size: 110%;">
 
    <% 
 ResultSet rset= cm.dispatch1(phone);
    while(rset.next()==true){     
 out.print(  "<tr> <td>"+ rset.getString(3)+" </td> <td>   <a href='details?value="+  rset.getString(3)+"' >click-here </a>   </td>   </tr>   ");  } %>
 
</table></div>
            </div>
            <section style="margin-top:3%; height:80vh;" id="repair">
            <h2>Manage-Your-Workshop</h2>
            
            <table STYLE="color:  #bcbc07;font-size: 110%;">
<tr>                   <td>Sl.no </td><td>PHONE-NUMBER </td><td>VEHICAL-NUMBER </td><td>MODEL</td><td>SERVICE-TYPE </td><td>MESSAGE </td><td>            </td>   </tr> 
 <% 
 
 
 int count =1;while (custdelivlist22.next()==true){   
	 System.out.print("sdfghjkl"+count);
 out.print(  "<tr><td>"+ count++ +" </td><td>"+ custdelivlist22.getString(2)+" </td><td>"+ custdelivlist22.getString(3)+" </td> <td>"+ custdelivlist22.getString(7)+" </td><td>"+ custdelivlist22.getString(8)+" </td><td>"+ custdelivlist22.getString(9)+" </td> <td>   <a href='dispatch?value="+  custdelivlist22.getString(3)+"' >click-here </a>   </td>   </tr>   ");  }
  System.out.print(count+"----111111111111111111111111111111111111111111111111111111111111111111111111111111111111");%>
   
</table>
            
            
            
            
            
            
            
            
            </section>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        </header>
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