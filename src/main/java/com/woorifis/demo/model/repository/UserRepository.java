package com.woorifis.demo.model.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.User;


public interface UserRepository extends JpaRepository<User, Long> {

	
	Optional<User> findById(String id);
	
	Optional<User> findByEmail(String email);
	
}
