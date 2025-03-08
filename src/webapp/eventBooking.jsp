<%@page import="model.Dproduct"%>
<%@page import="model.Registration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Event Booking Form</title>
     <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Georgia, 'Times New Roman', Times, serif;
}

body {
    width: 100%;
   
   
}
.main{
    width: 100%;
    
    
    background-image: url(https://img.lovepik.com/background/20211021/large/lovepik-high-end-black-gold-background-image_401435265.jpg);
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 110vh;
    padding:20px;
}

.container {
    padding: 20px;
    border-radius: 50px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    

}

h2 {
    text-align: center;
    color:white;
    margin-bottom: 20px;
    font-weight: bold;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    color: white;
    font-weight: bold;
    margin-bottom: 5px;
}

input, select, textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    outline: none;
}

input:focus, select:focus, textarea:focus {
    border-color: #007BFF;
}

.submit-btn {
    width: 100%;
    padding: 10px;
    background-color:blueviolet;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    
}

.submit-btn:hover {
    background-color: #0056b3;
}
#m{
width:100%;
text-align: center;
padding: 20px;
color:Green;

}
#m h1{
font-weight: bolder;
}

    </style>
</head>
<body>
<%@include file="head.jsp"%>
    <div id="m">
        <% if (request.getAttribute("status") != null) {%>
            <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
            <%}%>
    </div>
    <div class="main">
       
    <div class="container">
        <h2>Event Booking Form</h2>
        <% if (session.getAttribute("uname") != null) {
            Registration reg = new Registration(session);
           
            Dproduct s= reg.getEventFormInfo(request.getParameter("event_id"));%>
        <form action="addtocart" method="post" id="bookevent">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" value="<%=session.getAttribute("uname")%>">
            </div>
            <div class="form-group">
                <label >Phone Number:</label>
                <input type="number" id="email" name="pno"  value="<%=session.getAttribute("phone")%>">
            </div>
            <div class="form-group">
                <label >Email:</label>
                <input type="email" id="phone" name="email"  value="<%=session.getAttribute("email")%>">
            </div>
            
        
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" placeholder="Enter your address">
            </div>
            <div class="form-group">
                <label for="date">Event Name:</label>
                <input type="text" id="name" name="ename" value="<%=s.getP_name()%>" readonly>
            </div>
            
            <div class="form-group">
                <label for="date">Event Cost:</label>
                <input type="text" id="cost" name="ecost" value="<%=s.getP_cost()%>" readonly>
            </div>
            <div class="form-group">
                <label for="date">Event Date:</label>
                <input type="date" id="date" name="edate" value="">
            </div>
            
            <div class="form-group">
                <input type="hidden" name="event_id" value="<%=request.getParameter("event_id")%>"> 
                <button type="submit" class="submit-btn" name="bookevent">Submit</button>
            </div>
        </form>
        <%}%> 
    </div>
</div>

    <script>
        // Disable past dates in the date input
        const dateInput = document.getElementById('date');
        const today = new Date().toISOString().split('T')[0]; // Get today's date in YYYY-MM-DD format
        dateInput.setAttribute('min', today); // Set the min attribute to today's dat 



//            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

jQuery.validator.addMethod("checkemail", function (value, element) {
    return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
});
jQuery(document).ready(function ($) {
    $("#bookevent").validate({
        rules: {
            name: {
                required: true
            },
            email: {
                required: true,
                checkemail: true
            },
            pno: {
                required: true,
                minlength: 10,
                maxlength: 10
            },
            address: {
                required: true
            },
            edate: {
                required: true,
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
            pno: {
                required: "Please enter the number.",
                minlength: "Please enter the  10 digit number .",
                maxlength: "more than 10 digits."
            },
            address: {
                required: "Please enter the address.",
            },
            edate: {
                required: "Please select the date.",
            }
        }
    });
});

    </script>
</body>
</html>















