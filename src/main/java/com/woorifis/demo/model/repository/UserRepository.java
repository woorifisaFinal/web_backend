package com.woorifis.demo.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.User;


public interface UserRepository extends JpaRepository<User, Long> {

}
