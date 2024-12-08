package klu.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import klu.controller.EmailController;
import klu.resources.AdminRepository;
import klu.resources.DietRepository;
import klu.resources.Mealrepository;
import klu.resources.UserRepository;

@Service
public class UserManager {

	@Autowired
	UserRepository ur;
	@Autowired
	DietRepository dr;
	@Autowired
	Emailmanager em;
	@Autowired
	Mealrepository mr;
	@Autowired
	AdminRepository ar;
	
	public String usersignup(Signup S) {
		
		
		
		
		if(ur.getEmail(S.getEmail())==0) {
			S.setRole(1);
		ur.save(S); //Insert Operation
		 // Sending a welcome email
        String subject = "Welcome to FitPlate!";
        String message = "Hi " + S.getFname() + ",\n\n" +
                "Thank you for signing up with FitPlate! We're excited to have you onboard.\n\n" +
                "Best regards,\nThe FitPlate Team";
        try {
			String emailResponse = em.sendEmail(S.getEmail(), subject, message);
			System.out.println(emailResponse);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		
		Map<String, String>resp=new HashMap<String,String>();
		resp.put("code", "200");
		resp.put("msg", "Signup Successful");
		return toJSON(resp);
	}
		else {
			Map<String, String>resp=new HashMap<String,String>();
			resp.put("code", "401");
			resp.put("msg", "User already exists!!");
			return toJSON(resp);
		}
	
}
	public String userLogin(String email, String password) {
		
        int user = ur.findByEmail(email,password);
        //System.out.println("um method");
        Map<String, String> resp = new HashMap<>();
        
        if("admin@gmail.com".equals(email) && "admin".equals(password)) {
        	
			resp.put("code","100");
			resp.put("msg","Admin login Successful");
			
			return toJSON(resp);
		}
        if (user != 0) {
      
                resp.put("code", "200");
                resp.put("msg", "Login Successful");
           
            
        } else {
            resp.put("code", "404");
            resp.put("msg", "User not found");
        }
        
        return toJSON(resp);
    }
	public String toJSON(Object obj) {
		GsonBuilder GB= new GsonBuilder();
		Gson G=GB.create();
		return G.toJson(obj);
	}
	
	public Signup checkUser(String email,String password) {
		return ur.findByEmailAndPassword(email, password);
	}
	
	public String updateprofile(User U) {
		ar.save(U);
		Map<String, String>resp=new HashMap<String,String>();
		resp.put("code", "200");
		resp.put("msg", "profile updated");
		return toJSON(resp);
	}
	public Dietplan finddietplanbyid(long id) {
		//System.out.println(dr.getdietbyid(id));
		return dr.getdietbyid(id);
	}
	
	public String addmeal(meals m) {
		mr.save(m);
		return "meal added successfully";
	}
	public List<meals> findmealsbyemail(String email) {
	    return mr.getdietbyemail(email);
	}

	
}
