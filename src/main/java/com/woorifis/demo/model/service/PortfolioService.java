package com.woorifis.demo.model.service;


import java.util.List;


import org.springframework.stereotype.Service;

import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.repository.PortfolioRepository;


import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class PortfolioService {
	
	private final PortfolioRepository portfolioRepository;
	
    // 특정 날짜(date)에 해당하는 포트폴리오 가져오기
    public List<Portfolio>  getPortfoliosByDate(String date) {
    	List<Portfolio>  searchResults = portfolioRepository.findByDate(date);
        return searchResults;
    }
	
    // name과 type을 기준으로 데이터를 조회 - 날짜 까지?
    public Portfolio  getComparisonResult(String type, String date) {
    	Portfolio searchResults = portfolioRepository.findByTypeAndDate(type, date);
        return searchResults;
    }
    
		
	}





