package klu.resources;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import klu.model.Signup;
import klu.model.User;

@Service
@Repository
public interface AdminRepository extends JpaRepository<User,String>{

	// Custom query to find User by email
    @Query("SELECT u FROM User u WHERE u.email = :email")
    public User findByEmail(@Param("email") String email);
}
