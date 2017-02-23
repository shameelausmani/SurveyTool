package com.project.testsurvey;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactPageController {

	@RequestMapping(value = "contactPost", method = RequestMethod.POST)
	public String towriteAndSAveData(@RequestParam(value = "name") String name,@RequestParam(value = "email") String email,
			@RequestParam(value = "message") String msg, Model model) {
		
		String to = "shameelausmani@gmail.com";
	      String from = email;
	      final String username = "mycdfit@gmail.com";
	      final String password = "mycdfit123";
	      String host = "smtp.gmail.com";

	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");
	      Session session = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	         }
	      });

	      try {
	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(from));
	         message.setRecipients(Message.RecipientType.TO,
	         InternetAddress.parse(to));
	         message.setSubject("Survey Test from:"+name + " with email:"+email);
	         message.setText(msg);
	         Transport.send(message);
	      } catch (MessagingException e) {
	            throw new RuntimeException(e);
	      }
	      return "Mainpage";
	}
}
