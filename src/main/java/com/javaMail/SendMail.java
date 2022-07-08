package com.javaMail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	public SendMail() {
		// thong so ket noi smtp server
		Properties props = new Properties();
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.starttls", "true");
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.port", "587");
		// ket noi smtp server
		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				String username = "pdhai.18it5@sict.udn.vn";
				String password = "";
				return new PasswordAuthentication(username, password);
			}
		});
		
		MimeMessage message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress("pdhai.18it5@sict.udn.vn"));
			message.setRecipients(Message.RecipientType.TO, "duchai2712@gmail.com");
			message.setSubject("Test java mail");
			message.setText("Noo dung test");
			message.setReplyTo(message.getFrom());
			Transport.send(message);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
