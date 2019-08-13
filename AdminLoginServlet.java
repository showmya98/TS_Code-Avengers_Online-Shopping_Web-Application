package Controller;
import java.io.IOException;  
import java.io.PrintWriter;    
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;   
public class AdminLoginServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
		throws ServletException, IOException {  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("uname");  
    String p=request.getParameter("psw");
       if(((n.equals("sowmya"))&&((p.equals("123"))))) {
       out.print("Login Succesfully");
       }
    else{  
        out.print("Sorry username or password error");  
        RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
        rd.include(request,response);  
    }  
          
}}
