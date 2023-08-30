package com.woorifis.demo.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.Portfolio;

public interface PortfolioRepository extends JpaRepository<Portfolio, Long> {

}
