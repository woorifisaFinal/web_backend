package com.woorifis.demo.model.service;

import java.net.URI;

import org.springframework.stereotype.Service;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Builder;

@Service

public class PortfolioService {
	
	// flask로 요청을 보내는 서비스
	
	public PortfolioInference infer(PortfolioInference portfolioInference) {
		
		// URI를 빌드한다
        URI uri = UriComponentsBuilder
                .fromUriString("http://localhost:5000")
                .path("/portfolio//infer")
                .queryParam("type",userResponse.getName())
                .queryParam("age",userResponse.getAge())
                .encode(Charset.defaultCharset())
                .build()
                .toUri();
        System.out.println(uri.toString());

        RestTemplate restTemplate = new RestTemplate();

        //String result = restTemplate.getForObject(uri, String.class);
        //getForEntity는 응답을 ResponseEntity로 받을 수 있도록 해준다 .
        //파라미터 첫번째는 요청 URI 이며 , 2번째는 받을 타입
        ResponseEntity<UserResponse> result = restTemplate.getForEntity(uri,UserResponse.class);

        System.out.println(result.getStatusCode());
        System.out.println(result.getBody());

        return result.getBody();
		
		
		
	}

}
