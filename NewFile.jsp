
    <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
					
		%>
		<!DOCTYPE html>
		<html>
		<body>
<div class="topnav">
  
  <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
 </div>
</div>
  
  
		<h1>Retrieve data from database in jsp</h1>
		<table border="1">
		<tr>
		<td>productName</td>
		<td>productId</td>
		<td>productCost</td>
		<td>categoryId</td>
		<td>TotalNoOfProducts</td>
		<td>ProductsDescription</td>

		</tr>
		<%
		try{
			Connection connection = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection createConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "abc");
			                System.out.println("result"+createConnection);
			Statement st = createConnection.createStatement();
			ResultSet rs = st.executeQuery("select * from product1");
			               System.out.println("result"+rs);
		while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("productName") %></td>
		<td><%=rs.getString("productId") %></td>
		<td><%=rs.getString("productCost") %></td>

		<td><%=rs.getString("categoryId") %></td>
		<td><%=rs.getString("TotalNoOfProducts") %></td>
		<td><%=rs.getString("ProductsDescription") %></td>

	<td><a  href="#" class="btn btn-primary a-btn-slide-text mybtn">
                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                    <span><strong>Add to cart</strong></span>              
                </a> </td>
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		
		</table>
		</body>
		</html>