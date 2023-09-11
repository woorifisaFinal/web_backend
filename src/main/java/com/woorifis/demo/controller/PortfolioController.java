package com.woorifis.demo.controller;

import java.util.Map;
import java.util.List;

import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.annotation.RequestScope;

import com.woorifis.demo.model.dto.PortfolioDTO;
import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.service.PortfolioService;
import com.woorifis.demo.model.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/portfolio")
@RequiredArgsConstructor
public class PortfolioController {

	
	private final PortfolioService portfolioService;
	
	  // 각 종목의 비율을 가져와서 화면에 전달 - 특정 날짜 (오늘만)
	@GetMapping("/getPortfolio")
	public String getPortfolio(@RequestParam("date") String date, Model model) {
	    List<Portfolio> portfolioList = portfolioService.getPortfoliosByDate(date);
	    model.addAttribute("portfolioList", portfolioList); 
	    return "portfolio/select";
	}

	// name, type에 따른 10가지 조합 중 2가지 선택
	 @GetMapping("/comparePortfolios")
	    public String comparePortfolios(
	        @RequestParam("nameA") String nameA,
	        @RequestParam("typeA") String typeA,
	        @RequestParam("nameB") String nameB,
	        @RequestParam("typeB") String typeB,
	        Model model) {

	        
			List<Portfolio> resultA = portfolioService.getComparisonResult(nameA, typeA);
			List<Portfolio> resultB = portfolioService.getComparisonResult(nameB, typeB);

	        // Model에 데이터를 추가하여 뷰로 전달합니다.
	        model.addAttribute("resultA", resultA);
	        model.addAttribute("resultB", resultB);

	        // 뷰 페이지 이름을 반환합니다.
	        return "portfolio/compare";
	    }

	@GetMapping("/dashboard")
	public String showDashboard(){
		return "portfolio/dashboard";
	}
	

}	
