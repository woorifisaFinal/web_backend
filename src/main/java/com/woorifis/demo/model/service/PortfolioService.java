package com.woorifis.demo.model.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Stream;

import org.springframework.stereotype.Service;

import com.woorifis.demo.model.entity.Brazil;
import com.woorifis.demo.model.entity.Euro;
import com.woorifis.demo.model.entity.Ftse;
import com.woorifis.demo.model.entity.Gold;
import com.woorifis.demo.model.entity.India;
import com.woorifis.demo.model.entity.Kor10y;
import com.woorifis.demo.model.entity.Kor3y;
import com.woorifis.demo.model.entity.Kospi;
import com.woorifis.demo.model.entity.Nikkei;
import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.entity.Taiwan;
import com.woorifis.demo.model.entity.Us10y;
import com.woorifis.demo.model.entity.Us3y;
import com.woorifis.demo.model.repository.BrazilRepository;
import com.woorifis.demo.model.repository.EuroRepository;
import com.woorifis.demo.model.repository.FtseRepository;
import com.woorifis.demo.model.repository.GoldRepository;
import com.woorifis.demo.model.repository.IndiaRepository;
import com.woorifis.demo.model.repository.Kor10yRepository;
import com.woorifis.demo.model.repository.Kor3yRepository;
import com.woorifis.demo.model.repository.KospiRepository;
import com.woorifis.demo.model.repository.NikkeiRepository;
import com.woorifis.demo.model.repository.PortfolioRepository;
import com.woorifis.demo.model.repository.SymbolRepository;
import com.woorifis.demo.model.repository.TaiwanRepository;
import com.woorifis.demo.model.repository.Us10yRepository;
import com.woorifis.demo.model.repository.Us3yRepository;

import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class PortfolioService {
	
	private final PortfolioRepository portfolioRepository;
	private final SymbolRepository symbolRepository;
    private final FtseRepository ftseRepository;
    private final NikkeiRepository nikkeiRepository;
    private final EuroRepository euroRepository;
    private final KospiRepository kospiRepository;
    private final IndiaRepository indiaRepository;
    private final TaiwanRepository taiwanRepository;
    private final BrazilRepository brazilRepository;
    private final Kor3yRepository kor3yRepository;
    private final Kor10yRepository kor10yRepository;
    private final Us3yRepository us3yRepository;
    private final Us10yRepository us10yRepository;
    private final GoldRepository goldRepository;
	
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
    
    public Class<?> getTopClose(String portfolio){
    	
    	String className = null;

    	switch (portfolio) {
    	    case "us":
    	        className = "Symbol";
    	        break;
    	    case "uk":
    	        className = "Ftse";
    	        break;
    	    case "jp":
    	        className = "Nikkei";
    	        break;
    	    case "euro":
    	        className = "Euro";
    	        break;
    	    case "kor":
    	        className = "Kospi";
    	        break;
    	    case "ind":
    	        className = "India";
    	        break;
    	    case "tw":
    	        className = "Taiwan";
    	        break;
    	    case "br":
    	        className = "Brazil";
    	        break;
    	    case "kor3y":
    	        className = "Kor3y";
    	        break;
    	    case "kor10y":
    	        className = "Kor10y";
    	        break;
    	    case "us3y":
    	        className = "Us3y";
    	        break;
    	    case "us10y":
    	        className = "Us10y";
    	        break;
    	    case "gold":
    	        className = "Gold";
    	        break;
    	    default:
    	        // 처리되지 않은 경우에 대한 기본값 설정
    	        break;
    	}

    	if (className != null) {
    	    Class<?> itemType = null;
    	    
    	    try {
    	        itemType = Class.forName("com.woorifis.demo.model.entity." + className);
    	    } catch (ClassNotFoundException e) {
    	        e.printStackTrace();
    	    }
    	    return itemType;
    	}
    	else {
		return null;}
    	
    	
    }

    public <T> List<T> getClose(Class<?> itemType) {
        if (Kor10y.class.isAssignableFrom(itemType)) {
            List<Kor10y> kor10yList = kor10yRepository.findAll();
            return (List<T>) kor10yList;
        } else if (Symbol.class.isAssignableFrom(itemType)) {
            List<Symbol> symbolList = symbolRepository.findAll();
            return (List<T>) symbolList;
        } else if (Ftse.class.isAssignableFrom(itemType)) {
            List<Ftse> ftseList = ftseRepository.findAll();
            return (List<T>) ftseList;
        } else if (Nikkei.class.isAssignableFrom(itemType)) {
            List<Nikkei> nikkeiList = nikkeiRepository.findAll();
            return (List<T>) nikkeiList;
        } else if (Euro.class.isAssignableFrom(itemType)) {
            List<Euro> euroList = euroRepository.findAll();
            return (List<T>) euroList;
        } else if (Kospi.class.isAssignableFrom(itemType)) {
            List<Kospi> kospiList = kospiRepository.findAll();
            return (List<T>) kospiList;
        } else if (India.class.isAssignableFrom(itemType)) {
            List<India> indiaList = indiaRepository.findAll();
            return (List<T>) indiaList;
        } else if (Taiwan.class.isAssignableFrom(itemType)) {
            List<Taiwan> taiwanList = taiwanRepository.findAll();
            return (List<T>) taiwanList;
        } else if (Brazil.class.isAssignableFrom(itemType)) {
            List<Brazil> brazilList = brazilRepository.findAll();
            return (List<T>) brazilList;
        } else if (Kor3y.class.isAssignableFrom(itemType)) {
            List<Kor3y> kor3yList = kor3yRepository.findAll();
            return (List<T>) kor3yList;
        } else if (Us3y.class.isAssignableFrom(itemType)) {
            List<Us3y> us3yList = us3yRepository.findAll();
            return (List<T>) us3yList;
        } else if (Us10y.class.isAssignableFrom(itemType)) {
            List<Us10y> us10yList = us10yRepository.findAll();
            return (List<T>) us10yList;
        } else if (Gold.class.isAssignableFrom(itemType)) {
            List<Gold> goldList = goldRepository.findAll();
            return (List<T>) goldList;
        }
        return null;
    }
		
	}





