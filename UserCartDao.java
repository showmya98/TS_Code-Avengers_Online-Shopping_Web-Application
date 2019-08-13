package Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;

import java.util.ArrayList;

import java.util.List;

import Bean.UserCartBean;

import Connection.DBConnection;

public class UserCartDao

{
	public int save(UserCartBean u) //To insert data to customer cart in DataBase
	
	{
		int status;

		
		try 
		
		{
			Connection con = DBConnection.createConnection();

			PreparedStatement ps = con.prepareStatement("insert into cart(id,productname,description1,description2,description3,quantity,price) values(?,?,?,?,?,?,?)");

			ps.setInt(1, u.getId());
			
			ps.setString(2, u.getProductname());
			
			ps.setString(3, u.getDescription1());
			
			ps.setString(4, u.getDescription2());
			
			ps.setString(5, u.getDescription2());
			
			ps.setInt(6, u.getQuantity());
			
			ps.setInt(7, u.getPrice());
			
			status = ps.executeUpdate();

			if (status > 0) 
			{
				return status;
			}
			
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}

		return 0;
	}

	public static int delete(UserCartBean u)  // To remove Products from cart
	{
		int status = 0;

		try {
			Connection con = DBConnection.createConnection();
			
			PreparedStatement ps = con.prepareStatement("delete from cart where id=?");
			
			ps.setInt(1, u.getId());
			
			status = ps.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}

		return status;
	}

	public static int deletee(UserCartBean u)  // To remove Products from cart
	{
		int status = 0;

		try {
			Connection con = DBConnection.createConnection();
			
			PreparedStatement ps = con.prepareStatement("delete from product where id=?");
			
			ps.setInt(1, u.getId());
			
			status = ps.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}

		return status;
	}

	public int update(UserCartBean u) //For updating cart's product quantity 
	{
		int status=0;
		
		
		try {
			

			Connection con = DBConnection.createConnection();
			
			PreparedStatement ps = con.prepareStatement("update cart set productname=?,description1=?,description2=?,description3=?,quantity=?,price=? where id=?");

			ps.setString(1, u.getProductname());
			
			ps.setString(2, u.getDescription1());
			
			ps.setString(3, u.getDescription2());
			
			ps.setString(4, u.getDescription3());
			
			ps.setInt(5, u.getQuantity());
			
			ps.setInt(6, u.getPrice());
			
			ps.setInt(7, u.getId());

			status = ps.executeUpdate();

		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return status;
	}

	public static List<UserCartBean> getAllRecords() // Retriving data from cart Table
	
	{
		List<UserCartBean> list = new ArrayList<UserCartBean>();

		try {
			
			Connection con = DBConnection.createConnection();
			
			PreparedStatement ps = con.prepareStatement("select * from cart");
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) 
			
			{
				
				UserCartBean u = new UserCartBean();
				
				u.setId(rs.getInt("id"));
				
				u.setProductname(rs.getString("productName"));
				
				u.setDescription1(rs.getString("Description1"));
				
				u.setDescription2(rs.getString("Description2"));
				
				u.setDescription3(rs.getString("Description3"));
				
				u.setQuantity(rs.getInt("quantity"));
				
				u.setPrice(rs.getInt("price"));

				list.add(u);
				
			}
			
		}
		
		catch (Exception e) 
		
		{
			
			System.out.println(e);
		}
		
		return list;
	}

	public static UserCartBean getRecordById(int id) 
	{
		UserCartBean u = null;
		
		try
		
		{
			Connection con = DBConnection.createConnection();
			
			PreparedStatement ps = con.prepareStatement("select * from cart where id=?");
			
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) 
			{
				u = new UserCartBean();
				
				u.setId(rs.getInt("id"));
				
				u.setProductname(rs.getString("productName"));
				
				u.setDescription1(rs.getString("Description1"));
				
				u.setDescription2(rs.getString("Description2"));
				
				u.setDescription3(rs.getString("Description3"));
				
				u.setQuantity(rs.getInt("quantity"));
				
				u.setPrice(rs.getInt("price"));
				

			}
			
		} 
		catch (Exception e) 
		
		{
			
			System.out.println(e);
		
		}
		
		return u;
	}

}

