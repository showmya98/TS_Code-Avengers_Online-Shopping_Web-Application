<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Medicine</title>
   </head>
   <body>
      <%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
      <%!String url = "jdbc:oracle:thin:@localhost:1522:xe";%>
      <%!String user = "system";%>
      <%!String psw = "abc";%>
      <div class="navbar" >       
         <a href="index.html">Home</a> 
      </div>
      <form action="DeleteMedicine" method=post onsubmit = "return validate()" 
         style="border:1px solid #ccc">
         <br><br><br><br>
         <h1 align="center">Delete Medicine</h1>
         <div align="center" class="container">
            <label for="medicinenamedelete"><b>Medicine Name</b></label>
            <%
            Connection createConnection = null;
               PreparedStatement ps = null;
               try
               {
               Class.forName(driverName);
               createConnection= DriverManager.getConnection(url,user,psw);
               String sql = "SELECT Productname,productId FROM product1";
               ps = createConnection.prepareStatement(sql);
               ResultSet rs = ps.executeQuery(); 
               %>
            <select name=product>
               <option value="0">select Medicine</option>
               <%
                  while(rs.next())
                  {
                  String MedicineName = rs.getString(1);
                  String MedicineId = rs.getString(2);
                  %>
               <option value="<%=CategoryId%>"><%=CategoryName%></option>
               <%
                  }
                  %>
            </select>
            <br></br>
            <%
               }
               catch(SQLException sqe)
               { 
               out.println(sqe);
               }
               %>
            <button type="submit">Delete</button>
         </div>
         <div align="center" class="container">
            <a href="AdminHome.jsp">Cancel</a>
         </div>
      </form>
   </body>
</html>
<style>
   .navbar {
   overflow: hidden;
   background-color:#33CDF7;
   font-family: Arial, Helvetica, sans-serif;
   }
   .navbar {
   overflow: hidden;
   background-color:#33CDF7;
   font-family: Arial, Helvetica, sans-serif;
   }
   .navbar a {
   float: left;
   font-size: 18px;
   color: black;
   text-align: center;
   padding: 16px 20px;
   text-decoration: none;
   }
   .navbar a:hover {
   background-color:#F38A14;
   }
   body {font-family: Arial, Helvetica, sans-serif;}
   form {background: url('background2.jpg');
   background-size: 1400px 800px;
   border: 3px solid #f1f1f1;
   width: 100%;
   margin-left: 1px;
   margin-top: 1px;
   height: 637px;
   }
   input[type=text]{
   width: 30%;
   padding: 12px 20px;
   margin: 8px 0;
   display: inline-block;
   border: 1px solid #ccc;
   box-sizing: border-box;
   }
   select,option{
   width:30%;
   padding: 12px 20px;
   margin: 8px 0;
   display: inline-block;
   border: 1px solid #ccc;
   box-sizing: border-box;
   }
   button {
   background-color: #4CAF50;
   color: white;
   padding: 15px 20px;
   margin: 8px 0;
   border: none;
   cursor: pointer;
   width: 10%;
   }
   button:hover {
   opacity: 0.8;
   }
   .cancelbtn {
   width: auto;
   padding: 10px 18px;
   background-color: white;
   }
   .container {
   padding: 30px;
   }
   /* Change styles cancel button and Register button on extra small screens */
   @media screen and (max-width: 300px) {
   .a {
   border: none;
   float: left;
   font-size: 16px;
   color: black;
   text-align: center;
   padding: 14px 16px;
   text-decoration: none;
   }
   }
   .footer {
   width: 1332px;
   height: 220px;
   background:#f1f1f1;
   }
   .cpy {
   margin-left:none;
   text-align:left;
   color:black;
   font-size:20px;
   }
   .cent {
   margin-left: 30%;
   padding: 14px 16px;
   }
</style>