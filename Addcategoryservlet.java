package Controller;
import Bean.Addcategorybean;
import Dao.AddcategoryDao;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "Addcategoryservlet", urlPatterns = "/Addcategory")
//@MultipartConfig(maxFileSize = 16177216)
public class Addcategoryservlet  extends HttpServlet {
private static final long serialVersionUID = 1L;
private void sysout() {
	System.out.println("111111111111111111");
}
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("2222222222222");
       System.out.println("Addservlet called ...");
       
       String categoryname = request.getParameter("categoryname").trim();
       System.out.println("hii");
       
        String categoryId = request.getParameter("categoryId").trim();
        
        System.out.println("categoryname: "+categoryname);
        
        System.out.println("categoryId: "+categoryId);
                Addcategorybean instance = new Addcategorybean();
     
               instance.setcategoryname(categoryname);
		
                instance.setcategoryId(categoryId);
             AddcategoryDao categoryDao = new AddcategoryDao();
             String returnResponse = categoryDao.user(instance);
            System.out.println("Add product connection return in servlet "+returnResponse);    
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}