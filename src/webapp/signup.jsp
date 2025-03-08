<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <link rel="stylesheet" href="register.css">
    <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            width: 100%;
            height: 100vh;
            background-color: whitesmoke;
            
        }
        .main{
        margin-top:20px;
            background-image: url(assets/sign1.jpg);
            
            height: 650px;
            background-repeat: no-repeat;
            background-size: cover;
            
            display: flex;
        }
        form{
            width: 400px;
            border: 1px solid rgb(7, 7, 7);
            height: 530px;
            padding: 30px;
            box-shadow: 0 0 10px rgb(6, 6, 6);
            margin-left: 550px;
            margin-top: 50px;
            background: rgba(0, 0, 0, 0.3);
            
        }
        form h1{
            text-align: center;
            margin-bottom: 10px;
            font-size: 30px;
            margin-bottom: 20px;
            color:white;
            
            
        }
        .form-group{
            margin: 20px 0px;
        }
        input{
            padding: 8px 0;
            width: 90%;
            
           border: none;
            background: transparent;
            border-bottom: 2px solid rgb(5, 5, 5);
            color: white;
            outline: none;
            margin-bottom: 5px;
            
           
        }
        label{
            color:white ;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }
       
        .btn{
            padding: 5px 40px;
            background-color: rgb(226, 43, 150);
            border: none;
            border-radius: 3px;
            margin-left: 140px;
            margin-bottom: 20px;
        }
        .btn:hover{
            background-color: rgb(90, 14, 40);
            color: white;
        }
        
        .for a{
           
            text-decoration: none;
            text-align: center;
            
        }
        #one{
           
            
            width: 100px;
            border: none;
            background-color: brown;
            margin-left: 60px;
            margin-top: 15px;
        }
       .msg{
        text-align: center;
       }
       .error{
        color: white;
        font-size: 16px;
       }
       button{
        width: 100px;
            border: none;
            background-color: brown;
            padding: 8px 0;
            margin-left: 20px;
            margin-top: 15px;
       }
       button a{
        text-decoration: none;
        color: black;
       }
       button:hover,#one:hover{
        background-color: rgb(110, 4, 4);
        color: white;

       }
       button a:hover{
        color: white;
       }
       #msg{
       text-align: center;
       width:100%;
       height:40px;
       padding:10px 0;
       margin:10px 0;
       font-size:20px;
       font-weight: bold;
       color:orange;
       
       
       }
       
    </style>
</head>
<body>

     <%@include file="head.jsp"%>
      <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>  
    <div class="main">
      
    <form action="register" method="post" id="signup">
        <h1>Registration Form</h1>
        <label for="">Name :</label><br>
        <input type="text" id="name" name="name" placeholder="Enter your name"><br>
        <label for="">Phone Number :</label><br>
        <input type="number" name="phone" placeholder="enter Your phone Number"><br>
        <label for="">Email :</label><br>
        <input type="email" name="email" placeholder="Email"><br>
        <label for="">Password :</label><br>
        <input type="password" id="pw" name="pw" placeholder="Enter your Password"><br>
        <label for="">Confirm Password :</label><br>
        <input type="password" name="cpw" placeholder="Confirm Password"><br>
        <input type="submit" name="register" value="Register" id="one">
        <button><a href="login.jsp" id="two">Login</a></button>

    </form>
    </div>
    
    <%@include file="footer.jsp"%> 
    <script>

         //jQuery.validator.addMethod( name, method [, message ] )
          
        // value---> "current value of the validated element".
        //elememt---> " element to be validated ".

        jQuery.validator.addMethod("checkemail", function(value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        });
        jQuery(document).ready(function($) {
            $("#signup").validate({
                //ignore: [],
                rules: {
                    name: {
                        required: true
                    },
                    email: {
                        required: true,
                        checkemail: true
                    },
                    phone: {
                        required: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    pw: {
                        required: true,
                        minlength: 6
                    },
                    cp: {
                        required: true,
                        minlength: 6,
                        equalTo: "#pw"
                    }
                },
                messages: {
                    name: {
                        required: "Please enter the name."
                    },
                    email: {
                        required: "Please enter the email.",
                        email: "Please enter valid email id"
                    },
                    phone: {
                        required: "Please enter the number.",
                        minlength: "Please enter the  10 digit number .",
                        maxlength: "more than 10 digits."
                    },
                    pw: {
                        required: "Please enter the password.",
                        minlength: "Please enter the password greater than or equal to  6.",
                    },
                    cp: {
                        required: "Please reenter the password.",
                        minlength: "Please enter the password greater than or equal to 6.",
                        equalTo: "mismatch password"
                    }
                }
            });
        });
    </script>
</body>
</html>