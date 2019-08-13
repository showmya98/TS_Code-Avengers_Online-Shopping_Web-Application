<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
	
	<%@page import="Dao.AddProductDao,Bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@page import="Controller.AdminLoginServlet,java.util.*"%>
	<%@page import="Dao.UserCartDao,Bean.UserCartBean,java.util.*"%>
	<%@ page import="java.sql.*"%>
 
	<%
		List<UserCartBean> list = UserCartDao.getAllRecords();
		request.setAttribute("list", list);
	%>
	<div class="hari">

		<img src="Product images\thankyou.png" alt="legend" style="width: 30%">

		<table border="1" width="90%">
			<tr>
				<th>Name</th>
				<th>Quantity</th>
				<th>Add Quantity</th>
				<th>Price</th>
				
				<th>Delete</th>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td>${u.getProductname()}</td>
					<td>${u.getQuantity()}</td>
					<td><a href="IncreaseCartQuantity.jsp?id=${u.getId()}">Increase
							Quantity</a></td>
					<td>${u.getPrice()}</td>
					
					<td><a href="RemoveCartProduct.jsp?id=${u.getId()}">Remove</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	
	
	<br>
	<br>
	<br>
	<br>

	<%
		String connectionURL = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pass = "abc";
		Connection con = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(connectionURL, user, pass);

			Statement st = con.createStatement();

			String strQuery = "select sum(price)from cart";
			ResultSet rs = st.executeQuery(strQuery);
			String Countrun = "";
			while (rs.next()) {
				Countrun = rs.getString(1);
				out.println("Total Run :" + Countrun);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

	<%
		Object something = request.getSession().getAttribute("USERNAME");
	%>
	<%
		Object everything = request.getSession().getAttribute("PASSWORD");
	%>

	<div class="eee">

		<form action="valid" method="post">

			<table>
				<input type="hidden" name="uname" value="<%=something%>" />
				<input type="hidden" name="psw" value="<%=everything%>" />

				</tr>

			</table>
				<input type="submit" value="Cash on delivery" />
		</form>
		<br>
		<form action="validate" method="post">

			<table>
				<input type="hidden" name="uname" value="<%=something%>" />
				<input type="hidden" name="psw" value="<%=everything%>" />

				</tr>

			</table>
				<input type="submit" value="Online - payment" />
		</form>
	</div>
	<br>
	<br>
	<jsp:include page="Footer.jsp"></jsp:include>

</body>

</html>
