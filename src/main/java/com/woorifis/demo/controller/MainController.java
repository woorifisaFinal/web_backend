package com.woorifis.demo.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class MainController {
    @GetMapping("/main")
    public String please(){
        return "mainpage/main";
    }

    @GetMapping("/survey")
    public String startSurvey(){
        return "portfolio/survey";
    }

    @GetMapping("/result")
    public String showResultOfSurvey(){
        return "portfolio/result";
    }
}
