<%@page import="java.util.Iterator"%>
<%@page import="model.Dproduct"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Registration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    width: 100%;
     overflow-x: hidden; 
}

.container-fluid{
      width: 100%;
      
     
   
}
 nav{
    display: flex;
    width: 100%;
    align-items: center;
    flex-wrap: flex;
    padding: 10px 0;
    height: 80px;
    box-shadow: 0 10px 10px rgb(160, 157, 157);
    margin-bottom: 20px;
    
    
       
}


.logo{
    width: 120px;
    
   cursor: pointer; 
   margin-left: 100px;
    
}
.logo img{
    width: 120px;
    height: 50px;
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
.carousel{
  
    width: 100%;
    
}
.img{
    width: 100%;
    height: 600px;
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

.events{
    width: 100%;
    margin-top: 50px ;
    padding: 0 150px;

}
.head{
    width: 100%;
    display: block;
    text-align: center;
}
.event{
    display: flex;
    height:600px;
    width: 100%;
    margin-top: 80px ;
    flex:row;
   
}
.box{
	
    width: 250px;
    height: 400px;
    border: 1px solid black;
    box-shadow: 0 0 10px black;
    border-top-right-radius: 5px;
    border-top-left-radius: 5px;
    margin: 0 25px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.box:hover{
    transform: translateY(-10px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}
.imgbox img{
    width: 100%;
    height: 234px;
    border-top-right-radius: 5px;
    border-top-left-radius: 5px;
}

.cont{
    padding-left: 20px;
}




.best{
    width: 100%;
    height: 350px;
    margin-top: 80px;
    
}

.best h2{
    margin-top: 20px;
   text-align: center;
    margin-bottom: 10px;
    display: block;
    margin-bottom: 30px;
}
.square{
    width: 100%;
    height: 270px;
    
    display: flex;
    align-items: top;
    justify-content: center;
}
#square{
    margin-left: 35px;
    width: 220px;
    height: 220px;
    
    border-radius: 7px;
}
#square:hover{
    transform: translateY(-10px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}
#square img{
    width: 220px;
    height: 220px;
    border-radius: 7px;
}

.premiere{
    height: 600px;
    width: 100%;
    background-color:#2d2f45;
   
    
    
}


.hp{
 
    color: white;
    width: 100%;
    text-align: center;
    margin-top: 50px;
    padding: 50px 0;
    font-size: 40px;
    
    
}
#hp{
    color: white;
    
    margin-left:160px ;
    width: 100%;
    height: 60px;
    
    
}
.pre{
    width: 100%;
    height: 400px;
    
    display: flex;
    justify-content: center;

}
.prem{
    width: 220px;
    height: 400px;
   
    
    justify-content: center;
    margin-left: 35px;
    color: white;
    
    
}
#prem img{
    border-radius: 10px;
    width: 220px;
    height: 320px;
}
.prem h3{
    padding-top: 10px;
}
.prem p{
    padding-top: 10px;
}
.header{
	width:100%;
	margin:50px 150px;
}
.eve{
  width: 100%;
            height: auto;           
            background-color: aqua;
            display: flex;
            flex-wrap: wrap;
            justify-content: start;
            align-items:center ; 
           padding: 20px 70px;  
            background-color:whitesmoke;
                      }
        .evbox{
            width:350px;
            height: 486px;
           border:1px solid black;
            margin: 50px 50px;  
            transition:transform 0.5s; 
            box-shadow: 0 0 6px black;        
        }
        .evbox:hover{
        transform: translateY(-10px);
        }
        .evbox img{
            width: 350px;
            height: 250px;
        }
        .evbox h2{
            padding-left: 10px;
            padding-top: 10px;
        }.para{
            padding: 10px;
            width: 350px;
            height: 50px;
        }
        .butto button{
            width: 100%;
            background-color: black;
            padding: 15px;
        }
        .butto button a{
            text-decoration: none;
            color: white;
            font-size: 20px
        }
        .em{
            width: 100%;
        }
       
</style>


</head>
<body>
 <%@include file="head.jsp"%>

    <div class="container-fluid p-0">
      
    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="assets/cro.jpg"  class="d-block img" alt="..." >
        </div>
        <div class="carousel-item">
          <img src="assets/bang.jpg" class="d-block img" alt="..." >
        </div>
        <div class="carousel-item">
          <img src="assets/s1.jpg" class="d-block img" alt="..." >
        </div>
         <div class="carousel-item">
          <img src="assets/c2.jpg" class="d-block img" alt="..." >
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    
    <div class="h" style="width:100%;text-align: center;margin-top: 50px" id="ev"><h1>Events</h1></div>
    
    
       
    <div class="eve">
     <% Registration r = new Registration(session);
        ArrayList<Dproduct> al = r.get_eventinfo(request.getParameter("event_category"));
        Iterator<Dproduct> it = al.iterator();
        while (it.hasNext()) {
            Dproduct s = it.next();%>
        <div class="evbox">
            <img src="assets/<%=s.getP_image()%>" alt="">
            <h2><%=s.getP_name()%></h2>
            <div class="para"><p><%=s.getP_details()%></p></div>
            <p style="padding: 10px;">&#8377 <%=s.getP_cost()%></p>
            <%
			if (session.getAttribute("uname") != null) { %>
            <div class="butto">
                <button ><a href="eventBooking.jsp?event_id=<%=s.getP_id()%>" class="but" >Book
                                Now</a></button>
                              </div>  
                                <% 
                            } else {
                                session.setAttribute("logoutredirect","index.jsp?event_category=" + request.getParameter("event_category"));
                                %>
                              <div class="butto">   
                            <button><a href="login.jsp" class="but">Book Now</a></button>
                             </div>
                                <%
                                }
                                %>
                           
                           

        </div>
          <%
			}
			%>
     
    </div>
    

    
    <div class="best">
        <h2>The Best Of live Events</h2>
        <div class="square">
            <div id="square">
                <img src="assets/music/m1.jpg" alt="">
            </div>
            <div id="square">
                <img src="assets/music/m2.jpg" alt="">
            </div>
            <div id="square">
                <img src="assets/music/m3.jpg" alt="">
            </div>
            <div id="square">
                <img src="assets/music/m5.jpg" alt="">
            </div>
            <div id="square">
                <img src="assets/music/music4.jpg" alt="">
            </div>
        </div>
    </div>

    

<div class="premiere">
            
  
     
  <div class="hp">
      <h2>Sponsers</h2> 
      
  </div>
  
  

<div class="pre">
<div class="prem">
  <div id="prem">
  <img src="assets/sponsers/spotify.webp" alt="">
</div>
<h3>Spotify</h3>

</div>
<div class="prem">
  <div id="prem">
      <img src="assets/sponsers/wynk-music.jpg" alt="">
  </div>
<h3>Wynk-music</h3>

</div>
<div class="prem">
  <div id="prem">
 <img src="assets/sponsers/resso.jpg" alt="">
</div>
<h3>Resso</h3>

</div>
<div class="prem">
  <div id="prem">
  <img src="assets/sponsers/jio.jpg" alt="">
</div>
<h3>Jio Saavn</h3>

</div>
<div class="prem">
  <div id="prem">
      <img src="assets/sponsers/apple.jpg" alt="">
  </div>
<h3>Apple Music</h3>

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
    </div>
  </footer>
</body>
</html>