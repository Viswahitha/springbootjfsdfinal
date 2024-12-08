package klu.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="user_data")
public class User {

	 // User Information
	@Id
	@Column(name = "email")
    private String email;          // Email
	@Column(name="firstName")
    private String firstName;      // First Name
	@Column(name="lastName")
    private String lastName;       // Last Name
	@Column(name="dob")
    private Date dob;              // Date of Birth
	@Column(name="gender")
    private String gender;         // Gender
	@Column(name = "phoneNumber")
    private String phoneNumber;    // Phone Number
	@Column(name="address")
    private String address;        // Address
	@Column(name="profilePictureUrl")
    private String profilePictureUrl; // Profile Picture URL

    // Diet Information
	@Column(name = "dietType")
    private String dietType;       // Diet Type (e.g., Vegetarian, Keto)
	@Column(name="caloriesIntake")
    private int caloriesIntake;    // Calories Intake (in kcal)
	@Column(name="proteinIntake")
    private int proteinIntake;     // Protein Intake (in grams)
	@Column(name="carbsIntake")
    private int carbsIntake;       // Carbohydrate Intake (in grams)
	@Column(name="fatIntake")
    private int fatIntake;         // Fat Intake (in grams)
	@Column(name="allergies")
    private String allergies;      // Allergies (e.g., Dairy, Gluten)
    
    // Physical Information
	@Column(name="height")
    private int height;            // Height (in cm)
	@Column(name="weight")
    private int weight;            // Weight (in kg)
    
    // Goal Information
	@Column(name="goal")
    private String goal;		//weightloss,muscle gain , maintanence,weight gain

	@OneToOne
	@JoinColumn(name="email", referencedColumnName="email",insertable = false, updatable = false)
	private Signup signup;
	
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

	public Signup getSignup() {
		return signup;
	}

	public void setSignup(Signup signup) {
		this.signup = signup;
	}
}
