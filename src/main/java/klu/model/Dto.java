package klu.model;

import java.util.Date;

public class Dto {

	
	// User Information
	private String email;             // Email
	private String firstName;         // First Name
	private String lastName;          // Last Name
	private Date dob;                 // Date of Birth
	private String gender;            // Gender
	private String phoneNumber;       // Phone Number
	private String address;           // Address
	private String profilePictureUrl; // Profile Picture URL

	// Diet Information
	private String dietType;          // Diet Type (e.g., Vegetarian, Keto)
	private int caloriesIntake;       // Calories Intake (in kcal)
	private int proteinIntake;        // Protein Intake (in grams)
	private int carbsIntake;          // Carbohydrate Intake (in grams)
	private int fatIntake;            // Fat Intake (in grams)
	private String allergies;         // Allergies (e.g., Dairy, Gluten)

	// Physical Information
	private int height;               // Height (in cm)
	private int weight;               // Weight (in kg)

	// Goal Information
	private String goal;              // Goal




	private String password;




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getFirstName() {
		return firstName;
	}




	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}




	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public Date getDob() {
		return dob;
	}




	public void setDob(Date dob) {
		this.dob = dob;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getPhoneNumber() {
		return phoneNumber;
	}




	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getProfilePictureUrl() {
		return profilePictureUrl;
	}




	public void setProfilePictureUrl(String profilePictureUrl) {
		this.profilePictureUrl = profilePictureUrl;
	}




	public String getDietType() {
		return dietType;
	}




	public void setDietType(String dietType) {
		this.dietType = dietType;
	}




	public int getCaloriesIntake() {
		return caloriesIntake;
	}




	public void setCaloriesIntake(int caloriesIntake) {
		this.caloriesIntake = caloriesIntake;
	}




	public int getProteinIntake() {
		return proteinIntake;
	}




	public void setProteinIntake(int proteinIntake) {
		this.proteinIntake = proteinIntake;
	}




	public int getCarbsIntake() {
		return carbsIntake;
	}




	public void setCarbsIntake(int carbsIntake) {
		this.carbsIntake = carbsIntake;
	}




	public int getFatIntake() {
		return fatIntake;
	}




	public void setFatIntake(int fatIntake) {
		this.fatIntake = fatIntake;
	}




	public String getAllergies() {
		return allergies;
	}




	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}




	public int getHeight() {
		return height;
	}




	public void setHeight(int height) {
		this.height = height;
	}




	public int getWeight() {
		return weight;
	}




	public void setWeight(int weight) {
		this.weight = weight;
	}




	public String getGoal() {
		return goal;
	}




	public void setGoal(String goal) {
		this.goal = goal;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}
	
}
