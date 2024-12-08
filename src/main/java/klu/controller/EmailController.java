package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import klu.model.Email;
import klu.model.Emailmanager;

@RestController
@RequestMapping("/email")
public class EmailController {
	

	
	
		@Autowired
		Emailmanager EM;
		
		@PostMapping("/send")
		public String send(@RequestBody Email E)
		{
			return EM.sendEmail(E.getToemail(), E.getSubject(), E.getMessage());
 
		}
		
		
		
	}

