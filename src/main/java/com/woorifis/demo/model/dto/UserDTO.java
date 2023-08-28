package com.woorifis.demo.model.dto;

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
	
}
