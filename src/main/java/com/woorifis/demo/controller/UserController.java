package com.woorifis.demo.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.service.UserService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("user")
public class UserController {
	
	// 생성자 주입
	private final UserService userService;
	
	// 회원가입 페이지 출력 요청
	@GetMapping("/signup")
	public String signUpForm() {return "user/signup";}
	
	@PostMapping("/signup")
	public String signUp(@ModelAttribute UserDTO userDTO) {
		System.out.println("signup");
		System.out.println("UserDTO = "+ userDTO);
		userService.save(userDTO);
		return "index";
	}

	// 로그인 페이지 출력 요청
	@GetMapping("/login")
	public String logInForm() {return "user/login";}
	
	@PostMapping("/login") 
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
			// login이 성공을 했으면 login된 유저는99 session에 id 값을 넣어줘서 session을 종료할때까지 유지시켜준다
				// 해서 맞으면 로그인 시켜주고 
			
			 
			 return "redirect:/";		
			                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		}
	} 
	
	  @GetMapping("/mypage")
	    public String getUserInfo(Model model, HttpSession session) {
	        // HttpSession을 사용하여 현재 로그인한 사용자의 정보를 가져옴
	        
	        // HttpSession에서 저장된 로그인 사용자의 ID를 가져옴
	        String userId = (String) session.getAttribute("userId");

	        if (userId != null) {
	            // UserService를 통해 사용자 정보를 가져옴
	            UserDTO userDTO = userService.getUserInfo(userId);

	            if (userDTO != null) {
	                // 사용자 정보를 모델에 추가해서 프론트 전달
	                model.addAttribute("name", userDTO.getUserName());
	                model.addAttribute("email", userDTO.getUserEmail());
	                model.addAttribute("userType", userDTO.getType());
	            } else {
	                // 사용자 정보를 찾을 수 없는 경우에 대한 예외 처리
	                // 예를 들어, 사용자가 존재하지 않는 경우 등
	           
	                return "redirect:";
	            }
	        } else {
	            // 세션에 사용자 ID가 없는 경우에 대한 예외 처리
	            // 예를 들어, 로그인하지 않은 사용자가 접근한 경우 등
	           
	            return "redirect:";
	        }

	        return "user/mypage"; // 사용자 정보가 존재하는 경우 마이페이지 뷰로 이동
	    }

	
	    @GetMapping("/changeinfo")
	    public String changeInfo() {
	        return "user/mypage"; // 사용자 정보 수정 페이지로 이동
	    }

	    @PostMapping("/updateinfo")
	    public String updateInfo(@RequestParam("password") String password,
	            @RequestParam("newName") String newName,
	            @RequestParam("newEmail") String newEmail,
	            @SessionAttribute(name = "userId", required = false) String userId) {
	    	 if (userId != null) {
	             // 비밀번호 검증을 수행 (비밀번호가 맞는지 확인하는 로직을 구현해야 함)
	             if (userService.isPasswordCorrect(userId, password)) {
	                 // 비밀번호가 올바른 경우, 사용자 정보를 수정
	                 userService.updateInfo(userId, newName, newEmail);
	                 return "redirect:/user/mypage";
	             } else {
	                 // 비밀번호가 올바르지 않은 경우
	                 return "redirect:";
	             }
	         } else {
	             // userId가 세션에 없는 경우에 대한 예외 처리
	             return "redirect:";
	         }
	     }

	
	
    @PostMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/user/login"; 
    }
    
    @GetMapping("/withdrawal")
    public String showWithdrawalPage() {
        return "user/withdrawal"; // 사용자 탈퇴 페이지로 이동
    }

    @PostMapping("/withdrawal")
    public String withdrawal(@SessionAttribute(name = "userId", required = false) Long userNo, String userId, HttpSession session) {
        if (userId != null) {
            // 사용자 정보를 삭제 (UserService를 통해 구현)
            userService.deleteUser(userNo);

            // 세션에서 사용자 정보 삭제
            session.removeAttribute("userId");
            return "redirect:/"; // 탈퇴 완료 후 홈 페이지로 리다이렉트
        } else {
            // 세션에 사용자 ID가 없는 경우에 대한 예외 처리
           
            return "redirect:";
        }
    }
    
    
}
