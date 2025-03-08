<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
            background-image: url(assets/login.jpg);
            margin-top:20px;
            height: 650px;
            background-repeat: no-repeat;
            background-size: cover;
             
            
            display: flex;
        }
        form{
            width: 400px;
            border: 1px solid black;
            height: 400px;
            padding: 30px;
            box-shadow: 0 0 10px black;
            margin-left: 150px;
            margin-top: 70px;
            background: rgba(0,0,0, 0.2);
            
        }
        form h2{
            text-align: center;
            margin-bottom: 10px;
            font-size: 30px;
            
        }
        .form-group{
            margin: 20px 0px;
        }
        input{
            padding: 8px;
            width: 90%;
            
           
            background: transparent;
            border: 1px solid black;
           
        }
        
        .music{
            margin-left: 140px;
            margin-top: 200px;
        }
        .music h1{
            margin-bottom: 30px;
        }
        .btn{
            padding: 5px 40px;
            background-color: rgb(226, 43, 150);
            border: none;
            border-radius: 3px;
            margin-left: 100px;
            margin-bottom: 20px;
        }
        .btn:hover{
            background-color: rgb(90, 14, 40);
            color: white;
        }
        
        .for a{
           
            text-decoration: none;
            text-align: center;
            font-size: 14px;
            
        }
        #one{
           
            margin-left: 50px;
        }
       .msg{
        text-align: center;
       }
       .error{
       color:white;}
        #msg{
       text-align: center;
       width:100%;
       height:40px;
       padding:10px 0;
       margin:10px 0;
       font-size:20px;
       font-weight: bold;
       color:green;
       
       
       }
       
    </style>
</head>
<body>
    <%@include file="head.jsp"%>
    <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>
    <div class="main">
        <div class="music">
            <h1>Music Event</h1>
            <h1>“From the First Beat to the Last Note <br> – Experience It All!”</h1>
        </div>
        <form method="POST" id="login" action="register">
            
            <h2> Login  </h2>
           
            <br>
            <div class="container ">
                <div class="form-group col-md-4">
                    <label >Email address :</label><br>
                    <input type="email" class="form-control" placeholder="Enter email"  name="email"><br>
                </div>
                <div class="form-group col-md-4">
                    <label >Password :</label><br>
                    <input type="password" class="form-control"  placeholder="Enter Password" name="pw"><br>
                </div>
                <button type="submit" class="btn btn-primary" name="login">Submit</button><br>
                <div class="for">
                    <a href="forgot.jsp" id="one">Forgot password?</a>
                    <a href="reset.jsp" id="two">Reset Password</a>
                </div>
            </div>
        </form>
       
    </div>
     <%@include file="footer.jsp"%>
    <script>
        jQuery.validator.addMethod("checkemail", function(value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        }, "Please enter the email format as abc@gmail.com");

        jQuery(document).ready(function($) {
            $("#login").validate({
                rules: {
                    email: {
                        required: true,
                        checkemail: true
                    },
                    pw: {
                        required: true,
                        minlength: 6
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
    
</body>
</html>