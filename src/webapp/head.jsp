<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
    
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family:'Poppins',sans-serif;
}
nav{
    display: flex;
    width: 100%;
    align-items: center;
    flex-wrap: flex;
    padding: 10px 100px;
   height: 100px;
   box-shadow: 0 0 10px black;
  
    
}
.logo{
    width: 120px;
   cursor: pointer;
   
    
}
nav ul{
    flex: 1;
    text-align: right;
    padding-right: 30px;
}
nav ul li{
    display: inline-block;
    list-style: none;
    margin: 10px 30px;
   
    
}
nav ul li a{
    font-size: 18px;
    color: black;
   text-decoration: none;
   position: relative;
   font-weight: bold;
}
nav ul li a:hover{
    color:rgb(224, 69, 17) ;
}

nav ul li a::after{
    content: '';
    width: 0;
    height: 3px;
    position: absolute;
    bottom: -5px;
    left: 50%;
    
    transform: translateX(-50%);
    background: rgb(224, 69, 17);
    transition: width 0.3s;
    
}
nav ul li a:hover::after{
    width: 100%;
    
    

}
#btn {
font-weight: bold;
}
    </style>
</head>
<body>
    <nav>
        <img src="assets/logo.jpg" alt="" class="logo">
        <ul>
        <% if (session.getAttribute("uname") != null) {%>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>                           
            <li><a href="#ev" >Events</a></li>
            
            <li><a href="contact.jsp">Contact</a></li>
            
            <li><a href="#"><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i><%=session.getAttribute("uname")%></a></li>
            <li><div class="dropdown">
              <button class="btn btn-#fff dropdown-toggle " type="button" data-bs-toggle="dropdown" aria-expanded="false" id="btn">
                Setting
              </button>
              <ul class="dropdown-menu">
               <% if (session.getAttribute("id").equals("110011")) {%>
              
               <li><a class="dropdown-item"   href="addev.jsp">Add Event</a></li>
               <li><a class="dropdown-item" href="bookedEvents.jsp">Booked Events</a></li>
               
               <li><a class="dropdown-item" href="ViewClients.jsp">View Clients</a></li>
               <li><a  class="dropdown-item" href="viewReview.jsp" >ViewReview</a></li>
                <%}%>
                <li><a class="dropdown-item" href="Eventstatus.jsp">Status</a></li>
                <li><a class="dropdown-item" href="reset.jsp">Reset Password</a></li>  <!-- class="dropdown-item" -->
                <li><a class="dropdown-item" href="edit.jsp">Edit Details</a></li>
                <li><a  class="dropdown-item" href="rateus.jsp" >RateUs</a></li>
                <li><a class="dropdown-item" href="register?logout=yes">Logout</a></li>
                
                </ul>
                 <%}
                  else {%>
                 <li><a href="home.jsp">Home</a></li>
                  <li><a href="about.jsp">About</a></li>                           
            <li><a href="#ev" >Events</a></li>
            <li><a href="contact.jsp">Contact</a></li>
                   <li><a href="signup.jsp">Register</a></li>
                  <li><a href="login.jsp">Login</a></li>
             <%}%>
             
            
              
            </div></li>
        </ul>
        
    </nav>
</body>
</html>