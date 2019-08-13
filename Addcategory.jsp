<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <style>
      #maincontainer
 {
	    border-style: groove ;
 
 }
 .homeBtnCls
{
	background-color: #5F9EA0 !important;
	border:none;
}
.main-cls
{
   margin: 20px;
}
	
.bg-light
{
		background-color: #5F9EA0 !important;
}
.fontcls
{
	color:white !important;
}
.fa-home
{
	color:white;
}
.nav > li > a:hover 
{

	background-color:#5F9EA0 !important;
}
.btn-group-lg>.btn, .btn-lg 
{
    line-height: normal !important;
}
.btn-info 
{
    background-color: #404040 !important;
}


 #maincontainer
 {
	    border-style: groove ;
 
 }
 #cancel
 {
         margin-left: -301px;
    /* margin-bottom: 36px; */
    margin-top: 1px;
    padding: 4px 5px;
 // margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  //background-color:slategrey;
  background: #404040;
      color: #fff !important;
	  width:73px;
	  //margin-left: 169px;
}
 
 #Add
 {
 padding: 4px 5px;
 // margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  //background-color:slategrey;
  background: #5F9EA0;
      color: #fff !important;
	  width:16%;
	  margin-left: 169px;
}
</style>
<body>
<div class="main-cls">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
	<a href="#" class="navbar-brand fontcls">Online shopping</a>
		 <!--a class="navbar-brand" href="#"><i class="fas fa-home"></i></a-->
		 <!--button class="navbar-brand homeBtnCls" onclick=" Homefunc();"><span class="fas fa-home"></span></button>
		 <!--button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button-->
        <!--div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
			   <li class="nav-item">
                    <a href="#" class="nav-link fontcls">Home</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link fontcls">Profile</a>
                        </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle fontcls" data-toggle="dropdown">Category</a>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">Men's</a>
                        <a href="#" class="dropdown-item">Womens's</a>
                        <a href="#" class="dropdown-item">Kiddswear</a>
                        <a href="#"class="dropdown-item">Accessories</a>
						<!--div class="dropdown-divider"></div-->
                        
                    <!--/div>
                </li>
            </ul>
			        </div-->
    </nav>
</div>
<div class="container" id="maincontainer">
    <form action="Addcategory" method="post" >
    <div class="row">
		<div class="col-10">
			<label for="categoryname" style="width: 130px;">categoryname</label>
			<input type="text" id="cname" name="categoryname" style="width:200px;" placeholder="category name..">
		
      </div>
	  <div class="col-2">
	  </div>
	</div>
          
        
      
      <div class="col-10">
	  <label for="category"style="width: 120px;">CategoryId</label>
        <select id="categoryId" name="categoryId" style="width:200px;">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
		  <option value="4">4</option>
        </select>
      </div>
	  <div class="col-2">
	  </div>
    </div>
	    
	      <div class="row">
		
	
	<div class="col-6">
		<input type="submit"  value="Add" id="Add" >
	 </div>
	
	  <div class="col-3">
             <input type="button"  value="cancel" id="cancel" onclick="openPage('index.html')"/>
	 </div>
	 
    </form> 
  
</div>
<script>
   function openPage(pageURL)
        {
            alert('this is working');
            window.location.href=pageURL;
        }
</script>

</body>
</head>

</html>