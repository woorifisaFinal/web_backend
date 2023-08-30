package com.woorifis.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.service.UserService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {
	
	// 생성자 주입
	private final UserService userService;
	
	// 회원가입 페이지 출력 요청
	@GetMapping("/user/signup")
	public String signUpForm() {return "user/signup";}
	
	@PostMapping("/user/signup")
	public String signUp(@ModelAttribute UserDTO userDTO) {
		System.out.println("signup");
		System.out.println("UserDTO = "+ userDTO);
		userService.save(userDTO);
		return "index";
	}
	
	
	// 로그인 페이지 출력 요청
	@GetMapping("/user/login")
	public String logInForm() {return "user/login";}
	
	@PostMapping("/user/login")
	public String logIn(@ModelAttribute UserDTO userDTO, HttpSession session) {
		// 유저서비스의 loginresult를 이용
		UserDTO loginResult =  userService.login(userDTO);
		if(loginResult == null) {
			// login 실패
			
			 session.setAttribute("msg", "로그인 실패");
	         return "user/login"; 
	            // 로그인 페이지로 다시 이동		
//			model.addAttribute("msg", "로그인실패");
//			return "login/loginForm";	
		}else {
			// login 성공
			 session.setAttribute("loginUser", loginResult); 
			 // 로그인 유저 정보를 세션에 저장
			// login이 성공을 했으면 login된 유저는 session에 id 값을 넣어줘서 session을 종료할때까지 유지시켜준다
				// 해서 맞으면 로그인 시켜주고 
			 session.setMaxInactiveInterval(-1); //무한대
			 
			 return "redirect:/";		
			                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		}
	} 
	
	
    @PostMapping("/user/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/user/login"; 
    }
}
