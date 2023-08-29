package com.woorifis.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.annotation.RequestScope;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.service.PortfolioService;
import com.woorifis.demo.model.service.UserService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/portfolio")
@RequiredArgsConstructor
public class PortfolioController {

	
	private final PortfolioService portfolioSevice;
	private final UserService userService;
	
	
	// 투자성향조사 요청 페이지	
	@GetMapping("/gettype")
	public String getTypeForm() {return "/portfolio/gettype";}
	/* 프론트에서 점수 매겨서 결과값 보여주는건지 */
	
	@PostMapping("/gettype")
	public String getType(@SessionAttribute(name = "userId", required = false) String userId,
			@ModelAttribute String type) {
		userService.update(userId, type);
		return "redirect:/";
	}
	
	@PostMapping("/gettype")
	public String getPortfolio(@SessionAttribute(name = "userId", required = false) String userId,
			@ModelAttribute String type) {
		userService.update(userId, type);
		
		return "/getportfolio";
	}
	
	
	/* 성향에 따라 추론 요청 - restTemplate (or socket통신)
	 getForEntity로 request object
	generic 타입을 이용하여 요청 및 응답 데이터 받기?? */
	@GetMapping("/infer")
	public PortfolioInference infer() {
		return portfolioSevice.infer();
	}
	
}
