package com.hai.servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.hai.dao.ImageDao;
import com.hai.dao.InformationDao;
import com.hai.dao.UserDao;

import model.Information;
import model.User;

/**
 * Servlet implementation class Profile
 */
@MultipartConfig
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
			UserDao userDao = new UserDao();
			ImageDao imageDao = new ImageDao();
			InformationDao informationDao = new InformationDao();
			
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			
			System.out.println(user);
			userDao.update(user);
			request.setAttribute("message", "Profile Updated!");
			
			String uploadFolder = request.getServletContext().getRealPath("/uploads");
			Path uploadPath = Paths.get(uploadFolder);
			
			if (!Files.exists(uploadPath)) {
				Files.createDirectory(uploadPath);
			}
			
			Part imagepart = request.getPart("image");
			String readFileName = Path.of(imagepart.getSubmittedFileName()).getFileName().toString();
			if (readFileName.length() > 0) {
				String imageFilename = imageDao.randomImageName();
				imagepart.write(Paths.get(uploadPath.toString(), imageFilename).toString());
				request.setAttribute("image", imageFilename);
				
//				Image image = new Image();
//				image.setId(imageDao.findIdInsert());
//				image.setUsername(user.getUsername());
//				image.setUrl(imageFilename);
//				image.setDatetime(new Date().toString());
//				imageDao.insertImage(image);
				
				Information information = new Information();
				information.setUsername(user.getUsername());
				information.setUrlavata(imageFilename);
				information.setEmail(request.getParameter("email"));
				informationDao.update(information);
				
				
			} else {
				request.setAttribute("error", "There is no file you want to send!");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}

}
