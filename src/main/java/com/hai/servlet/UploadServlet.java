package com.hai.servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.hai.dao.ImageDao;
import com.hai.dao.UserDao;
import com.hai.model.Image;
import com.hai.model.User;

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
@WebServlet({"/UploadServlet", "/UploadServlet/insert", "/UploadServlet/delete"})
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int limit = 6;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GET(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImageDao imageDao = new ImageDao();
		UserDao userDao = new UserDao();
		
		String url = request.getRequestURL().toString();
		
		String username = "Error";
		
		Cookie[] cookies = request.getCookies();
				
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("username"))
					username = c.getValue();
			}
		}
		
		if (url.contains("insert")) {
			insert(request, response, username);
		} else if (url.contains("delete")) {
			delete(request, response);
		}
		
		
		User user = userDao.findById(username);
		String fullname = user.getFullname();
		
		request.setAttribute("Images", imageDao.findByUsername(username, 0, limit));
		request.setAttribute("username", username);
		request.setAttribute("fullname", fullname);
		request.setAttribute("page", 1);
		request.setAttribute("numberofpage", imageDao.NumberOfpage(limit, username));
		
		request.getRequestDispatcher("/upload.jsp").forward(request, response);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImageDao imageDao = new ImageDao();
		String url = request.getParameter("url");
		Image image = imageDao.findByURL(url);
		imageDao.delete(image);
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response, String username) throws ServletException, IOException {
		uploadFile(request, response, username);
	}
	
	protected void uploadFile(HttpServletRequest request, HttpServletResponse response, String username) throws ServletException, IOException {
		//Cac du lieu duoc xu li se luu vao folder uploads o server
		// D:\Java\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Servlet\
		ImageDao imageDao = new ImageDao();
		String uploadFolder = request.getServletContext().getRealPath("/uploads");
		System.out.println(uploadFolder);
		Path uploadPath = Paths.get(uploadFolder);
		
		if (!Files.exists(uploadPath)) {
			Files.createDirectory(uploadPath);
		}
		Part imagepart = request.getPart("image");
		String readFileName = Path.of(imagepart.getSubmittedFileName()).getFileName().toString();
		if (readFileName.length() > 0) {
			String imageFilename = imageDao.randomImageName(username);
			imagepart.write(Paths.get(uploadPath.toString(), imageFilename).toString());
			request.setAttribute("image", imageFilename);
			
			Image image = new Image();
			image.setId(imageDao.findIdInsert());
			image.setUsername(username);
			image.setUrl(imageFilename);
			image.setDatetime(new Date().toString());
			imageDao.insertImage(image);
		} else {
			request.setAttribute("error", "There is no file you want to send!");
		}
	}
	
	protected void GET(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = "Error";
		
		Cookie[] cookies = request.getCookies();
				
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("username"))
					username = c.getValue();
			}
		}
		
		// check login
		if (username.equals("Error")) {
			request.setAttribute("message", "Please login to upload file!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
		ImageDao imageDao = new ImageDao();
		String textPage = request.getParameter("page");
		int page = (textPage == null) ? 1 : Integer.parseInt(textPage);
		
		UserDao userDao = new UserDao();
		User user = userDao.findById(username);
		String fullname = user.getFullname();
		
		request.setAttribute("Images", imageDao.findByUsername(username, page - 1, limit));
		request.setAttribute("username", username);
		request.setAttribute("page", page);
		request.setAttribute("fullname", fullname);
		request.setAttribute("numberofpage", imageDao.NumberOfpage(limit, username));
		
		request.getRequestDispatcher("/upload.jsp").forward(request, response);
	}
}
