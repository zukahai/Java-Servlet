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

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("upload.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Cac du lieu duoc xu li se luu vao folder uploads o server
		String uploadFolder = request.getServletContext().getRealPath("/uploads");
		Path uploadPath = Paths.get(uploadFolder);
		
		if (!Files.exists(uploadPath)) {
			Files.createDirectory(uploadPath);
		}
		Part imagepart = request.getPart("image");
		Part documentPart = request.getPart("document");
		
		//Tra ve ten File nguoi dung da gui den
		String imageFilename = Path.of(imagepart.getSubmittedFileName()).getFileName().toString();
		String documentFilename = Path.of(documentPart.getSubmittedFileName()).getFileName().toString();
		
		imagepart.write(Paths.get(uploadPath.toString(), imageFilename).toString());
		documentPart.write(Paths.get(uploadPath.toString(), documentFilename).toString());
		
		request.setAttribute("image", imageFilename);
		request.setAttribute("document", documentFilename);
		
		request.getRequestDispatcher("resultUpload.jsp").forward(request, response);
	}
}
