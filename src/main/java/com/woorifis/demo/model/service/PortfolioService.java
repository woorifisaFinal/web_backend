package com.woorifis.demo.model.service;

import java.net.URI;

import java.nio.charset.Charset;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.woorifis.demo.controller.UserRequest;
import com.woorifis.demo.model.dto.PortfolioDTO;
import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.repository.PortfolioRepository;

import lombok.Builder;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PortfolioService {
	
	private final PortfolioRepository portfolioRespository;
	
	// flask로 요청을 보내는 서비스
	
	public PortfolioDTO.UserResponse infer(PortfolioDTO.UserRequest userRequest) {
		
		// URI를 빌드한다
        URI uri = UriComponentsBuilder
                .fromUriString("http://localhost:5000")
                .path("/portfolio/infer")
                .queryParam("type",userRequest.getType())
                .encode(Charset.defaultCharset())
                .build()
                .toUri();
        System.out.println(uri.toString());

        RestTemplate restTemplate = new RestTemplate();
        PortfolioDTO.UserResponse userReponse = new PortfolioDTO.UserResponse(); 

        //postforEntity로 Response 받는다
        //DB에 저장한다
        ResponseEntity<PortfolioDTO.UserResponse> responseEntity = restTemplate.
        		postForEntity(uri,userReponse,PortfolioDTO.UserResponse.class);
        
        
        Portfolio portfolio = Portfolio.toPortfolio(responseEntity.getBody());
        portfolioRespository.save(portfolio);

        System.out.println(responseEntity.getStatusCode());
        System.out.println(responseEntity.getBody());

        return responseEntity.getBody();
		
        }
		
	}




