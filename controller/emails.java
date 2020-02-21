package controller;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class emails extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest x, HttpServletResponse y)
	{
		try
		{
			final String fromEmail = "pavankumar1597@gmail.com";	// Sender's Email ID.
			final String password = "1jb15me069@sjbit";			// Sender's Email Password.
			String toEmail = x.getParameter("toMail");	// Receiver's Email ID.

			String subject = "DO NOT REPLY: Reset Password Link";		// Email Subject Line
			String text = "http://localhost:8081/1_Sir's_Bank_App/ResetPassword.html";	//Email Text (Content)
			
			HttpSession hs = x.getSession();
			hs.setAttribute("toEmail", toEmail);

			// Creating Session Object
			
			Properties prop = new Properties();
			prop.put("mail.smtp.host","smtp.gmail.com");
			prop.put("mail.smtp.port",587);		// 587 -> Email Port Number
			prop.put("mail.smtp.auth","true");
			prop.put("mail.smtp.starttls.enable","true");
			
			Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator()
			{
				protected PasswordAuthentication getPasswordAuthentication()
				{
					// Sender's Email ID & password is encapsulated inside "SendersCredentials.java"
					return new PasswordAuthentication(fromEmail, password);
				}
			});

			// Composing the Email
			
			MimeMessage msg = new MimeMessage(session);

			msg.setFrom(new InternetAddress(fromEmail));
			msg.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
			msg.setSubject(subject);  
			msg.setText(text);  

			Transport.send(msg);	// Sending the Email

			System.out.println("The Reset Password Link Has Been Sent To Your Email!");
			
			PrintWriter p = y.getWriter();
			p.println("The Reset Password Link Has Been Sent To Your Email!");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}