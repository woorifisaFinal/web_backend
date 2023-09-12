package com.woorifis.demo.model.repository;

import java.util.Map;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.Portfolio;

public interface PortfolioRepository extends JpaRepository<Portfolio, String> {

	
    // 특정 날짜(date)에 해당하는 모든 포트폴리오 가져오기
	List<Portfolio>  findByDate(String date);
    
//	List<Portfolio> findByTypeAndDate(String type, String date);
	Portfolio findByTypeAndDate(String type, String date);
}
