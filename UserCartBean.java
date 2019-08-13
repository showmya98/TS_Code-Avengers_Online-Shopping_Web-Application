package Bean;

public class UserCartBean 
			//Bean for  UserCartServlet in Controller to  UserCartDao in DAO

{

	private int id, price, quantity;
	
	private String productname, description1, description2, description3;

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public int getPrice() 
	{
		return price;
	}

	public void setPrice(int price) 
	{
		this.price = price;
	}

	public int getQuantity() 
	{
		return quantity;
	}

	public void setQuantity(int quantity) 
	{
		this.quantity = quantity;
	}

	public String getProductname() 
	{
		return productname;
	}

	public void setProductname(String productname) 
	{
		this.productname = productname;
	}

	public String getDescription1() 
	{
		return description1;
	}

	public void setDescription1(String description1) 
	{
		this.description1 = description1;
	}

	public String getDescription2() 
	{
		return description2;
	}

	public void setDescription2(String description2) 
	{
		this.description2 = description2;
	}

	public String getDescription3() 
	{
		return description3;
	}

	public void setDescription3(String description3) 
	{
		this.description3 = description3;
	}

}