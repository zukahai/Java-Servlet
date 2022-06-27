package com.hai.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

//import org.apache.commons.beanutils.BeanUtils;

import com.hai.dao.UserDao;

import model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet(urlPatterns = {"/UserServlet", "/UserServlet/insert", "/UserServlet/update",
		"/UserServlet/delete", "/UserServlet/reset", "/UserServlet/edit"})
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static int limit = 10;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		User user = null;
		
		if (url.contains("update")) {
			update(request, response);
		} else if (url.contains("delete")) {
			delete(request, response);
		} else if (url.contains("reset")) {
			user = new User();
			request.setAttribute("user", user);
		} else if (url.contains("edit")) {
			edit(request, response);
		} 
		String page = request.getParameter("page");
		if (page != null) {
			findAll(request, response, Integer.parseInt(page));
		} else {
			findAll(request, response, 1);
		}
		request.getRequestDispatcher("/user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		
		if (url.contains("insert")) {
			insert(request, response);
		} else if (url.contains("update")) {
			update(request, response);
		} else if (url.contains("delete")) {
			delete(request, response);
		} else if (url.contains("reset")) {
			
		} else if (url.contains("edit")) {
			edit(request, response);
		}
		findAll(request, response, 1);
		request.getRequestDispatcher("/user.jsp").forward(request, response);
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println(user.display());
			UserDao userDao = new UserDao();
			userDao.insertUser(user);
			request.setAttribute("message", "User inserted!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UserDao userDao = new UserDao();
			List<User> list = userDao.findAll();
			System.out.println(list);
			request.setAttribute("users", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("errol", e.getMessage());
		}
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response, int page) throws ServletException, IOException {
		try {
			UserDao userDao = new UserDao();
			List<User> list = userDao.findAll(page - 1, limit);
			System.out.println(list);
			request.setAttribute("users", list);
			request.setAttribute("page", page);
			System.out.println(userDao.NumberOfpage(limit));
			request.setAttribute("numberofpage", userDao.NumberOfpage(limit));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("errol", e.getMessage());
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UserDao userDao = new UserDao();
			String username = request.getParameter("username");
			User user = userDao.findById(username);
			request.setAttribute("user", user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println(user.display());
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
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = request.getParameter("username");
			UserDao userDao = new UserDao();
			userDao.deleteById(username);

			request.setAttribute("user", new User());
			request.setAttribute("message", "User Deleted!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}

}
