<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid white;}
.h2{
             margin-left:617px;
}

input[type=text]  {
  width: 30%;
  padding: 12px 20px;
  margin_left: 5000px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
input[type=password] {


width: 30%;
  padding: 12px 20px;
  margin: 4px 0;
  margin_left: 5000px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: green;
  color: white;
  padding: 10px 26px;
  margin-left: 110px;
  border: none;
  cursor: pointer;
  width:20%;
}

button:hover {
  opacity: 1.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
  margin-left:10px;
}

.imgcontainer {
  
  margin: 24px 0 12px 0;
}

img.avatar {
 margin-left: 650px;
  width: 8%;
  border-radius: 8%;
}

.container {
  padding: 16px;
  margin-left:440px;
}

span.psw {
  float: center;
  padding-top: 16px;
      margin-left: 200px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
 
  }
}
</style>
</head>
<body>

<h2> Admin Login </h2>


<form action="index.html">
  <div class="imgcontainer">
    <img src="admin-login-icon-15.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br>
        
    <button type="submit">Login</button><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
</body>
</html>