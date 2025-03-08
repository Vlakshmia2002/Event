package controller;



import model.Enquiry;
import model.Registration;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // type of the response sent to the client or browser
//        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Registration reg = new Registration(session);
        Enquiry enq = new Enquiry(session);
        try {
            if (request.getParameter("register") != null) {

                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String pw = request.getParameter("pw");
                String cp = request.getParameter("cpw");

                if (pw.equals(cp)) {
                    String status = reg.Registration(name, phone, email, pw);
                    
                    
                    if (status.equals("existed")) {

                        request.setAttribute("status", "Existed record");
                        RequestDispatcher rd1 = request.getRequestDispatcher("signup.jsp");
                        rd1.forward(request, response);

                    } else if (status.equals("success")) {
                    	request.setAttribute("status", "Successfully Registered");
                        RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                        rd1.forward(request, response);
 
                    } else if (status.equals("failure")) {
                        request.setAttribute("status", "Registration failed");
                        RequestDispatcher rd1 = request.getRequestDispatcher("signup.jsp");
                        rd1.forward(request, response);

                    }
                }
            } else if (request.getParameter("login") != null) {
                String email = request.getParameter("email");
                String pass = request.getParameter("pw");
                String status = reg.login(email,pass);
                if (status.equals("success")) {
                
                    RequestDispatcher rd1 = request.getRequestDispatcher("home.jsp");

                    rd1.forward(request, response);

                } else if (status.equals("failure")) {
                    request.setAttribute("status", "Login failed");
                    RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                    rd1.forward(request, response);
                }
            } else if (request.getParameter("logout") != null) {
                session.invalidate();
                RequestDispatcher rd1 = request.getRequestDispatcher("home.jsp");
                rd1.forward(request, response);
            } 
        
        else if (session.getAttribute("name") != null && request.getParameter("submit") != null) {
            String name = request.getParameter("name");
            String pno = request.getParameter("pno");
            String email = request.getParameter("email");
            Registration u = new Registration(session);
            String status = u.update(name, pno, email);
            if (status.equals("success")) {
                request.setAttribute("status", "Profile successfully Updated");
                RequestDispatcher rd1 = request.getRequestDispatcher("edit.jsp");
                rd1.forward(request, response);
            } else {
                request.setAttribute("status", "Updation failure");
                RequestDispatcher rd1 = request.getRequestDispatcher("edit.jsp");
                rd1.forward(request, response);
            }
        }
        else if (request.getParameter("forgotPass") != null) {
            String mail = request.getParameter("email");
       
            String pw = request.getParameter("pw");
            String cp = request.getParameter("cpw");
            if (pw.equals(cp)) {
                String status = reg.ForgotPassword(mail, pw);
                
                if (status.equals("success")) {
                    request.setAttribute("status", "Password Reset Successfully");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                } else if (status.equals("failure")) {
                    request.setAttribute("status", "Password Reset Failed");
                    RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("status", "Password mismatch");
                RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
                rd.forward(request, response);
            }
            
        }
        else if (request.getParameter("reset") != null) {
            String eamil = request.getParameter("email");
            String opw = request.getParameter("opw");
            String npw = request.getParameter("npw");
            if (opw.equals(npw)) {

                String s = reg.getPassword(eamil, opw);
                //System.out.println("Hi");
                if (s.equals("success") && (opw.equals(npw))) {
                    //if (opw.equals(npw)) {
                    request.setAttribute("status", "New Passwordis same as old Password");
                    RequestDispatcher rd = request.getRequestDispatcher("reset.jsp");
                    rd.forward(request, response);
                    //} 
                }
            } else {
//                System.out.println("Inside reset");
                String status = reg.resetPassword(eamil, npw);
                System.out.println(status);
                 if (status.equals("success")) 
                    request.setAttribute("status", "Password changed successfully");
                    RequestDispatcher rd = request.getRequestDispatcher("reset.jsp");
                    rd.forward(request, response);
//                         } else  {
//                             request.setAttribute("status", "Both Are same ");
//                             RequestDispatcher rd = request.getRequestDispatcher("changePass.jsp");
//                             rd.forward(request, response);
//                         }
            }


        }
//        else if (request.getParameter("evsubmit") != null) {
//
//                String name = request.getParameter("name");
//                String phone = request.getParameter("phone");
//                String email = request.getParameter("email");
//                String singer = request.getParameter("singer");
//                String city = request.getParameter("city");
//
//                
//                    String status = reg.eventform(name, phone, email,singer,city);
//                    
//                    
//                     if (status.equals("success")) {
//                    	request.setAttribute("status", "Event Booked Successfully");
//                        RequestDispatcher rd1 = request.getRequestDispatcher("event.jsp");
//                        rd1.forward(request, response);
// 
//                    } else if (status.equals("failure")) {
//                        request.setAttribute("status", "Try again For booking");
//                        RequestDispatcher rd1 = request.getRequestDispatcher("event.jsp");
//                        rd1.forward(request, response);
//
//                    }
//                }
            
        
             else if (request.getParameter("addevent") != null) {
	 	 	 String img = request.getParameter("image");
	 	 	 String name = request.getParameter("name");
	 	 	 String cost = request.getParameter("cost");
	 	 	 String details = request.getParameter("details");
	 	 	 String category = request.getParameter("category");

	 	 	 String status = enq.addEvent(img, name, cost, details, category);

	 	 	 if (status.equals("Submitted")) {
	 	 	 	 request.setAttribute("status", "New Event Added");

	 	 	 	 RequestDispatcher rd = request.getRequestDispatcher("addev.jsp");

	 	 	 	 rd.forward(request, response);
	 	 	 } else if (status.equals("Already Added")) {
	 	 	 	 request.setAttribute("status", "Already Added");

	 	 	 	 RequestDispatcher rd = request.getRequestDispatcher("addev.jsp");

	 	 	 	 rd.forward(request, response);
	 	 	 } else if (status.equals("Failed")) {
	 	 	 	 request.setAttribute("status", "Failed To Add Event");

	 	 	 	 RequestDispatcher rd = request.getRequestDispatcher("addev.jsp");

	 	 	 	 rd.forward(request, response);
	 	 	 }
	 	 }
	 	 else if (request.getParameter("delevent") != null) {
	 	 	 String category = request.getParameter("ecategory");

	 	 	 String status = enq.delEvent(category);
	 	 	 if (status.equals("success")) {
	 	 	 	 request.setAttribute("status", "Event Deleted");

	 	 	 	 RequestDispatcher rd = request.getRequestDispatcher("addev.jsp");

	 	 	 	 rd.forward(request, response);
	 	 	 } else if (status.equals("not available")) {
	 	 	 	 request.setAttribute("status", "Event Category doesn't exist");

	 	 	 	 RequestDispatcher rd = request.getRequestDispatcher("addev.jsp");

	 	 	 	 rd.forward(request, response);
	 	 	 } else if (status.equals("failed")) {
	 	 	 	 request.setAttribute("status", "Failed to Delete Event");

	 	 	 	 RequestDispatcher rd = request.getRequestDispatcher("addev.jsp");

	 	 	 	 rd.forward(request, response);
	 	 	 }
	 	 }
             
       
        
        }
        catch (Exception e) {
		e.printStackTrace();
	}
}

        	

    

   
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


