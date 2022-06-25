package com.hai.servlet;

import java.io.IOException;
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
@WebServlet(urlPatterns = {"UserServlet", "UserServlet/insert", "UserServlet/update",
		"UserServlet/delete", "UserServlet/reset"})
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();
		request.setAttribute("user", user);
		request.getRequestDispatcher("/User.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			UserDao userDao = new UserDao();
			user.setUsername("kk");
			user.setPassword("3");
			user.setFullname("PPP");
			user.setAge(22);
			userDao.insertUser(user);
			request.setAttribute("message", "User inserted!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("errol", e.getMessage());
		}
	}

}
