package com.woorifis.demo.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.Kospi;

public interface KospiRepository extends JpaRepository<Kospi, String>{

}
