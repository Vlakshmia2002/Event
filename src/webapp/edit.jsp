<!DOCTYPE html>
<%@page import="model.Student"%>
<%@page import="model.Registration"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EditForm</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <style>
        *{
    margin: 0;
    padding: 0;
   
}
.edit{
    background-image: url(assets/edit2.avif);           
   
    background-repeat: no-repeat;
    background-size: cover;   
   
    height: 600px;
   
    padding-top: 80px;
    margin-bottom: 100px;
    margin-top:30px;
    
 
   
}

form{
  
    display: block;
    margin-left: 550px;
    width: 400px;
    height: 400px;
    border: 1px solid;
    margin-top: 30px;
    padding: 20px;
    background-color: rgba(0,0,0,0.1);
    box-shadow: 0 0 10px black
    

}
form h1{
    text-align: center;
    margin-bottom: 10px;
    font-size: 24px;
    font-weight: bold;
}
label{
    font-size: 18px;
    font-weight: bold;
   
    
}
input{
    padding: 8px;
    width: 90%;
    margin: 5px 0 0 0;
    background: transparent;
    border: 1px solid black;
    color: white;
    
}
#ed{
    border: none;
    padding: 8px 30px;
    border-radius: 5px;
    margin-left: 120px;
    
    background-color:maroon;
}
#ed:hover{
    background-color:rgb(78, 2, 2);
    color: white;
}
#msg{
margin-top:30px;
text-align: center;
font-size: 25px;

font-weight: bold;
}


    </style>
</head>
<body>
    <%@include file="head.jsp"%>
  

 <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>

   
    <% if (session.getAttribute("uname") != null) {
        Registration reg = new Registration(session);
        Student s = reg.getInfo();%>
    <div class="edit">
       
        <form action='register' method='POST'>
            
            <h1>Edit Details</h1>
                   
          <label >Name</label><br>
          <input type="text" class="form-control"  name="name" value="<%=s.getName()%>"> <br>   
                  
                  
           <label >Phone Number</label><br>
            <input type="number" class="form-control"  name="pno" value="<%=s.getphone()%>"><br>
                 
                    
            <label >Email</label><br>
            <input type="email" class="form-control"  name="email" value="<%=s.getemail()%>"><br>
                 
             <button type="submit" class="btn btn-primary" name="submit" id="ed">Update</button>
               
            
        </form>
        <%}%> 
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
   