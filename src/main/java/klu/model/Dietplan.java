package klu.model;

import java.util.Arrays;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="dietplan")
public class Dietplan {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id; // Unique identifier for each 

	@Column(name="diet_name")
	private String diet_name;
	
	@Column(name="image")
    private byte[] image; // Field to store image data as BLOB


	 @Column(name = "monday_breakfast")
	    private String mondayBreakfast; // Monday breakfast meal
	    
	    @Column(name = "monday_lunch")
	    private String mondayLunch; // Monday lunch meal
	    
	    @Column(name = "monday_dinner")
	    private String mondayDinner; // Monday dinner meal
	    
	    @Column(name = "monday_snacks")
	    private String mondaySnacks; // Monday snacks
	    
	    @Column(name = "tuesday_breakfast")
	    private String tuesdayBreakfast; // Tuesday breakfast meal
	    
	    @Column(name = "tuesday_lunch")
	    private String tuesdayLunch; // Tuesday lunch meal
	    
	    @Column(name = "tuesday_dinner")
	    private String tuesdayDinner; // Tuesday dinner meal
	    
	    @Column(name = "tuesday_snacks")
	    private String tuesdaySnacks; // Tuesday snacks
	    
	    @Column(name = "wed_breakfast")
	    private String wedBreakfast; 
	    
	    @Column(name = "wed_lunch")
	    private String wedLunch; 
	    
	    @Column(name = "wed_dinner")
	    private String wedDinner; 
	    
	    @Column(name = "wed_snacks")
	    private String wedSnacks; 
	    
	    @Column(name = "thu_breakfast")
	    private String thuBreakfast; 
	    
	    @Column(name = "thu_lunch")
	    private String thuLunch; 
	    
	    @Column(name = "thu_dinner")
	    private String thuDinner; 
	    
	    @Column(name = "thu_snacks")
	    private String thuSnacks; 
	    
	    @Column(name = "fri_breakfast")
	    private String friBreakfast; 
	    
	    @Column(name = "fri_lunch")
	    private String friLunch; 
	    
	    @Column(name = "fri_dinner")
	    private String friDinner; 
	    
	    @Column(name = "fri_snacks")
	    private String friSnacks; 
	    
	    @Column(name = "sat_breakfast")
	    private String satBreakfast; 
	    
	    @Column(name = "sat_lunch")
	    private String satLunch; 
	    
	    @Column(name = "sat_dinner")
	    private String satDinner; 
	    
	    @Column(name = "sat_snacks")
	    private String satSnacks; 
	    
	    @Column(name = "sun_breakfast")
	    private String sunBreakfast; 
	    
	    @Column(name = "sun_lunch")
	    private String sunLunch; 
	    
	    @Column(name = "sun_dinner")
	    private String sunDinner; 
	    
	    @Column(name = "sun_snacks")
	    private String sunSnacks; 
	    
    @Column(name = "nutritional_info_calories")
    private int calories; // Calories (e.g., 300 kcal)

    @Column(name = "nutritional_info_protein")
    private int protein; // Protein (e.g., 20g)

    @Column(name = "nutritional_info_carbs")
    private int carbs; // Carbohydrates (e.g., 50g)

    @Column(name = "nutritional_info_fat")
    private int fat; // Fat (e.g., 15g)

    @Column(name = "nutritional_info_fiber")
    private int fiber; // Fiber (e.g., 10g)

    @Column(name = "nutritional_info_sugars")
    private int sugars; // Sugars (e.g., 20g)

    @Column(name = "nutritional_info_iron")
    private int iron; // Iron (e.g., 5mg)

    @Column(name = "nutritional_info_calcium")
    private int calcium; // Calcium (e.g., 200mg)

  

    @Column(name = "diet_description", length = 500)
    private String dietDescription;



	public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}



	public String getDiet_name() {
		return diet_name;
	}



	public void setDiet_name(String diet_name) {
		this.diet_name = diet_name;
	}



	public String getMondayBreakfast() {
		return mondayBreakfast;
	}



	public void setMondayBreakfast(String mondayBreakfast) {
		this.mondayBreakfast = mondayBreakfast;
	}



	public String getMondayLunch() {
		return mondayLunch;
	}



	public void setMondayLunch(String mondayLunch) {
		this.mondayLunch = mondayLunch;
	}



	public String getMondayDinner() {
		return mondayDinner;
	}



	public void setMondayDinner(String mondayDinner) {
		this.mondayDinner = mondayDinner;
	}



	public String getMondaySnacks() {
		return mondaySnacks;
	}



	public void setMondaySnacks(String mondaySnacks) {
		this.mondaySnacks = mondaySnacks;
	}



	public String getTuesdayBreakfast() {
		return tuesdayBreakfast;
	}



	public void setTuesdayBreakfast(String tuesdayBreakfast) {
		this.tuesdayBreakfast = tuesdayBreakfast;
	}



	public String getTuesdayLunch() {
		return tuesdayLunch;
	}



	public void setTuesdayLunch(String tuesdayLunch) {
		this.tuesdayLunch = tuesdayLunch;
	}



	public String getTuesdayDinner() {
		return tuesdayDinner;
	}



	public void setTuesdayDinner(String tuesdayDinner) {
		this.tuesdayDinner = tuesdayDinner;
	}



	public String getTuesdaySnacks() {
		return tuesdaySnacks;
	}



	public void setTuesdaySnacks(String tuesdaySnacks) {
		this.tuesdaySnacks = tuesdaySnacks;
	}



	public String getWedBreakfast() {
		return wedBreakfast;
	}



	public void setWedBreakfast(String wedBreakfast) {
		this.wedBreakfast = wedBreakfast;
	}



	public String getWedLunch() {
		return wedLunch;
	}



	public void setWedLunch(String wedLunch) {
		this.wedLunch = wedLunch;
	}



	public String getWedDinner() {
		return wedDinner;
	}



	public void setWedDinner(String wedDinner) {
		this.wedDinner = wedDinner;
	}



	public String getWedSnacks() {
		return wedSnacks;
	}



	public void setWedSnacks(String wedSnacks) {
		this.wedSnacks = wedSnacks;
	}



	public String getThuBreakfast() {
		return thuBreakfast;
	}



	public void setThuBreakfast(String thuBreakfast) {
		this.thuBreakfast = thuBreakfast;
	}



	public String getThuLunch() {
		return thuLunch;
	}



	public void setThuLunch(String thuLunch) {
		this.thuLunch = thuLunch;
	}



	public String getThuDinner() {
		return thuDinner;
	}



	public void setThuDinner(String thuDinner) {
		this.thuDinner = thuDinner;
	}



	public String getThuSnacks() {
		return thuSnacks;
	}



	public void setThuSnacks(String thuSnacks) {
		this.thuSnacks = thuSnacks;
	}



	public String getFriBreakfast() {
		return friBreakfast;
	}



	public void setFriBreakfast(String friBreakfast) {
		this.friBreakfast = friBreakfast;
	}



	public String getFriLunch() {
		return friLunch;
	}



	public void setFriLunch(String friLunch) {
		this.friLunch = friLunch;
	}



	public String getFriDinner() {
		return friDinner;
	}



	public void setFriDinner(String friDinner) {
		this.friDinner = friDinner;
	}



	public String getFriSnacks() {
		return friSnacks;
	}



	public void setFriSnacks(String friSnacks) {
		this.friSnacks = friSnacks;
	}



	public String getSatBreakfast() {
		return satBreakfast;
	}



	public void setSatBreakfast(String satBreakfast) {
		this.satBreakfast = satBreakfast;
	}



	public String getSatLunch() {
		return satLunch;
	}



	public void setSatLunch(String satLunch) {
		this.satLunch = satLunch;
	}



	public String getSatDinner() {
		return satDinner;
	}



	public void setSatDinner(String satDinner) {
		this.satDinner = satDinner;
	}



	public String getSatSnacks() {
		return satSnacks;
	}



	public void setSatSnacks(String satSnacks) {
		this.satSnacks = satSnacks;
	}



	public String getSunBreakfast() {
		return sunBreakfast;
	}



	public void setSunBreakfast(String sunBreakfast) {
		this.sunBreakfast = sunBreakfast;
	}



	public String getSunLunch() {
		return sunLunch;
	}



	public void setSunLunch(String sunLunch) {
		this.sunLunch = sunLunch;
	}



	public String getSunDinner() {
		return sunDinner;
	}



	public void setSunDinner(String sunDinner) {
		this.sunDinner = sunDinner;
	}



	public String getSunSnacks() {
		return sunSnacks;
	}



	public void setSunSnacks(String sunSnacks) {
		this.sunSnacks = sunSnacks;
	}



	public int getCalories() {
		return calories;
	}



	public void setCalories(int calories) {
		this.calories = calories;
	}



	public int getProtein() {
		return protein;
	}



	public void setProtein(int protein) {
		this.protein = protein;
	}



	public int getCarbs() {
		return carbs;
	}



	public void setCarbs(int carbs) {
		this.carbs = carbs;
	}



	public int getFat() {
		return fat;
	}



	public void setFat(int fat) {
		this.fat = fat;
	}



	public int getFiber() {
		return fiber;
	}



	public void setFiber(int fiber) {
		this.fiber = fiber;
	}



	public int getSugars() {
		return sugars;
	}



	public void setSugars(int sugars) {
		this.sugars = sugars;
	}



	public int getIron() {
		return iron;
	}



	public void setIron(int iron) {
		this.iron = iron;
	}



	public int getCalcium() {
		return calcium;
	}



	public void setCalcium(int calcium) {
		this.calcium = calcium;
	}



	public String getDietDescription() {
		return dietDescription;
	}



	public void setDietDescription(String dietDescription) {
		this.dietDescription = dietDescription;
	}



	public byte[] getImage() {
		return image;
	}



	public void setImage(byte[] image) {
		this.image = image;
	}



	@Override
	public String toString() {
		return "Dietplan [id=" + id + ", diet_name=" + diet_name + ", image=" + Arrays.toString(image)
				+ ", mondayBreakfast=" + mondayBreakfast + ", mondayLunch=" + mondayLunch + ", mondayDinner="
				+ mondayDinner + ", mondaySnacks=" + mondaySnacks + ", tuesdayBreakfast=" + tuesdayBreakfast
				+ ", tuesdayLunch=" + tuesdayLunch + ", tuesdayDinner=" + tuesdayDinner + ", tuesdaySnacks="
				+ tuesdaySnacks + ", wedBreakfast=" + wedBreakfast + ", wedLunch=" + wedLunch + ", wedDinner="
				+ wedDinner + ", wedSnacks=" + wedSnacks + ", thuBreakfast=" + thuBreakfast + ", thuLunch=" + thuLunch
				+ ", thuDinner=" + thuDinner + ", thuSnacks=" + thuSnacks + ", friBreakfast=" + friBreakfast
				+ ", friLunch=" + friLunch + ", friDinner=" + friDinner + ", friSnacks=" + friSnacks + ", satBreakfast="
				+ satBreakfast + ", satLunch=" + satLunch + ", satDinner=" + satDinner + ", satSnacks=" + satSnacks
				+ ", sunBreakfast=" + sunBreakfast + ", sunLunch=" + sunLunch + ", sunDinner=" + sunDinner
				+ ", sunSnacks=" + sunSnacks + ", calories=" + calories + ", protein=" + protein + ", carbs=" + carbs
				+ ", fat=" + fat + ", fiber=" + fiber + ", sugars=" + sugars + ", iron=" + iron + ", calcium=" + calcium
				+ ", dietDescription=" + dietDescription + "]";
	}


}