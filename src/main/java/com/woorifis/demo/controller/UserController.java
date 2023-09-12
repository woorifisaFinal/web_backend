package com.woorifis.demo.controller;

import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.UserRepository;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
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
@RequestMapping("/user")
public class UserController {
	
	// 생성자 주입
	private final UserService userService;
	private final UserRepository userRepository;
	// 회원가입 페이지 출력 요청
	@GetMapping("/signup")
	public String signUpForm() {
		return "user/signup";
	}
	
	@PostMapping("/signup")
	public String signUp(@ModelAttribute UserDTO userDTO) {
		userService.save(userDTO);
		return "redirect:/user/login";
	}

	// 로그인 페이지 출력 요청
	@GetMapping("/login")
	public String logInForm() {return "user/login";}

	
	@PostMapping("/login") 
	public String logIn(@ModelAttribute UserDTO userDTO, HttpSession session, Model model) {
		// 유저서비스의 loginresult를 이용
		UserDTO loginResult =  userService.login(userDTO);
		if(loginResult == null) {
			// login 실패
			 session.setAttribute("msg", "로그인 실패");
	         return "user/login"; 
	            // 로그인 페이지로 다시 이동		
		}else {
			// login 성공
			 session.setAttribute("loginUser", loginResult);
			 if(session.getAttribute("type")!=null){

				 UserDTO userdto = (UserDTO)session.getAttribute("loginUser");

				 userdto.setType((String)session.getAttribute("type"));
				 User user = User.toUser(userdto);
				 userRepository.save(user);
				 session.removeAttribute("type");
				 return "redirect:/result";
			 }
			 // 로그인 유저 정보를 세션에 저장
			// login이 성공을 했으면 login된 유저는99 session에 id 값을 넣어줘서 session을 종료할때까지 유지시켜준다
				// 해서 맞으면 로그인 시켜주고
			 
			 return "redirect:/main";
			                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		}
	} 
	
	  @GetMapping("/mypage")
	    public String getUserInfo(Model model, HttpSession session) {
	        // HttpSession을 사용하여 현재 로그인한 사용자의 정보를 가져옴
	        
	        // HttpSession에서 저장된 로그인 사용자의 ID를 가져옴
	        UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");

	        if (loginUser != null) {
	                model.addAttribute("name", loginUser.getUserName());
	                model.addAttribute("email", loginUser.getUserEmail());
	                model.addAttribute("userType", loginUser.getType());
				return "user/mypage"; // 사용자 정보가 존재하는 경우 마이페이지 뷰로 이동
	        } else {
	            // 세션에 사용자 ID가 없는 경우에 대한 예외 처리
	            // 예를 들어, 로그인하지 않은 사용자가 접근한 경우 등
	           
	        	throw new RuntimeException("사용자를 찾을 수 없습니다.");
	        }


	    }

	
	    @GetMapping("/changeinfo")
	    public String changeInfo() {
	        return "user/changeinfo"; // 사용자 정보 수정 페이지로 이동
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
	                 return "redirect:/";
	             }
	         } else {
	             // userId가 세션에 없는 경우에 대한 예외 처리
	             return "redirect:/";
	         }
	     }

	
	
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
    
    @GetMapping("/withdrawal")
    public String showWithdrawalPage() {
        return "user/withdrawal"; // 사용자 탈퇴 페이지로 이동
    }

    @PostMapping("/withdrawal")
    public String withdrawal(HttpSession session) {
		UserDTO userDTO = (UserDTO)session.getAttribute("loginUser");
		String userId = userDTO.getUserId();
		Long userNo = userDTO.getUserNo();
        if (userId != null) {
            // 사용자 정보를 삭제 (UserService를 통해 구현)
            userService.deleteUser(userNo);

            // 세션에서 사용자 정보 삭제
            session.removeAttribute("loginUser");
            return "redirect:/"; // 탈퇴 완료 후 홈 페이지로 리다이렉트
        } else {
            // 세션에 사용자 ID가 없는 경우에 대한 예외 처리
        	throw new RuntimeException("사용자를 찾을 수 없습니다.");
        }
    }
    @GetMapping("/checkpw")
	public String showCheckpwPage(){
		return "user/checkpw";
	}
    @PostMapping("/checkpw")
	public String checkPassword(String pw){
		return "user/changeinfo";
	}
}
