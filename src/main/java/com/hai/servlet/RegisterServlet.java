package com.hai.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.hai.dao.UserDao;

import model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(urlPatterns = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		try {
			BeanUtils.populate(user, request.getParameterMap());
			String password2 = request.getParameter("password2");
			if (user.getPassword().equals(password2)) {
				UserDao userDao = new UserDao();
				userDao.insertUser(user);
				request.setAttribute("user", user);
				request.setAttribute("message", "Register success!");
			}
			else {
				request.setAttribute("user", user);
				request.setAttribute("error", "Register failer!");
			}
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			request.setAttribute("error", e.getMessage());
		}
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}
}
