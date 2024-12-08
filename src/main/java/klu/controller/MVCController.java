package klu.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import klu.model.Dietplan;
import klu.model.UserManager;
import klu.model.meals;


@Controller
@RequestMapping("/")
public class MVCController {
	
	@Autowired
	UserManager um;
	
	
	@GetMapping("/")
	public ModelAndView landingpage() {
		ModelAndView mvc= new ModelAndView();
		mvc.setViewName("landingpage.jsp");
		return mvc;
	}
	@GetMapping("/home")
	public ModelAndView homepage() {
		ModelAndView mvc= new ModelAndView();
		mvc.setViewName("home.jsp");
		return mvc;
	}
	
	@GetMapping("/expired")
	public ModelAndView expired() {
		ModelAndView mvc = new ModelAndView("sessionexpired.jsp");
		return mvc;
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		try {
			response.sendRedirect("/");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Logged Out Successfully";
	}
	 @GetMapping("/dietplandetails")
	    public ModelAndView dietPlanDetails(@RequestParam("dietId") long dietId) {
	        Dietplan dietplan = um.finddietplanbyid(dietId);  // Retrieve the diet plan by dietId
	        ModelAndView mvc = new ModelAndView();
	        mvc.setViewName("dietplandetails.jsp");  // The view you want to return
	        mvc.addObject("dietplan", dietplan);
	        mvc.addObject("dietplanname", dietplan.getDiet_name());
	        mvc.addObject("dietplandesp",dietplan.getDietDescription());
	        mvc.addObject("dietmonbreakfast", dietplan.getMondayBreakfast());
	        mvc.addObject("dietmonlunch", dietplan.getMondayLunch());
	        mvc.addObject("dietmondinner", dietplan.getMondayDinner());
	        mvc.addObject("dietmonsnacks", dietplan.getMondaySnacks());
	        mvc.addObject("diettuebreakfast", dietplan.getTuesdayBreakfast());
	        mvc.addObject("diettuelunch", dietplan.getTuesdayLunch());
	        mvc.addObject("diettuedinner", dietplan.getTuesdayDinner());
	        mvc.addObject("diettuesnacks", dietplan.getTuesdaySnacks());
	        mvc.addObject("dietwedbreakfast", dietplan.getWedBreakfast());
	        mvc.addObject("dietwedlunch", dietplan.getWedLunch());
	        mvc.addObject("dietweddinner", dietplan.getWedDinner());
	        mvc.addObject("dietwedsnacks", dietplan.getWedSnacks());
	        mvc.addObject("dietthubreakfast", dietplan.getThuBreakfast());
	        mvc.addObject("dietthulunch", dietplan.getThuLunch());
	        mvc.addObject("dietthudinner", dietplan.getThuDinner());
	        mvc.addObject("dietthusnacks", dietplan.getThuSnacks());
	        mvc.addObject("dietfribreakfast", dietplan.getFriBreakfast());
	        mvc.addObject("dietfrilunch", dietplan.getFriLunch());
	        mvc.addObject("dietfridinner", dietplan.getFriDinner());
	        mvc.addObject("dietfrisnacks", dietplan.getFriSnacks());
	        mvc.addObject("dietsatbreakfast", dietplan.getSatBreakfast());
	        mvc.addObject("dietsatlunch", dietplan.getSatLunch());
	        mvc.addObject("dietsatdinner", dietplan.getSatDinner());
	        mvc.addObject("dietsatsnacks", dietplan.getSatSnacks());
	        mvc.addObject("dietsunbreakfast", dietplan.getSunBreakfast());
	        mvc.addObject("dietsunlunch", dietplan.getSunLunch());
	        mvc.addObject("dietsundinner", dietplan.getSunDinner());
	        mvc.addObject("dietsunsnacks", dietplan.getSunSnacks());

	        // Nutritional info
	        mvc.addObject("calories", dietplan.getCalories());
	        mvc.addObject("protein", dietplan.getProtein());
	        mvc.addObject("carbs", dietplan.getCarbs());
	        mvc.addObject("fat", dietplan.getFat());
	        mvc.addObject("fiber", dietplan.getFiber());
	        mvc.addObject("sugars", dietplan.getSugars());
	        mvc.addObject("iron", dietplan.getIron());
	        mvc.addObject("calcium", dietplan.getCalcium());
	        System.out.println(dietplan.getDiet_name());
	        return mvc;
	    }
	 @GetMapping("/trackmeals")
	 public ModelAndView mealsdetails(@RequestParam("email") String email) {
		 List<meals> m = um.findmealsbyemail(email);
	        ModelAndView mvc = new ModelAndView();
	        mvc.setViewName("trackmeals.jsp");  // The view you want to return
	        mvc.addObject("mealsList", m); // Add the meals list to the model
	        for (int i = 0; i < m.size(); i++) {
	            mvc.addObject("meal" + i, m.get(i));
	        }
			return mvc;

		 
	 }
}
