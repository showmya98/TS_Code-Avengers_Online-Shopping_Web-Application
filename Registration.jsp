<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<form action="post">
  <div class="container">
    <h1>Registration form</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <label for="your name"><b>FirstName</b></label>
    <input type="text" placeholder="Enter first Name" name="name" required>
    
    <label for="your name"><b>LastName</b></label>
    <input type="text" placeholder="Enter last Name" name="name" required>
    
    
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
   
   <label for="your age"><b>Age</b></label>
    <input type="text" placeholder="Enter Age" name="age" required>
    
    <label for="gender"><b>Gender</b></label>
   <p>Please select your gender:</p>
  <input type="radio" name="gender" value="male"> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other<br>  
   
    
     <label for="your mobile number"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile number" name="mobile Number" required>
   
   <label for="your address"><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="address" required>
    
   
    
    <hr>
    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container Login">
 
  
    <p>Already have an account?</td> <a href="Customerlogin.jsp">Login</a>.</p>
  
  </div>
</form>

</body>
</html>