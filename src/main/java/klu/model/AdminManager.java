package klu.model;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import klu.resources.AdminRepository;
import klu.resources.DietRepository;
import klu.resources.UserRepository;

@Service
public class AdminManager {
	
	@Autowired
	AdminRepository ar;
	@Autowired
	UserRepository ur;
	@Autowired
	DietRepository dr;
    private static final int MAX_IMAGE_SIZE = 16 * 1024 * 1024; // 5 MB limit

	public String getUsers() {
        List<Map<String, Object>> userList = new ArrayList<>();

        // Iterate through all users and map relevant fields
        for (User user : ar.findAll()) {
            Map<String, Object> userMap = new HashMap<>();
            userMap.put("email", user.getEmail());
            userMap.put("firstName", user.getFirstName());
            userMap.put("lastName", user.getLastName());
            userMap.put("dob", user.getDob());
            userMap.put("gender", user.getGender());
            userMap.put("phoneNumber", user.getPhoneNumber());
            userMap.put("address", user.getAddress());
            userMap.put("profilePictureUrl", user.getProfilePictureUrl());
            userMap.put("dietType", user.getDietType());
            userMap.put("caloriesIntake", user.getCaloriesIntake());
            userMap.put("proteinIntake", user.getProteinIntake());
            userMap.put("carbsIntake", user.getCarbsIntake());
            userMap.put("fatIntake", user.getFatIntake());
            userMap.put("allergies", user.getAllergies());
            userMap.put("height", user.getHeight());
            userMap.put("weight", user.getWeight());
            userMap.put("goal", user.getGoal());

           
            userList.add(userMap);
        }
        return toJSON(userList);
    }
	
	public String getDietPlans() {
	    List<Map<String, Object>> dietPlanList = new ArrayList<>();

	    // Iterate through all diet plans and map relevant fields
	    for (Dietplan dietplan : dr.findAll()) {
	        Map<String, Object> dietPlanMap = new HashMap<>();
	        dietPlanMap.put("dietId", dietplan.getId());
	        dietPlanMap.put("dietName", dietplan.getDiet_name());
	        dietPlanMap.put("dietDescription", dietplan.getDietDescription());
	        
	        
	        if (dietplan.getImage() != null) {
                dietPlanMap.put("image", convertImageToBase64(dietplan.getImage()));
            } else {
                dietPlanMap.put("image", null); // Placeholder for missing images
            }
	        
	        // Monday Meals
	        dietPlanMap.put("mondayBreakfast", dietplan.getMondayBreakfast());
	        dietPlanMap.put("mondayLunch", dietplan.getMondayLunch());
	        dietPlanMap.put("mondayDinner", dietplan.getMondayDinner());
	        dietPlanMap.put("mondaySnacks", dietplan.getMondaySnacks());

	        // Tuesday Meals
	        dietPlanMap.put("tuesdayBreakfast", dietplan.getTuesdayBreakfast());
	        dietPlanMap.put("tuesdayLunch", dietplan.getTuesdayLunch());
	        dietPlanMap.put("tuesdayDinner", dietplan.getTuesdayDinner());
	        dietPlanMap.put("tuesdaySnacks", dietplan.getTuesdaySnacks());

	        // Wednesday Meals
	        dietPlanMap.put("wednesdayBreakfast", dietplan.getWedBreakfast());
	        dietPlanMap.put("wednesdayLunch", dietplan.getWedLunch());
	        dietPlanMap.put("wednesdayDinner", dietplan.getWedDinner());
	        dietPlanMap.put("wednesdaySnacks", dietplan.getWedSnacks());

	        // Thursday Meals
	        dietPlanMap.put("thursdayBreakfast", dietplan.getThuBreakfast());
	        dietPlanMap.put("thursdayLunch", dietplan.getThuLunch());
	        dietPlanMap.put("thursdayDinner", dietplan.getThuDinner());
	        dietPlanMap.put("thursdaySnacks", dietplan.getThuSnacks());

	        // Friday Meals
	        dietPlanMap.put("fridayBreakfast", dietplan.getFriBreakfast());
	        dietPlanMap.put("fridayLunch", dietplan.getFriLunch());
	        dietPlanMap.put("fridayDinner", dietplan.getFriDinner());
	        dietPlanMap.put("fridaySnacks", dietplan.getFriSnacks());

	        // Saturday Meals
	        dietPlanMap.put("saturdayBreakfast", dietplan.getSatBreakfast());
	        dietPlanMap.put("saturdayLunch", dietplan.getSatLunch());
	        dietPlanMap.put("saturdayDinner", dietplan.getSatDinner());
	        dietPlanMap.put("saturdaySnacks", dietplan.getSatSnacks());

	        // Sunday Meals
	        dietPlanMap.put("sundayBreakfast", dietplan.getSunBreakfast());
	        dietPlanMap.put("sundayLunch", dietplan.getSunLunch());
	        dietPlanMap.put("sundayDinner", dietplan.getSunDinner());
	        dietPlanMap.put("sundaySnacks", dietplan.getSunSnacks());

	        // Nutritional Information
	        dietPlanMap.put("calories", dietplan.getCalories());
	        dietPlanMap.put("protein", dietplan.getProtein());
	        dietPlanMap.put("carbs", dietplan.getCarbs());
	        dietPlanMap.put("fat", dietplan.getFat());
	        dietPlanMap.put("fiber", dietplan.getFiber());
	        dietPlanMap.put("sugars", dietplan.getSugars());
	        dietPlanMap.put("iron", dietplan.getIron());
	        dietPlanMap.put("calcium", dietplan.getCalcium());

	        dietPlanList.add(dietPlanMap);
	    }

	    return toJSON(dietPlanList);
	}

	 private String convertImageToBase64(byte[] image) {
	        return Base64.getEncoder().encodeToString(image);
	    }
	
	public String adduser(User U, String password) {
		ar.save(U);
		Signup signup = new Signup();
		signup.setEmail(U.getEmail());
		signup.setPassword(password);
		signup.setFname(U.getFirstName());
		signup.setLname(U.getLastName());
		ur.save(signup);
		Map<String, String>resp=new HashMap<String,String>();
		resp.put("code", "200");
		resp.put("msg", "User is Added");
		return toJSON(resp);
	}
	
	public String addDiet(Dietplan dp) {
		
		if (dp.getImage() != null && dp.getImage().length > MAX_IMAGE_SIZE) {
	        throw new IllegalArgumentException("Image size exceeds the allowed limit.");
	    }
		dr.save(dp);
		return "diet plan added successfully";
		
	}
	
	public String deleteUser(String email) {
		ur.deleteById(email);
		Map<String, String>resp=new HashMap<String,String>();
		resp.put("code", "200");
		resp.put("msg", "User data has been deleted");
		return toJSON(resp);
	}
public String updateDiet(Dietplan dp) {
		
		if (dp.getImage() != null && dp.getImage().length > MAX_IMAGE_SIZE) {
	        throw new IllegalArgumentException("Image size exceeds the allowed limit.");
	    }
		dr.save(dp);
		return "diet plan updated successfully";
		
	}
	
	public byte[] getDietPlanImage(long dietId) {
	    Dietplan dietplan = dr.findById(dietId).orElseThrow(() -> new RuntimeException("Diet plan not found!"));
	    return dietplan.getImage();
	}
	
	public User getUserByEmail(String email) {
        return ar.findByEmail(email);
    }
	public String toJSON(Object obj) {
		GsonBuilder GB= new GsonBuilder();
		Gson G=GB.create();
		return G.toJson(obj);
	}
}
