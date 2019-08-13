package Controller;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import Bean.UserCartBean;

import Dao.UserCartDao;

@WebServlet("/helloo") // getting values from IncreaseCartQuantity.jsp page

public class UserCartServlet extends HttpServlet

{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{

		String idd = request.getParameter("id");
		
		Integer id = Integer.parseInt(idd);

		String productname = request.getParameter("name");
		
		String description1 = request.getParameter("password");
		
		String description2 = request.getParameter("email");
		
		String description3 = request.getParameter("mail");

		String qty = request.getParameter("country");
		
		Integer quantity = Integer.parseInt(qty);

		String pricee = request.getParameter("ail");
		
		Integer price = Integer.parseInt(pricee);
		
		int i = quantity * price;

		UserCartBean UserCartBean = new UserCartBean(); // Setting values to UserCartBean

		UserCartBean.setId(id);
		
		UserCartBean.setProductname(productname);
		
		UserCartBean.setDescription1(description1);
		
		UserCartBean.setDescription2(description2);
		
		UserCartBean.setDescription3(description3);
		
		UserCartBean.setQuantity(quantity);
		
		UserCartBean.setPrice(i);

		UserCartDao UserCartDao = new UserCartDao();

		int userValidate = UserCartDao.update(UserCartBean); // updated result from update method in UserCartDao

		if (userValidate > 0) 
		{

			request.setAttribute("subscribedddd", true);

			request.getRequestDispatcher("/UserCart.jsp").forward(request, response);

		} 
		else 
		{

			request.setAttribute("subscribedddd", false);

			request.getRequestDispatcher("/UserCart.jsp").forward(request, response);
		}
	}

}
