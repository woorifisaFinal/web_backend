package com.woorifis.demo.model.dto;

import com.woorifis.demo.model.entity.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserDTO {
	
	private long userNo;
	private String userId;
	private String userName;
	private String userEmail;
	private String password;
	private String type;
	
	
	public static UserDTO toUserDTO(User user) {
		UserDTO userDTO = new UserDTO();
		userDTO.setUserNo(user.getUserNo());
		userDTO.setUserId(user.getUserId());
		userDTO.setUserName(user.getUserName());
		userDTO.setUserEmail(user.getUserEmail());
		userDTO.setPassword(user.getPassword());
		userDTO.setType(user.getType());
		return userDTO;
	}
}
