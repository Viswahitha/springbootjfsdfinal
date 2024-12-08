package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import klu.model.AdminManager;
import klu.model.Dietplan;
import klu.model.Dto;
import klu.model.User;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminManager am;
	
	@PostMapping("/savedietplan")
	public String savedietplan(@RequestBody Dietplan dp) {
		return am.addDiet(dp);
	}
	@PostMapping("/updatedietplan")
	public String updatedietplan(@RequestBody Dietplan dp) {
		return am.updateDiet(dp);
	}
	
	@GetMapping("/readusers")
	public String ReadUsers() {
		return am.getUsers().toString();
	}
	@GetMapping("/readdietplan")
	public String Readdietplan() {
		return am.getDietPlans().toString();
	}
	
	@DeleteMapping("/deleteuser")
	public String deleteFaculty( @RequestParam("email") String email) {
		return am.deleteUser(email);
	}
	@GetMapping("/getUserByEmail")
    public User getUserByEmail(@RequestParam String email) {
        return am.getUserByEmail(email);
    }
	@PostMapping("/saveusers")
	public String saveusers(@RequestBody Dto dto) { 
		User user =new User();
		user.setEmail(dto.getEmail());
		user.setFirstName(dto.getFirstName());
		user.setLastName(dto.getLastName());
		user.setDob(dto.getDob());
		user.setGender(dto.getGender());
		user.setPhoneNumber(dto.getPhoneNumber());
		user.setProfilePictureUrl(dto.getProfilePictureUrl());
		user.setAddress(dto.getAddress());
		user.setDietType(dto.getDietType());
		user.setCaloriesIntake(dto.getCaloriesIntake());
		user.setProteinIntake(dto.getProteinIntake());
		user.setCarbsIntake(dto.getCarbsIntake());
		user.setFatIntake(dto.getFatIntake());
		user.setAllergies(dto.getAllergies());
		user.setHeight(dto.getHeight());
		user.setWeight(dto.getWeight());
		user.setGoal(dto.getGoal());
		return am.adduser(user, dto.getPassword());
	}
}
