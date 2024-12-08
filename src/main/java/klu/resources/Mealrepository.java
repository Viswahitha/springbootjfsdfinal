package klu.resources;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import klu.model.Dietplan;
import klu.model.meals;

public interface Mealrepository extends JpaRepository<meals, Long> {

	

	  @Query("select m from meals m where m.useremail=:email")
	    public List<meals> getdietbyemail(@Param("email") String email);
}
