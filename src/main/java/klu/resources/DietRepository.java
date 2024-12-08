package klu.resources;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import klu.model.Dietplan;

@Service
@Repository
public interface DietRepository extends JpaRepository<Dietplan, Long> {

	  @Query("select D from Dietplan D where D.id=:id")
	    public Dietplan getdietbyid(@Param("id") long id);
	  
	  
}
