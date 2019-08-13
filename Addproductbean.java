/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.InputStream;

public class Addproductbean {
  private String productName;
    private String ProductCost;
    private InputStream  productimage;
    private String categoryId;
    private String TotalNoOfProducts;
    private String ProductsDescription;
    
public String getproductName() {
return productName;
}

public void setproductName(String productName) {
	productName = productName;
}
        public String getTotalNoOfProducts() {
return TotalNoOfProducts ;
}

public void setTotalNoOfProducts(String TotalNoOfProducts) {
this.TotalNoOfProducts = TotalNoOfProducts;
}
         public String getProductsDescription() {
return  ProductsDescription;
}

public void setProductsDescription(String ProductsDescription) {
this.ProductsDescription = ProductsDescription;
}

public String getProductCost() {
return ProductCost;
}

public void setProductCost(String ProductCost) {
	ProductCost = ProductCost;
}

public String getCategoryId() {
return categoryId;
}

public void setCategoryId(String categoryId) {
this.categoryId = categoryId;
}
public InputStream getBytes() 
{
return productimage;
}

public void setBytes(InputStream productimage) 
{
this.productimage = productimage;
}
  
   
    
}
