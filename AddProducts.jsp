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
background-color: #bc3232 !important;
border:none;
}
.main-cls
{
   margin: 20px;
}

.bg-light
{
background-color: #bc3232 !important;
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

background-color:black !important;
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
 .container {
     margin-top: 100px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    margin-bottom: 30px;
}
 #medicineId
         {
         width: 100%;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
         #Medicinename
         {
         width: 100%;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
         #MedicineCost
         {
         width: 100%;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
          #MyFile
         {
         width: 100%;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
         #category
         {
         width: 100%;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
          #total
         {
         width: 100%;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
          #description
         {
         width: 100%;
         height:100px;
         padding: 12px 20px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
 #cancel
 {
         margin-left: -301px;
    /* margin-bottom: 36px; */
    margin-top: 1px;
    padding: 4px 5px;
 margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
 background-color:slategrey;
  background: #404040;
      color: #fff !important;
 width:73px;
 margin-left: 169px;
}
 
 #Add
 {
 padding: 4px 5px;
 margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  background-color:slategrey;
  background: #bc3232;
      color: #fff !important;
 width:16%;
 margin-left: 169px;
}
</style>
<body>
<center><div><h1>Add product details</h1></div></center>
<div class="container" id="maincontainer">
    <form enctype="multipart/form-data" action="Addproduct" method="post" >
    
        <div class="row">
      
        
      
      <div class="col-10">
 <label for="productName" style="width:130px;">Medicine Name</label>
        <input type="text" id="productName" name="productName" style="width:200px;" placeholder="product  Name ">
      </div>
 <div class="col-2">
    </div>
</div>
 <div class="row">
 <div class="col-10">
 
 <label for="productCost" style="width: 130px;">product Cost</label>
        <input type=text" id="ProductCost" name="productCost" style="width:200px;"  placeholder="Cost"/>
      </div>
   
<div class="col-2">
      
    </div>
</div>
<div class="row">
<div class="col-10">
<label for="productimage" style="width:130px;">product Image</label><span>
<input type="file" name="productimage" id="myFile" style="display:inline;width:200px;">
<!--input type="submit" value="Upload Image" name="submit"></span-->
 </div>
<div class="col-2">
 </div>
 
    
<div class="col-2">
      
    </div>
</div>


   <div class="row">
      <div class="col-10">
 <label for="category"style="width: 130px;">CategoryId</label>
        <select id="category" name="category" style="width:200px;">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
 
        </select>
      </div>
 <div class="col-2">
 </div>
    </div>
        <div class="row">
<div class="col-10">
<label for="TotalNoOfProducts" style="width:130px;">TotalNoOfProduct</label><span>
<input type="text" name="TotalNoOfProducts" id="total" style="display:inline;width:200px;" placeholder="TotalNoOfProducts"/>

 </div>
<div class="col-2">
 </div>
 
    
<div class="col-2">
      
    </div>
</div>
        <div class="row">
<div class="col-10">
<label for="ProductsDescription" style="width:130px;">ProductsDescription</label><span>
<input type="text" name="ProductDescription" id="description" style="display:inline;width:200px;" placeholder="ProductDescription"/>

 </div>
<div class="col-2">
 </div>
 
    
<div class="col-2">
      
    </div>
</div>
    <div class="row">


<div class="col-6">
<input type="submit"  value="Add" id="Add" >
</div>
<div class="col-3">
             <input type="button"  value="cancel" id="cancel" onclick="openPage('AdminHomePage.jsp')"/>
</div>
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
