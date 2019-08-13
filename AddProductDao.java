package Dao;


import Bean.Addproductbean;

import Connection.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Connection.DBConnection;
import java.io.InputStream;


public class AddProductDao {
    
    public ResultSet resultset = null;
    ///public Connection conn=null;
public String user(Addproductbean AddBean)
{
            Connection conn = null;
          //  String MedicineId = AddBean.getMedicineId();
          //  System.out.println("21111111111"+MedicineId);
            String productName = AddBean.getproductName();
            System.out.println("000000000111____"+productName);
            String ProductCost = AddBean.getProductCost();
            System.out.println("0000000000222___"+ProductCost);
            InputStream productimage=AddBean.getBytes();
            System.out.println("00000000333___"+productimage);
            int CategoryId =  Integer.parseInt(AddBean.getCategoryId());
            System.out.println("000000000444___"+CategoryId);
           int TotalNoOfProducts = Integer.parseInt(AddBean.getTotalNoOfProducts());
            System.out.println("000000000555__"+TotalNoOfProducts);
           String ProductsDescription = AddBean.getProductsDescription();
           System.out.println("000000000666___"+ProductsDescription);
         
            try
            {
                conn = DBConnection.createConnection();
System.out.println("add book dao entered"+conn);
//String qry="insert into books121(book_id,book_name,author_name,category_id,image,bookdescription,book_Price,total_no_of_books,no_of_books_sold,available_books) values (BOOKSEQUENCE.nextval,?,?,?,?,?,?,?,?,?)";
String qry="insert into product1(productid,productname,productcost,productimage,categoryid,TotalNoOfProducts,ProductsDescription) values (product1table.nextval,?,?,?,?,?,?)";
                        //String qry= "insert into booktest(book_id,book_name) values (BOOKSEQUENCE.nextval,?)";
                        //String qry="insert into customers(customer_id,email_id,phonenumber,username,password,confirm_password) values (customer_id.nextval,?,?,?,?,?)";
                        System.out.println("after2222");
                        PreparedStatement st = conn.prepareStatement(qry);
                      //  st.setString(1, MedicineId);
                        st.setString(1, productName);
                        st.setString(2, ProductCost);
                        st.setBlob(3,productimage);
                        st.setInt(4, CategoryId);
                        st.setInt(5,TotalNoOfProducts);
                        st.setString(6,ProductsDescription);
                       
                        st.executeUpdate();
                       return "SUCCESS";

            
            }
            catch(Exception e)
            {
                System.out.println("exception in add book exception:"+e.getMessage() );
                System.out.println("exception in add book exception:"+e.getStackTrace() );
            }
            return "UNSUCCESS";
        
        }
    
}