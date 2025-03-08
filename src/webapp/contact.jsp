<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="c.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    
    <style>
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body{
width:100%;
    
   
}
.main{
width:100%;
background-image: url('assets/bg2.jpg');
 background-repeat: no-repeat;
    background-size: cover;
    height:100vh;

}
.container{
    height: 400px;
    width: 80%;
    max-width: 600px;
    margin: 2% auto;
    padding: 20px;
    background-color:rgba(0,0,0,0.7);
    border-radius: 10px;
    box-shadow: 0 5px 10px rgba(0,0,0,10.6 );
}
form input, form textarea{
    display: block;
    height: 40px;
    width: 60%;
    margin-bottom: 10px;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color:rgba(0,0,0,0.2);
    border: 1px  solid orangered;
}
form button{
   margin-top: 20px;
    height: 40px;
    width: 40%;
    border-radius: 10px;
    background-color:rgb(155, 79, 255);
}
h1{
    color: white;
    font-size:50px;
    margin-top:40px;
    font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
}
p{
    color: white;
    font-size: 30px;
    padding-top: 20px;
}
::placeholder{
    color: whitesmoke;
    font-size: 20px;
}

    </style>
</head>
<body> 
<%@include file="head.jsp"%>
<div class="main">
    <center><h1>Contact Us</h1></center>
    <center><p>If you require any further information, feel free to contact us.</p></center>
    <center><p style="font-family:cursive;">We'd ❤ to Help You!!</p></center>
    <div class="container">
        <center>
        <form>  
            <input type="text" name="name" placeholder="Full Name"  style="color: white; font-size: 20px; " ><br><br>
            <input type="email" name="email" placeholder="Email" style="color: white; font-size: 20px; " ><br><br>
            <textarea name="textarea" placeholder="Type here....."  style="color: white; font-size: 20px; " ></textarea>
            <button><h2>Send</h2></button>
        </form>
    </center>
    </div>
    </div>
</body>
</html>