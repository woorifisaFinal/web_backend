package com.woorifis.demo.controller;

import java.security.KeyStore.Entry;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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
import com.woorifis.demo.model.entity.Euro;
import com.woorifis.demo.model.entity.Kor10y;
import com.woorifis.demo.model.entity.Kospi;
import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.service.PortfolioService;
import com.woorifis.demo.model.service.SymbolService;
import com.woorifis.demo.model.service.UserService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/portfolio")
@RequiredArgsConstructor
public class PortfolioController {

	
	private final PortfolioService portfolioService;
	private final UserService userService;
	private final SymbolService symbolService;
	
	  // 각 종목의 비율을 가져와서 화면에 전달 - 특정 날짜 (오늘만)
	@GetMapping("/getPortfolio")
	public String getPortfolio(@RequestParam("date") String date, Model model) {
	    List<Portfolio> portfolioList = portfolioService.getPortfoliosByDate(date);
	    model.addAttribute("portfolioList", portfolioList); 
	    return "portfolio/select";
	}

	// name, type에 따른 10가지 조합 중 2가지 선택
	@GetMapping("/compare")
	public String comparePage() {
		return "portfolio/compare";
	}
	 @GetMapping("/comparePortfolios")
	    public String comparePortfolios(
			 @RequestParam("typeA") String typeA,
			 @RequestParam("dateA") String dateA,
			 @RequestParam("typeB") String typeB,
			 @RequestParam("dateB") String dateB,
			 Model model) {
			 System.out.println("typeA: " + typeA);
			 System.out.println("dateA: " + dateA);
			 System.out.println("typeB: " + typeB);
			 System.out.println("dateB: " + dateB);

			 Portfolio resultA = portfolioService.getComparisonResult(typeA, dateA);
			 Portfolio resultB = portfolioService.getComparisonResult(typeB, dateB);

			 System.out.println(resultA);
			 System.out.println(resultB);

			 // Model에 데이터를 추가하여 뷰로 전달합니다.
			 model.addAttribute("resultA", resultA);
			 model.addAttribute("resultB", resultB);

			 // 뷰 페이지 이름을 반환합니다.
	//	        return "portfolio/compare";
			 return "portfolio/comparePortfolios";
	    }

//	@GetMapping("/dashboard")
//	public String showDashboard(Model model){
//		Date date = new Date();
//		System.out.println("date : "+ date);
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		String today = formatter.format(date);
//		System.out.println("today : "+ today);
//
//		List<Portfolio> list = portfolioService.getPortfoliosByDate(today);
//		model.addAttribute("list", list);
//		System.out.println("대시보드 list : "+ list);
//		return "portfolio/dashboard";
//	}
	
	@GetMapping("/dashboard")
	public <T> String showDashboard(Model model){
//		Date date = new Date();
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		String today = formatter.format(date);
//		List<Portfolio> list = portfolioService.getPortfoliosByDate(today);
//		model.addAttribute("list", list);
		Date date = new Date();
//		System.out.println("date : "+ date);
//		System.out.println("today : "+ today);
		String today = "2022-08-01";
		List<Portfolio> list = portfolioService.getPortfoliosByDate(today);
		model.addAttribute("list", list);
		System.out.println("대시보드 list : "+ list);

		Portfolio firstPortfolio = list.get(0);
		Portfolio secondPortfolio = list.get(1);
		Portfolio thirdPortfolio = list.get(2);
		Portfolio fourthPortfolio = list.get(3);
		Portfolio fifthPortfolio = list.get(4);
		Portfolio sixthPortfolio = list.get(5);
		model.addAttribute("firstPortfolio", firstPortfolio);
		model.addAttribute("secondPortfolio", secondPortfolio);
		model.addAttribute("thirdPortfolio", thirdPortfolio);
		model.addAttribute("fourthPortfolio", fourthPortfolio);
		model.addAttribute("fifthPortfolio", fifthPortfolio);
		model.addAttribute("sixthPortfolio", sixthPortfolio);
		
		System.out.println("두번째 list : "+ secondPortfolio);
		
////		Float nasdaq = secondPortfolio.getUs();
//		Float ftse =secondPortfolio.getUk();
//		Float nikkei =secondPortfolio.getJp();
//		Float euro =secondPortfolio.getEuro();
//		Float kospi =secondPortfolio.getKor();
//		Float nifty =secondPortfolio.getInd();
//		Float tw =secondPortfolio.getTw();
//		Float brazil =secondPortfolio.getBr();
//		Float kor3y =secondPortfolio.getKor3y();
//		Float kor10y =secondPortfolio.getKor10y();
//		Float us3y =secondPortfolio.getUs3y();
//		Float us10y =secondPortfolio.getUs10y();
//		Float gold =secondPortfolio.getGold();
		
		Map.Entry<String, Float>[] nanuristable = portfolioService.getTop3(fifthPortfolio);

		String stableTop1Name = nanuristable[0].getKey();
		Float stableTop1Value = nanuristable[0].getValue();
		String stableTop2Name = nanuristable[1].getKey();
		Float stableTop2Value = nanuristable[1].getValue();
		String stableTop3Name = nanuristable[2].getKey();
		Float  stableTop3Value = nanuristable[2].getValue();
		
		Map.Entry<String, Float>[] nanuridangerous = portfolioService.getTop3(sixthPortfolio);
		
		String dangerTop1Name = nanuridangerous[0].getKey();
		Float dangerTop1Value = nanuridangerous[0].getValue();
		String dangerTop2Name = nanuridangerous[1].getKey();
		Float dangerTop2Value = nanuridangerous[1].getValue();
		String dangerTop3Name = nanuridangerous[2].getKey();
		Float  dangerTop3Value = nanuridangerous[2].getValue();
		
		model.addAttribute("stableTop1Name", stableTop1Name);	
		model.addAttribute("stableTop1Value", stableTop1Value);	
		model.addAttribute("stableTop2Name", stableTop2Name);	
		model.addAttribute("stableTop2Value", stableTop2Value);	
		model.addAttribute("stableTop3Name", stableTop3Name);	
		model.addAttribute("stableTop3Value", stableTop3Value);	
		model.addAttribute("dangerTop1Name", dangerTop1Name);	
		model.addAttribute("dangerTop1Value", dangerTop1Value);	
		model.addAttribute("dangerTop2Name", dangerTop2Name);	
		model.addAttribute("dangerTop2Value", dangerTop2Value);	
		model.addAttribute("dangerTop3Name", dangerTop3Name);	
		model.addAttribute("dangerTop3Value", dangerTop3Value);	
		
//		System.out.println("fifthPortfolio :" + fifthPortfolio.getType());
		System.out.println("코리아 10년 27이어야해 :" + stableTop1Name + stableTop1Value);
//		System.out.println("미국 10년 18이어야해 :" + stableTop2Name + stableTop2Value);
//		System.out.println("나스닥 16이어야해 :" + stableTop3Name + stableTop3Value);
		
		
		
//		Class<Kor10y> itemType = Symbol.class;
//		symbolService.getDataByItemId(id, itemType)
		Class<?> itemType = portfolioService.getTopClose(stableTop1Name);
		List<?> item = portfolioService.getClose(itemType);
 		System.out.println("이건 뭐가나오지? :" + item);
		model.addAttribute("item", item);
		
		
		
		
//-----------나스닥 종가-----------------------//
		List<Symbol> nasdaqAll = symbolService.getAllNasdaqData();
		Symbol nasdaqClose = nasdaqAll.get(nasdaqAll.size() - 1);
		Symbol nasdaqBefore = nasdaqAll.get(nasdaqAll.size() - 2);	
		Integer nasdaqClosetoInt = (int) nasdaqClose.getClose();
		Integer nasdaqBeforetoInt = (int) nasdaqBefore.getClose();
		//증감률 가져오기
		Double nasdaqVariance_0 = (double) (nasdaqClosetoInt - nasdaqBeforetoInt)/nasdaqBeforetoInt*100;
		Double nasdaqVariance = Math.round(nasdaqVariance_0 * 100.0) / 100.0;
		//천자리수 컴마찍기
		DecimalFormat decimalFormat = new DecimalFormat("#,###");
		String nasdaq = decimalFormat.format(nasdaqClosetoInt);
//-----------나스닥 종가 끝-----------------------//

//-----------코스피 종가-----------------------//
  		List<Kospi> kospiAll = symbolService.getAllKospiData();
  		Kospi kospiClose = kospiAll.get(kospiAll.size() - 1);
  		Kospi kospiBefore = kospiAll.get(kospiAll.size() - 2);
  		Integer kospiClosetoInt = (int) kospiClose.getClose();
  		Integer kospiBeforetoInt = (int) kospiBefore.getClose();
		//증감률 가져오기
		Double kospiVariance_0 = (double) (kospiClosetoInt - kospiBeforetoInt)/kospiBeforetoInt*100;
		Double kospiVariance = Math.round(kospiVariance_0 * 100.0) / 100.0;
  		//천자리수 컴마찍기
        String kospi = decimalFormat.format(kospiClosetoInt);
//-----------코스피 종가 끝-----------------------//
              
//-----------유로 종가-----------------------//
		List<Euro> euroAll = symbolService.getAllEuroData();
		Euro euroClose = euroAll.get(euroAll.size() - 1);
		Euro euroBefore = euroAll.get(euroAll.size() - 2);
		Integer euroClosetoInt = (int) euroClose.getClose();
		Integer euroBeforetoInt = (int) euroBefore.getClose();
		//증감률 가져오기
		Double euroVariance_0 = (double) (euroClosetoInt - euroBeforetoInt)/euroBeforetoInt*100;
		Double euroVariance = Math.round(euroVariance_0 * 100.0) / 100.0;
		//천자리수 컴마찍기
        String euro = decimalFormat.format(euroClosetoInt);
//-----------유로 종가 끝-----------------------//              
		
		model.addAttribute("nasdaq", nasdaq);
		model.addAttribute("euro", euro);
		model.addAttribute("kospi", kospi);
		model.addAttribute("nasdaqVariance", nasdaqVariance);
		model.addAttribute("euroVariance", euroVariance);
		model.addAttribute("kospiVariance", kospiVariance);

		return "portfolio/dashboard";
	}
	
	@GetMapping("/result")
    public String resultPage(Model model, HttpSession session) {
        // 현재 로그인한 사용자 또는 UserDTO를 가져오는 방법이 있다고 가정합니다.
        // 데모 목적으로 UserDTO 객체가 있다고 가정합니다.
		UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
		System.out.println("loginUser포트폴리오 : "+ loginUser);
		
		String UserId = loginUser.getUserId();
		
		UserDTO User = userService.getUserInfo(UserId);
		
		String type = "C/"+User.getType();
		System.out.println("user type : "+ type);
		
		// 오늘 날짜 가져오기
//	    LocalDate currentDate = LocalDate.now();
//	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd"); // Define your desired date format
//	    String date = currentDate.format(formatter);
	    String date = "2022-08-01";

	    
    	System.out.println("type,date : "+ type + date);

        // 사용자 유형에 기반하여 포트폴리오를 가져옵니다.
        Portfolio portfolio = portfolioService.getComparisonResult(type, date);
        
    	System.out.println("result : "+ portfolio);
    	
        // 모델에 포트폴리오를 추가하여 뷰에서 렌더링합니다.
        model.addAttribute("portfolio", portfolio);
        model.addAttribute("User", User);
//		model.addAttribute("score", score);
        
        return "portfolio/result";
    }
	

}
