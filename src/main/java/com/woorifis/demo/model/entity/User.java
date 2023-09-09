package com.woorifis.demo.model.entity;

import com.woorifis.demo.model.dto.UserDTO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@Table(name="user")
public class User extends BaseEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userNo;
	@Column(nullable=false)
	private String userId;
	@Column(nullable=false)
	private String userName;
	@Column(nullable=false)
	private String userEmail;
	@Column(nullable=false)
	private String password;
	@Column
	private String type;
	
	public static User toUser(UserDTO userDTO) {
		User user = new User();
		user.setUserId(userDTO.getUserId());
		user.setUserName(userDTO.getUserName());
		user.setUserEmail(userDTO.getUserEmail());
		user.setPassword(userDTO.getPassword());
		user.setType(userDTO.getType());
		return user;
	}
	

}
