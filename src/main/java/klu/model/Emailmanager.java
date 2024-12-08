package klu.model;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



@Service
public class Emailmanager {
	@Autowired
	JavaMailSender mailSender;
	
	public String sendEmail(String toemail, String subject, String message) {
		try {
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setFrom("2200030144cseh@gmail.com");
			mailMessage.setTo(toemail);
			mailMessage.setSubject(subject);
			mailMessage.setText(message);
			
			mailSender.send(mailMessage);
			Map<String, String>resp=new HashMap<String,String>();
			resp.put("code", "200");
			resp.put("msg", "Email sent Successfully");
			return toJSON(resp);
			
		}
		catch(Exception e) {
			Map<String, String>resp=new HashMap<String,String>();
			resp.put("code", "400");
			resp.put("msg", "ERROR while sending Email");
			return toJSON(resp);
		}
	}
	public String toJSON(Object obj) {
		GsonBuilder GB= new GsonBuilder();
		Gson G=GB.create();
		return G.toJson(obj);
	}
}
