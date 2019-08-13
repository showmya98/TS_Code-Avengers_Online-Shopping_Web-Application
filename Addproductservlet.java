//package Controller;
package Controller;
import Dao.AddProductDao;
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

import Bean.Addproductbean;
@WebServlet(name = "Addproductservlet", urlPatterns = {"/Addproduct"})
@MultipartConfig(maxFileSize = 16177216)
public class Addproductservlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       System.out.println("products servlet called");
       InputStream inputStream = null; // input stream of the upload file
         // InputStream inputStream = null; // input stream of the upload file
       
     //  String MedicineId = request.getParameter("MedicineId").trim();
      // System.out.println("1111111111 "+MedicineId);
       String productName = request.getParameter("productName").trim();
       System.out.println("2222222222 "+productName);
       String ProductCost = request.getParameter("ProductCost").trim();
       System.out.println("333333333 "+ProductCost);
       Part part = request.getPart("productimage");
       System.out.println("44444444_image_ "+part);
       inputStream = part.getInputStream();
       System.out.println("555555555_image_ "+part);
        String CategoryId = request.getParameter("category").trim();
        System.out.println("666666666 "+CategoryId);
String TotalNoOfProducts = request.getParameter("TotalNoOfProducts").trim();
 System.out.println("7777777777777777  "+TotalNoOfProducts);
String ProductsDescription= request.getParameter("ProductsDescription").trim();
 System.out.println("88888888888"+ProductsDescription);
        //System.out.println("availableBooks: "+availableBooks);
 Addproductbean instance = new Addproductbean();
       // instance.setMedicineId(MedicineId);
instance.setproductName(productName);
        instance.setProductCost(ProductCost);
        instance.setBytes(inputStream);
                instance.setCategoryId(CategoryId);
instance.setTotalNoOfProducts(TotalNoOfProducts);
               instance.setProductsDescription(ProductsDescription);
          AddProductDao productDao = new AddProductDao();
             String returnResponse =  productDao.user(instance);
            System.out.println("Add product connection return in servlet "+returnResponse);    
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}