package com.woorifis.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.woorifis.demo.model.service.PortfolioService;

import lombok.RequiredArgsConstructor;

@RestController // contrReoller 대신 써도 되는지 확인해보기
@RequiredArgsConstructor
public class PortfolioController {

	
	private final PortfolioService portfolioSevice;
	
	// 투자성향조사 요청 페이지
	@GetMapping("/portfolio/gettype")
	public String getType() {return "/portfolio/gettype";}
	/* 프론트에서 점수 매겨서 결과값 보여주는건지 */
	
	/* 성향에 따라 추론 요청 - restTemplate (or socket통신)
	 postForEntity로 request object
	generic 타입을 이용하여 요청 및 응답 데이터 받기?? */
	@GetMapping("/portfolio/infer")
	public PortfolioInference infer() {
		return portfolioSevice.infer();
	}
	
}
