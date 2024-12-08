package klu.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import klu.model.AdminManager;
import klu.model.Dietplan;
import klu.model.Signup;
import klu.model.User;
import klu.model.UserManager;
import klu.model.meals;

@RestController
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserManager um;
	
	@Autowired
	AdminManager am;
	@PostMapping("/save")
	public String signup(@RequestBody Signup S) { 
		return um.usersignup(S);
	}

	@PostMapping("/validate")
	public String login(@RequestBody Signup S,HttpServletRequest request) { 
		System.out.println("in this method "+S.getEmail());
//		System.out.println(S.getPassword());
//		System.out.println("Controller Completed");
		//HttpServlet have two 1)request and 2)response
		//Manam HttpServlet request method nunchi session aney variable ni create chestham.just like nuvvu icchey data broswer lo store ayyi untundhi kaani kanipiyadhu.
		//getSession method aney mana request ki session ni start cheyyamani isthunnattu.
		//session has many methods kani manam use chesedhi 3 sesion.setAttribute(),session.getAttribute(),sesssion.removeAttribute()
		//session.setAttribute -> manam tecchukunna object ni browser lo store cheskodaniki use chestham 
		HttpSession session = request.getSession();
		Signup user = um.checkUser(S.getEmail(), S.getPassword());
		session.setAttribute("user", user);//Ikkada double qoutes lo icchedhi nee session variable name.
		return um.userLogin(S.getEmail(), S.getPassword());
		
	}
	@GetMapping("/readdietplan")
	public String Readdietplan() {
		return am.getDietPlans().toString();
	}
	@GetMapping("dietplan")
    public Dietplan getDietPlanById(@RequestParam long id) {
        Dietplan dietplan = um.finddietplanbyid(id);
        if (dietplan == null) {
            throw new RuntimeException("Diet plan not found for ID: " + id);
        }
        return dietplan;
    }
	
	@GetMapping("/meals")
	public List<meals> getmealsbyemail(@RequestParam String email) {
	    return um.findmealsbyemail(email);
	}

	@PostMapping("/addmeals")
	public String addmeals(@RequestBody meals m) {
		return um.addmeal(m);
	}
	
	@PostMapping("/updateprofile")
	public String updateprofile(@RequestBody User U) {
		return um.updateprofile(U);
	}
}
