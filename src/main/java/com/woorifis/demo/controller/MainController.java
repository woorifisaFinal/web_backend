package com.woorifis.demo.controller;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.PortfolioRepository;
import com.woorifis.demo.model.repository.UserRepository;
import com.woorifis.demo.model.service.PortfolioService;
import com.woorifis.demo.model.service.UserService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequiredArgsConstructor
public class MainController {
    private final UserRepository userRepository;
    private final UserService userService;
    private final PortfolioRepository portfolioRepository;
    private final PortfolioService portfolioService;
    @GetMapping("/main")
    public String goMain(){

        return "mainpage/main";
    }

    @GetMapping("/survey")
    public String startSurvey(){
        return "portfolio/survey";
    }


    @GetMapping("/requestlogin")
    public String requestLogin(HttpSession session){
//        session.setAttribute("type", type);

        return "/user/requestlogin";
    }
    @GetMapping("/portfolio/savetype")
    public String saveTypeFromSurvey(@RequestParam("type")String type, @RequestParam("totalScore")String score, HttpSession session, Model model){
        if(type.equals("stable")){
            type ="안정형";
        }else if(type.equals("adventurous")){
            type="공격형";
        }
        // 로그인되어있으면 type 업데이트해요
        if ((UserDTO)session.getAttribute("loginUser") != null){
            UserDTO userdto = (UserDTO)session.getAttribute("loginUser");

            userdto.setType(type);
            User user = User.toUser(userdto);
            userRepository.save(user);
//            ##FOR REAL
//            Date date = new Date();
//            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//            String today = formatter.format(date);
//            ##FOR TEST
            String today = "2022-08-01";

            String type_=userdto.getType();
            type_ = "C/"+type_;
            Portfolio portfolio = portfolioService.getComparisonResult(type_, today);
            model.addAttribute("portfolio", portfolio);
            model.addAttribute("User", userdto);
//            Portfolio result = portfolioRepository.findByTypeAndDate(today, type_);
//            model.addAttribute("result", result);
//            model.addAttribute("type", type_);
            return "portfolio/result";
//            showResultPortfolio(session, model);
        }
        //로그인 안되어있으면 session에 저장해요
        else{
            session.setAttribute("type", type);
//            showResultPortfolio(session, model);
            return "user/login";
        }

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

        return "portfolio/result";
    }



//    @GetMapping("/result")
//    public String showResultPortfolio(HttpSession session, Model model ){
//        Date date = new Date();
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//        String today = formatter.format(date);
//        UserDTO user = (UserDTO)session.getAttribute("loginUser");
//        String type=user.getType();
//        Portfolio result = portfolioRepository.findByTypeAndDate(today, type);
//        model.addAttribute("result",result);
//        model.addAttribute("type", type);
//        return "portfolio/result";
//    }

}
