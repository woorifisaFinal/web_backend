package com.woorifis.demo.model.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Stream;

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
    	List<Portfolio> searchResults = portfolioRepository.findByDate(date);
        return searchResults;
    }
	
    // name과 type을 기준으로 데이터를 조회 - 날짜 까지?
    public Portfolio  getComparisonResult(String type, String date) {
    	Portfolio searchResults = portfolioRepository.findByTypeAndDate(type, date);
//    	System.out.println("service : "+searchResults);
        return searchResults;
    }
    
    public Map.Entry<String, Float>[] getTop3(Portfolio portfolio){
        // 주어진 변수들을 맵에 저장합니다.
        Map<String, Float> portfolioMap = new HashMap<>();
        portfolioMap.put("nasdaq", portfolio.getUs());
        portfolioMap.put("ftse", portfolio.getUk());
        portfolioMap.put("nikkei", portfolio.getJp());
        portfolioMap.put("euro", portfolio.getEuro());
        portfolioMap.put("kospi", portfolio.getKor());
        portfolioMap.put("nifty", portfolio.getInd());
        portfolioMap.put("tw", portfolio.getTw());
        portfolioMap.put("brazil", portfolio.getBr());
        portfolioMap.put("kor3y", portfolio.getKor3y());
        portfolioMap.put("kor10y", portfolio.getKor10y());
        portfolioMap.put("us3y", portfolio.getUs3y());
        portfolioMap.put("us10y", portfolio.getUs10y());
        portfolioMap.put("gold", portfolio.getGold());

        // 맵을 값으로 정렬합니다.
        Stream<Map.Entry<String, Float>> sorted = portfolioMap.entrySet().stream()
                .sorted((entry1, entry2) -> Float.compare(entry2.getValue(), entry1.getValue()));

        // 최대값(top 1, top 2, top 3)을 추출합니다.
        Map.Entry<String, Float>[] topEntries = sorted.limit(3).toArray(Map.Entry[]::new);
        System.out.println("topEntries : "+ topEntries);
        // 결과 변수로 저장
//        List<String> topName = new ArrayList<>();
//        String top1Name = topEntries[0].getKey();
//        Float top1Value = topEntries[0].getValue();
//        String top2Name = topEntries[1].getKey();
//        Float top2Value = topEntries[1].getValue();
//        String top3Name = topEntries[2].getKey();
//        Float top3Value = topEntries[2].getValue();
        
        return topEntries;

    }
		
	}





