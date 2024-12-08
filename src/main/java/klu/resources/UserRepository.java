package klu.resources;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import klu.model.Signup;
import java.util.List;


@Service
@Repository
public interface UserRepository extends JpaRepository<Signup,String> {

	@Query("select count(S) from Signup S where S.email=:email")
	  public Long getEmail(@Param("email")String email);
	 
	  @Query("select count(S) from Signup S where S.email=:email and S.password=:password")
	    public int findByEmail(@Param("email") String email, @Param("password") String password);
	  
	  Signup findByEmailAndPassword(String email, String password);
}
