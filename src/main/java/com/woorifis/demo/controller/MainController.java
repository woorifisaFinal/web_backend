package com.woorifis.demo.controller;

import ch.qos.logback.core.model.Model;
import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.UserRepository;
import com.woorifis.demo.model.service.UserService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class MainController {
    private final UserRepository userRepository;
    @GetMapping("/main")
    public String goMain(){

        return "mainpage/main";
    }

    @GetMapping("/survey")
    public String startSurvey(){
        return "portfolio/survey";
    }


    @GetMapping("/requestlogin")
    public String requestLogin(@RequestParam("type")String type, HttpSession session){
        session.setAttribute("type", type);

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
        UserDTO userdto = (UserDTO)session.getAttribute("loginUser");

        userdto.setType(type);
        User user = User.toUser(userdto);
        userRepository.save(user);

//        return "portfolio/result";
        showResultPortfolio(session, model);
    }

    @GetMapping("/result")
    public String showResultPortfolio(HttpSession session, Model model ){

        UserDTO user = (UserDTO)session.getAttribute("loginUser");

        return "portfolio/result";
    }

}
