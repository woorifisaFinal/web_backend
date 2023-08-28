package com.woorifis.demo.model.service;

import org.springframework.stereotype.Service;


import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserRepository userRepository;

	public void save(UserDTO userDTO) {
		// repository의 save 메서드 호출 (entity 객체 넘겨줘야 함)
		// 1. dto -> entity 변환
		// 2. repository의 save 메서드 호출
		
		User user = User.toUser(userDTO);
		userRepository.save(user);
	}
	
	public UserDTO login(UserDTO userDTO) {
		// 1. 회원이 입력한 이메일로 DB 조회
		// 2. DB 비밀번호가 사용자가 입력한 비밀번호와 일치하는지 판단
	}

}
