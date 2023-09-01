package com.woorifis.demo.controller;

import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.annotation.RequestScope;

import com.woorifis.demo.model.dto.PortfolioDTO;
import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.service.PortfolioService;
import com.woorifis.demo.model.service.UserService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/portfolio")
@RequiredArgsConstructor

public class PortfolioController {

	
	private final PortfolioService portfolioService;
//	private final UserService userService;

	
	
	// 투자성향조사 요청 페이지	
	@GetMapping("/gettype")
	public String getTypeForm() {return "/portfolio/gettype";}
	/* 프론트에서 로그인 확인 해서 시작하기 가능 */
//	
//	@PostMapping("/gettype")
//	public String getType(@SessionAttribute(name = "userId", required = false) String userId,
//			@ModelAttribute String type) {
//		userService.update(userId, type);
//		return "redirect:/portfolio/gettype";
//		// return "/getportfolio";
//	}
	
	
	 // 포트폴리오 추론을 위한 엔드포인트
    @PostMapping("/infer")
    public ResponseEntity<PortfolioDTO.UserResponse> getPortfolio(@RequestBody PortfolioDTO.UserRequest userRequest) {
        // 포트폴리오 서비스를 통해 추론 결과를 받아옴
        PortfolioDTO.UserResponse response = portfolioService.infer(userRequest);
        return ResponseEntity.ok(response);
        // front로 전달해주기
    }

    // 필요한 경우 더 많은 엔드포인트 추가 가능
    
    }
	

	

	
