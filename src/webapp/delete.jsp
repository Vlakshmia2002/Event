<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
<%@page import="model.Registration"%>

<!DOCTYPE html>
<html>
   <head>
       <title>TODO supply a title</title>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 
   </head>
   <style>
       .errmsg{
           background: green;
           padding: 6px;
           width: 50%;
           color: white;
           font-weight: bold;
       }
       .jumbotron{
           background-color: white;
       }
       #search
       {
           width: 50%; 
       }
       
   </style>
   <body>
       <%@include file="head.jsp"%>
   <center>
       <br>
       <font color="blue" size="4">
       <h2> Delete User </h2>
       </font>
       <% if (request.getAttribute("status") != null) {%>
       <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
       <%}%>
       <div class="container ">
           <div class="jumbotron">
                <input class="form-control" id="search" type="text" placeholder="Search..">
               <table class="table">
                   <thead>
                       <tr style="background-color: lightblue;">
                   <br>
                           <th>Slno</th>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Phone</th>
                           <th>Date</th>
                           <th>Delete</th>
                       </tr>
                   </thead>
                   <tbody id="table">
                       <% if (session.getAttribute("id") != null 
                               && session.getAttribute("id").equals("110011")) {
                               Registration reg = new Registration(session);
                               ArrayList<Student> mydata = reg.getUserDetails();
                               
                               Iterator<Student> itr = mydata.iterator();
                               while (itr.hasNext()) {
                                   Student s = itr.next();
                       %>
                       <tr>
                           <td><%=s.getId()%></td>
                           <td><%=s.getName()%></td>
                           <td><%=s.getemail()%></td>
                           <td><%=s.getphone()%></td>
                           <td><%=s.getdate()%></td>
                           <td>
                               <form action="delete" method="POST">
                                   <input type="hidden" name="userid" value="<%=s.getId()%>"/>
                                   <input type="submit" class="btn btn-danger" value="Delete" />
                               </form>
                           </td>
                       </tr> 

                       <%}
                       }%> 
                   </tbody>
               </table>
           </div>
       </div>
   </center>
                   
                   <script>
$(document).ready(function(){
 $("#search").on("keyup", function() {
   var value = $(this).val().toLowerCase();
   //alert(value);
   $("#table tr").filter(function() {
     $(this).toggle($(this).text().toLowerCase().indexOf(value) > 0)
     //alert(this);
   });
 });
});
</script>
   
</body>
</html>
    