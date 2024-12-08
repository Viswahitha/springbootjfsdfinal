package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="meals")
public class meals {
	@Id
	@Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)

	long mealid;
	@Column(name="user")
String useremail;
	@Column(name="day")
int day;
	@Column(name="meal")
int meal;
	@Column(name="food")
String food;
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getMeal() {
		return meal;
	}
	public void setMeal(int meal) {
		this.meal = meal;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	
	public long getMealid() {
		return mealid;
	}
	public void setMealid(long mealid) {
		this.mealid = mealid;
	}
	@Override
	public String toString() {
		return "meals [mealid=" + mealid + ", useremail=" + useremail + ", day=" + day + ", meal=" + meal + ", food="
				+ food + "]";
	}

}
