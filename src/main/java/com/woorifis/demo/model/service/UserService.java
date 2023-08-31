package com.woorifis.demo.model.service;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.UserRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserRepository userRepository;
	
	public void save(UserDTO userDTO) {
		// repository의 save 메서드 호출 (entity 객체 넘겨줘야 함)
		// 1. dto -> entity 변환
		User user = User.toUser(userDTO);
		// 2. repository의 save 메서드 호출
		userRepository.save(user);
	}
	
	public UserDTO login(UserDTO userDTO) {
		// 1. 회원이 입력한 이메일(dto)로 DB(entity) 조회
		// 2. DB 비밀번호가 사용자가 입력한 비밀번호와 일치하는지 판단해서 결과 리턴
		User user = userRepository.findByEmail(userDTO.getUserEmail()).get();
		 if (user != null && user.getPassword().equals(userDTO.getPassword())) 
		 {
			 return userDTO;
	} else{
		return null;
	}
}
	
	@Transactional
	public void update(String userId, String type) {
		// 1. 회원 아이디(기본 키) 가져오기 -> session 값
		String loggedInUserId = (String) session.getAttribute("loginUser");
		// 2. 회원의 성향 테이블에 update
		
	    User user = userRepository.findById(userId).get();
	    user.setType(type);
	}

}
