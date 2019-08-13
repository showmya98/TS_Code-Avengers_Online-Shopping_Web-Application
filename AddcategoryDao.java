package Dao;
import Bean.Addcategorybean;
import Connection.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.InputStream;

public class AddcategoryDao {
    public ResultSet resultset = null;
    ///public Connection conn=null;
	public String user(Addcategorybean categorybean)
	{
            Connection conn = null;
            String categoryname = categorybean.getcategoryname();
            
            int categoryId =  Integer.parseInt(categorybean.getcategoryId());
            
           System.out.println("categoryname add category dao entered "+categoryname);
         
           System.out.println("categoryId add category dao entered"+categoryId);
                      try
            {
                conn = DBConnection.createConnection();
			System.out.println("add category dao entered"+conn);
			//String qry="insert into books121(book_id,book_name,author_name,category_id,image,bookdescription,book_Price,total_no_of_books,no_of_books_sold,available_books) values (BOOKSEQUENCE.nextval,?,?,?,?,?,?,?,?,?)";
			String qry="insert into category(categoryname,categoryId) values (?,?)";
                        //String qry= "insert into booktest(book_id,book_name) values (BOOKSEQUENCE.nextval,?)";
                        //String qry="insert into customers(customer_id,email_id,phonenumber,username,password,confirm_password) values (customer_id.nextval,?,?,?,?,?)";
                        System.out.println("after2222");
                        PreparedStatement st = conn.prepareStatement(qry);
                        st.setString(1, categoryname);
                       st.setInt(2, categoryId);
                      //  st.setInt(2, categoryId);
                        st.executeUpdate();
                       return "SUCCESS";
		
            
            }
            catch(Exception e)
            {
                System.out.println("exception in add catgory exception:"+e.getMessage() );
                System.out.println("exception in add category exception:"+e.getStackTrace() );
            }
            return "UNSUCCESS";
        
        }
    
}