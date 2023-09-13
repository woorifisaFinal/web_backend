package com.woorifis.demo.controller;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.Portfolio;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.PortfolioRepository;
import com.woorifis.demo.model.repository.UserRepository;
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
    private final PortfolioRepository portfolioRepository;
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
    @GetMapping("/savetype")
    public void saveTypeFromSurvey(@RequestParam("type")String type, HttpSession session, Model model){
//        login 된 상황 type 업데이트해요
        if(type=="stable"){
            type ="안정형";
        }else{
            type="공격형";
        }
        if ((UserDTO)session.getAttribute("loginUser") != null){
            UserDTO userdto = (UserDTO)session.getAttribute("loginUser");

            userdto.setType(type);
            User user = User.toUser(userdto);
            userRepository.save(user);

//        return "portfolio/result";
            showResultPortfolio(session, model);
        }
        else{
            session.setAttribute("type", type);

        }

    }

    @GetMapping("/result")
    public String showResultPortfolio(HttpSession session, Model model ){
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String today = formatter.format(date);
        UserDTO user = (UserDTO)session.getAttribute("loginUser");
        String type=user.getType();
        Portfolio result = portfolioRepository.findByTypeAndDate(today, type);
        model.addAttribute("result",result);
        model.addAttribute("type", type);
        return "portfolio/result";
    }

}
