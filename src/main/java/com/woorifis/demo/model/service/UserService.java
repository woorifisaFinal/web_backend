package com.woorifis.demo.model.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.woorifis.demo.model.dto.UserDTO;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.UserRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

import java.util.Optional;

@Service
@Slf4j
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
		// 1. 회원이 입력한 이메일(dto)로 DB(entity) 조회
		// 2. DB 비밀번호가 사용자가 입력한 비밀번호와 일치하는지 판단해서 결과 리턴
		log.info("enter userservice.login");
		User user = userRepository.findByUserId(userDTO.getUserId()).orElse(null);
		log.info("find userID userservice.login");
		 if (user != null && user.getPassword().equals(userDTO.getPassword()))
		 {

			 userDTO = UserDTO.toUserDTO(user);
			 log.info("return {} for userservice.login",userDTO);
			 return userDTO;
		 }
		 else{
			 log.info("return null for userservice.login");
			return null;
		 }
	}

	 public UserDTO getUserInfo(String userId) {
	        // 여기서는 예시로 UserRepository를 사용하여 사용자 정보를 조회합니다.

	        User user = userRepository.findByUserId(userId).orElse(null); // 예시로 사용자 ID가 1인 사용자 정보를 가져옴

	        if (user != null) {
	            UserDTO userDTO = new UserDTO();
	            userDTO.setUserName(user.getUserName());
	            userDTO.setUserEmail(user.getUserEmail());
	            userDTO.setType(user.getType());
	            // 비밀번호는 뺐어요
	            return userDTO;
	        } else {
	            return null; // 사용자가 존재하지 않을 경우 예외 처리 필요
	        }
	    }
	

	    // 비밀번호 검증
	    public boolean isPasswordCorrect(String userId, String password) {
	        User user = userRepository.findByUserId(userId).orElse(null);
	        // 사용자가 존재하고 비밀번호가 일치하는지 여부를 확인
	        if (user != null) {
	        return  user.getPassword().equals(password);
	    } else{return false;}}

	    // 사용자 정보 업데이트
	    public void updateInfo(String userId, String newEmail, String newPassword) {
		 	log.info("userID: {}",userId);
	        User user = userRepository.findByUserId(userId).orElse(null);
			log.info("before: {}",user);
	        if (user != null) {
	            // 새로운 이메일과 비밀번호로 사용자 정보 업데이트
	            user.setUserEmail(newEmail);
				user.setPassword(newPassword);
	            userRepository.save(user);
				log.info("after:{}");
	        }

	    }

	    // 사용자 삭제 함수
	    public void deleteUser(Long userNo) {
	        userRepository.deleteById(userNo);
	    }
}
