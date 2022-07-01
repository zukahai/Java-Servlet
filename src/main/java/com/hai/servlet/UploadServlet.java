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

import com.hai.cookie.SolveCookie;
import com.hai.dao.ImageDao;
import com.hai.dao.UserDao;

import model.Image;
import model.User;

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/UploadServlet", "/UploadServlet/insert", "/UploadServlet/delete"})
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GET(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		
		if (url.contains("insert")) {
			insert(request, response);
		} else if (url.contains("delete")) {
			delete(request, response);
		}
		
		request.getRequestDispatcher("/upload.jsp").forward(request, response);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImageDao imageDao = new ImageDao();
		UserDao userDao = new UserDao();
		String username = "Error";
		
		Cookie[] cookies = request.getCookies();
				
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("username"))
					username = c.getValue();
			}
		}
		
		String url = request.getParameter("url");
		Image image = imageDao.findByURL(url);
		imageDao.delete(image);
		request.setAttribute("Images", imageDao.findByUsername(username));
		request.setAttribute("username", username);
		
		User user = userDao.findById(username);
		String fullname = user.getFullname();
		request.setAttribute("fullname", fullname);
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Cac du lieu duoc xu li se luu vao folder uploads o server
		// D:\Java\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Servlet\
		ImageDao imageDao = new ImageDao();
		UserDao userDao = new UserDao();
		
		String uploadFolder = request.getServletContext().getRealPath("/uploads");
		Path uploadPath = Paths.get(uploadFolder);
		
		if (!Files.exists(uploadPath)) {
			Files.createDirectory(uploadPath);
		}
		
		String username = "Error";
		
		Cookie[] cookies = request.getCookies();
				
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("username"))
					username = c.getValue();
			}
		}
		
		Part imagepart = request.getPart("image");
		String readFileName = Path.of(imagepart.getSubmittedFileName()).getFileName().toString();
		if (readFileName.length() > 0) {
			String imageFilename = imageDao.randomImageName();
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
		
		request.setAttribute("Images", imageDao.findByUsername(username));
		request.setAttribute("username", username);
		
		User user = userDao.findById(username);
		String fullname = user.getFullname();
		request.setAttribute("fullname", fullname);
		
		
//		Part documentPart = request.getPart("document");
//		String documentFilename = Path.of(documentPart.getSubmittedFileName()).getFileName().toString();
//		documentPart.write(Paths.get(uploadPath.toString(), documentFilename).toString());
//		request.setAttribute("document", documentFilename);
		
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
		request.setAttribute("Images", imageDao.findByUsername(username));
		request.setAttribute("username", username);
		
		UserDao userDao = new UserDao();
		User user = userDao.findById(username);
		String fullname = user.getFullname();
		request.setAttribute("fullname", fullname);
		
		request.getRequestDispatcher("/upload.jsp").forward(request, response);
	}
}
