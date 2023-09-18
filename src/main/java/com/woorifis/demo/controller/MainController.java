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
        return "/user/requestlogin";
    }
    @GetMapping("/portfolio/savetype")
    public String saveTypeFromSurvey(@RequestParam("type")String type, @RequestParam("totalScore")int score, HttpSession session, Model model){
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
            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String today = formatter.format(date);
//            ##FOR TEST
//            String today = "2022-08-01";

            String type_=userdto.getType();
            type_ = "C/"+type_;
            Portfolio portfolio = portfolioService.getComparisonResult(type_, today);
            model.addAttribute("portfolio", portfolio);
            model.addAttribute("User", userdto);
            session.setAttribute("score", score);

            return "redirect:/portfolio/result";

        }
        //로그인 안되어있으면 session에 저장해요
        else{
            session.setAttribute("type", type);
            session.setAttribute("score", score);
//            showResultPortfolio(session, model);
            return "redirect:/user/login";
        }

    }

}
