package com.woorifisa.demo;

import static org.junit.jupiter.api.Assertions.*;


import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.repository.PortfolioRepository;
import com.woorifis.demo.model.service.PortfolioService;

import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class PortfolioServiceTest {
	
	
	  	@Mock
	    private PortfolioRepository portfolioRepository;

	    @InjectMocks
	    private PortfolioService portfolioService;

	    @Test
	    public void testGetPortfoliosByDate() {
	        // 가짜 포트폴리오 데이터 생성
	        List<Portfolio> fakePortfolios = new ArrayList<>();
	        fakePortfolios.add(new Portfolio());
	        fakePortfolios.add(new Portfolio());

	        // 포트폴리오Repository.findByDate가 호출될 때 가짜 데이터 반환
	        when(portfolioRepository.findByDate("2023-09-08")).thenReturn(fakePortfolios);

	        // 서비스 메서드 호출
	        List<Portfolio> result = portfolioService.getPortfoliosByDate("2023-09-08");

	        // 결과 검증
	        assertEquals(2, result.size());

	        // 포트폴리오Repository.findByDate가 1번 호출되었는지 검증
	        verify(portfolioRepository, times(1)).findByDate("2023-09-08");
	    }

	    @Test
	    public void testGetComparisonResult() {
	        // 가짜 포트폴리오 데이터 생성
	        List<Portfolio> fakePortfolios = new ArrayList<>();
	        fakePortfolios.add(new Portfolio());
	        fakePortfolios.add(new Portfolio());

	        // 포트폴리오Repository.findByTypeAndDate가 호출될 때 가짜 데이터 반환
	        when(portfolioRepository.findByTypeAndDate("typeA", "2023-09-08")).thenReturn(fakePortfolios);

	        // 서비스 메서드 호출
	        List<Portfolio> result = portfolioService.getComparisonResult("typeA", "2023-09-08");

	        // 결과 검증
	        assertEquals(2, result.size());

	        // 포트폴리오Repository.findByTypeAndDate가 1번 호출되었는지 검증
	        verify(portfolioRepository, times(1)).findByTypeAndDate("typeA", "2023-09-08");
	    }
	    
}
