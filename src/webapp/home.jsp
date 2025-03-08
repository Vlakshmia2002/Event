<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style type="text/css">
	*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family:'Poppins',sans-serif;
}
.main{
margin:10px 0px;
    width: 100%;
    height: 80vh;
    background-image: linear-gradient(rgba(0,0,0,0.3),transparent),url(assets/bagsg.jpg);
    background-size: cover;
    background-position:center;
    position: relative;
   
   
}
nav{
    display: flex;
    width: 100%;
    align-items: center;
    flex-wrap: flex;
    padding: 10px 0;
   height: 30px;
  
    
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
    color: white;
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
.text-box{
    color:white;
    position: absolute;
 
    bottom: 30%;
}
.text-box p{
    font-size: 50px;
    font-weight: 600;
    
}
.text-box h1{
    font-size: 150px; 
    
    line-height: 160px;
    margin-left: -10px;
    color: transparent;
    -webkit-text-stroke: 1px white;
    background: url(assets/black.jpg);
    -webkit-background-clip: text;
    background-position: 0 0;
    animation:  back 12s linear infinite;  
}
@keyframes back{
    100%{
        background-position: 2000px 0;
    }
}
.text-box h3{
    font-size: 40px;
    font-weight: 500;
    margin-bottom: 30px;
    

}
.text-box .exp{
    color:black;
    text-decoration: none;
    padding: 10px 20px;
    background-color: orangered;
    border: 0px solid;
    border-radius: 5px;
    box-shadow: 0 0 8px black;
}
.text-box .exp:hover{
    background-color:orange;
    
}
.category{
    margin: 20px 65px;
    width: 300px;
    height: 350px;
    box-shadow: 0 0 10px black;
    border-radius: 10px;
    transition: 0.3s linear;
}
.category img{
    width: 300px;
    height: 300px;

}
.category a{
    text-decoration: none;
}
.category a h2{
    text-align: center;
    color: Black;

}
.category:hover{
    transform: translateY(-5%);
    box-shadow: 0 8px 10px black;
}
.categories
{
background-color:whitesmoke;
    margin:40px 0;
    padding:10px;
}
.small-container
{
    max-width: 1080px;
    margin:auto;
    padding-left: 25px;
    padding-right: 25px;
}

.title{
    text-align: center;
    margin:40px auto ;
    position: relative;
    line-height: 60px;
    color: #555;
    font-weight: bolder;
    color:purple;
}
.title:hover{
color:black;
 
}

.title::after{
    content: '';
    background: orangered;
    width: 100px;
    height: 5px;
    border-radius: 15px;
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
}
.row{
    display: flex;
    align-items:center;
    flex-wrap: wrap;
    justify-content:space-around;
}

.categories .col-3{
    flex-basis: 30%;
    min-width: 350px;
    margin-bottom: 0px;

    text-align: center;
    padding: 40px 10px;
    /*    box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);*/
    cursor: pointer;
    transition: transform 0.5s;
     

}


.categories .col-3 img
{
    width: 300px;
    height:300px;
   
    margin: 20px 10px;
    border-radius: 5%;
}

.categories .col-3:hover
{
    transform: translateY(-10px);
}
a{
font-size: 20px;
text-decoration: none;
color:black;
font-weight: bolder;

}
a:hover{
color:red;
}

footer{
    background:rgb(217, 215, 215);
    margin-top: 100px;
    bottom: 0;
    width: 100%;
}


footer *{
    color: black;
}

.container{
    display: flex;
    justify-content: space-between;
    padding: 50px 7%;
}

.footer-col{
    width: 25%;
    
}

.footer-col h2,p{
    /* font-optical-sizing: 1.7em; */
    text-transform: uppercase;
    margin-bottom: 20px;
    text-align: left;
}

p.email{
    margin: 30px 0;
}

p.phone{
    font-size: 20px;
    font-weight: 400;
}

.footer-col .text-office{
    margin-bottom: 20px;
}
.underline{
    width: 150px;
    height: 3px;
    position: relative;
    background-color:black;
    margin-top: 5px;
    margin-bottom: 20px;
    border-radius: 3px;
    overflow: hidden;
}




.footer-col form{
    margin-top: 20px;
    border-bottom: 1px solid rgb(1, 1, 1);
    padding-bottom: 10px;
    display: flex;
}

.footer-col form input{
    width: 70%;
    background: transparent;
    border: none;
    outline: none;
    padding-left: 10px;
}

.footer-col form i{
    font-size: 15px;
}

.footer-col .social-icons{
    margin-top: 20px;
}

.footer-col .social-icons i{
    padding: 10px;
    background-color: rgb(234, 73, 55);
    color: #ececee;
    border-radius: 50%;
    margin: 5px;
}
.footer-col .social-icons i:hover{
    background-color: purple;
    transform: translateY(-10px);
}


	
	</style>
</head>
<body>
   <%@include file="head.jsp"%>
    <div class="main">
        <div class="container">
         
           
            <div class="text-box">
                <p>Welcome To </p>
                <h1>SURPRISE</h1>
                <h3>Start Exploring Infnite Events</h3>
                <a href="#c" class="exp">Explore with Surprise</a>
                
            </div>
        </div>

        </div>
         <div class="categories" id="c">
      <div class="small-container">
          <h2 class="title" id="ev">Events</h2>
          <div class="row">
              <div class="col-3">
                  <a href="index.jsp?event_category=music"> <img src="assets/rr1.jpg"><br>Music</a>
              </div>
              

              <div class="col-3">
                  <a href="index1.jsp?event_category=traditional"> <img src="assets/img1.jpg"><br>Cultural</a>
              </div>

          </div>
      </div>
  </div>
  
   <footer>
      <div class="container">
          <div class="footer-col">
              <h2>Surprise</h2>
              <div class="underline"><span></span></div>
              <p class="footer-para">
                  <h1 style="color: rgb(0, 0, 0);">Get In Touch</h1>
                  <p style="color: rgb(6, 6, 6);">Catch Your feels at this amazing concert!!!!</p>
                  <p style="color: rgb(9, 9, 9);">where you loose and just have fun with family and friends!</p>
              </p>
          </div>
          <div class="footer-col">
              <h3 class="text-office">
                  Venue
                  <div class="underline"><span></span></div>
              </h3>
              <p>Street No 5</p>
              <p>Vijayanagar</p>
              <p>Bangalore, India</p>

              <p class="email">info.finegap@gmail.com</p>
              <p class="phone">+92 304 110 0028</p>
          </div>
         
          <div class="footer-col">
              <h3>
                  Newsletter
                  <div class="underline"><span></span></div>
              </h3>
              <form action="">
                  <input type="text" placeholder="Enter Email">
                  
              </form>
              <div class="social-icons">
                  <a href="#"><i class="fa-brands fa-facebook"></i></a>
                  <a href="#"><i class="fa-brands fa-instagram"></i></a>
                  <a href="#"><i class="fa-brands fa-youtube"></i></a>
                  <a href="#"><i class="fa-brands fa-google-plus"></i></a>
              </div>
          </div>
      </div>
  
  </footer>
    
     
</body>
</html>