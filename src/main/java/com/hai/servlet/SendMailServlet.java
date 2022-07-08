package com.hai.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SendMailServlet
 */
@WebServlet("/SendMailServlet")
public class SendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Dang nhap email
		Properties props = new Properties();
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.starttls.enable", "true");
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.port", "587");
		
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.starttls.required", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		// ket noi smtp server
		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				String username = "pdhai.18it5@sict.udn.vn";
				String password = "cnttcntt123";
				return new PasswordAuthentication(username, password);
			}
		});
		
		MimeMessage message = new MimeMessage(session);
		try {
			
			message.setFrom(new InternetAddress("pdhai.18it5@sict.udn.vn"));
			message.setRecipients(Message.RecipientType.TO, "vannambsw@gmail.com");
			message.setSubject("HaiZuka | Mã lấy lại mật khẩu");
			
			String mess = "";
			mess = mess + "<div style='background-color:#222222; height: 200px; width: 100%; border: 5px solid cyan; text-align: center; font-family: \"Helvetica\", \"Courier New\", monospace; '>";
			mess = mess + "<h2 style=\"color: #fff\">Xin chào Nam đep trai</h2>";
			mess = mess + "<h3 style=\"color: #fff\">Mã lấy lại mật khẩu của bạn là:</h3>";
			mess = mess + "<h1 style=\"color:red\">123456</h1>";
			mess = mess + "</div>";
			message.setContent(mess, "text/html; charset=utf-8");
//			message.setText(mess);
			message.setReplyTo(message.getFrom());
			Transport.send(message);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			
			response.getWriter().append(e.getMessage());
		}
		response.getWriter().append("Success ");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
