package com.hai.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.hai.dao.UserDao;

import model.User;

/**
 * Servlet implementation class Profile
 */
@WebServlet(urlPatterns = {"/ProfileServlet", "/ProfileServlet/edit", "/ProfileServlet/update"})
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();
		if (url.contains("edit")) {
			request.getRequestDispatcher("/editProfile.jsp").forward(request, response);
		} else
			request.getRequestDispatcher("/profile.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();
		if (url.contains("update")) {
			update(request, response);
			request.getRequestDispatcher("/profile.jsp").forward(request, response);
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			UserDao userDao = new UserDao();
			userDao.update(user);
			request.setAttribute("user", user);
			request.setAttribute("message", "User Updated!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}

}
