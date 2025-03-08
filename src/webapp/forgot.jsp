<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
   
    <style>
        *{
    margin: 0;
    padding: 0;

}
.for{
    margin-top: 40px;
    width: 100%;
    height: 500px;
    display: flex;
    justify-content: center;
    align-items: center;
     background-repeat: no-repeat;
            background-size: cover;
             background-image: url(assets/pass.jpg);
   
}



#msg
{
    background: green;
    color:black;
    border: 1px solid green;
    width:24%;
    font-weight: bold;
    font-size: 25px;
    padding: 5px;
    width: 100%;
    text-align: center;
    margin: 15px 0;
}
form{
    width: 450px;
    height: 450px;
    border: 1px solid black;
    padding: 40px 40px;
    box-shadow: 0 0 10px black;
    background-color: rgba(0,0,0,0.1);
}
form h3{
    text-align: center;
    font-weight: 800;
    color:blue;
    font-size: 24px;
   
}
form h3{
    margin-bottom: 15px;
}
label{
margin-top:10px;
    font-size: 16px;
    font-weight:600;
    display: block;
    color:white;
   
   
}
input{
    padding: 7px;
    width: 90%;
    border: 2px solid black;
    outline: none;
   background-color:rgba(0,0,0,0.5);
    color:white;
      
   
}




#for{
    padding: 10px 30px;
    margin-left: 50px;
    margin-top: 30px;
    border: none;
    border-radius: 10px;
    background-color:green;
    color: black;
    
}
#for a{
    text-decoration: none;
    color: black;
}

#for:hover{
    background-color: rgb(62, 156, 62);
    
}
#for a:hover{
    background-color: rgb(62, 156, 62);
   

}
.error{
    color:red;
   
}

    </style>
</head>
<body>
    <script>
        jQuery.validator.addMethod("checkemail", function(value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        }, "Please enter the email format as abc@gmail.com");

        jQuery(document).ready(function($) {
            $("#forgot").validate({
                rules: {
                    email: {
                        required: true,
                        checkemail: true
                    },
                   
                    pw: {
                        required: true,
                        minlength: 6
                    },
                    cpw: {
                        required: true,
                        minlength: 6,
                        equalTo: "#pw"
                    },
                },
                messages: {
                    email: {
                        required: "Please enter the email.",
                    },
                  
                    pw: {
                        required: "Please enter the password.",
                        minlength: "Please enter the password greater than or equal to 6.",
                    },
                }
            });
        });



    </script>
   

 <%@include file="head.jsp"%>

    <% if (request.getAttribute("status") != null) {%>
    <div id="msg">  <%= request.getAttribute("status")%></div>
    <%}%> 

           
        <div class="for">
            <form method="POST" id="forgot" action="register">
                <h3>Update Password</h3>
                <label >Email address</label>
                <input type="email"  placeholder="Enter email"  name="email">
               
               
                <label >Password</label>
                <input type="password"  id="pw" placeholder="Enter Password" name="pw">
          
           
                <label >Confirm Password</label>
                <input type="password"   placeholder="Re Enter Password" name="cpw">
          
            <button type="submit"  name="forgotPass" id="for">Submit</button>
            
              <button id="for"> <a href="login.jsp">Login</a></button>

            
        
    </form>
</div>
 <%@include file="footer.jsp"%>
</body>
</html>