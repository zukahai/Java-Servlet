package com.hai.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hai.cookie.SolveCookie;
import com.hai.dao.ImageDao;
import com.hai.dao.UserDao;

import model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserDao userDao = new UserDao();
		
		User user = userDao.checkLogin(username, password);
		if (user != null) {
			request.setAttribute("username", user.getUsername());
			String fullname = user.getFullname();
			request.setAttribute("fullname", fullname);
			ImageDao imageDao = new ImageDao();
			request.setAttribute("Images", imageDao.findByUsername(username));
			
			SolveCookie solveCookie = new SolveCookie(request, response);

			Cookie cookie = new Cookie("username", username);
			cookie.setMaxAge(60 * 60 * 24);
			cookie.setPath("/");
			response.addCookie(cookie);
			
			request.getRequestDispatcher("upload.jsp").forward(request, response);
		}
		else {
			request.setAttribute("error", "Login failer!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
			
	}
}
