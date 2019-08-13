<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
<style>
* {box-sizing: border-box;}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}
.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
  #ProductsdetailsTableId{
      border: 3px solid black; 
  }
}
</style>
    </head>
    <body>
        
<div class="topnav">
  <a class="active" href="Home">Home</a>
    <a href="Logout.jsp">Logout</a>
  <div class="search-container">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<%
                Class.forName("oracle.jdbc.driver.OracleDriver");
Connection createConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "abc");
                System.out.println("result"+createConnection);
Statement st = createConnection.createStatement();
ResultSet rs = st.executeQuery("select * from product1");
               System.out.println("result"+rs);
%>
<div id="displayimage">
    <table id="ProductdetailsTableId" class="table table-bordered" style="width:66.3%; border: 3px solid black;margin-left: 138px;">
        <tbody>
        
         <% while(rs.next()){  %>
       <% byte[] imgData = rs.getBytes("productImage"); 
        System.out.println("bytes productimage: "+imgData);
        if(imgData != null)
        {
            String encode = Base64.getEncoder().encodeToString(imgData);
            request.setAttribute("productimgBase", encode);
        }
      %>
<tr>
            <td>
                <img src="data:image/jpeg;base64,${imgBase}" alt="" width="210"
                     height="200" class="image"/></td>
            <td><%=rs.getString("productName")%></br><%=rs.getString("productCost")%></br></br><%=rs.getString("ProductsDescription")%></td>
            
            <td><a  href="#" class="btn btn-primary a-btn-slide-text mybtn">
                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                    <span><strong>Add Cart</strong></span>   
                           
                </a> </td>
                <td><a  href="Home.html" class="btn btn-primary a-btn-slide-text mybtn"   onclick=callalert()>
                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                    <span><strong>BuyNow</strong></span>   
                    
                    
                     </a> </td>
               
</tr>               
      <%}%>  
      </tbody> 
    </table>
  <script >
  function callalert() {
	  alert("Hello! Order placed!");
  
  }
  </script>  
</body>
</html>