package com.woorifis.demo.model.entity;

import com.woorifis.demo.model.dto.BoardDTO;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@ToString
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int no;
	private String title;
	private String content;
	//private String user_id; 이거아님

//	@ManyToOne
//	@JoinColumn(name = "user_id")
//	User user;
	
	public BoardDTO toDto() {
		BoardDTO dto = new BoardDTO();
		dto.setBoardId(this.getNo());
		dto.setTitle(this.getTitle());
		dto.setContent(this.getContent());
//		dto.setUser_No(this.getUser().getUserNo());
		return dto;

	
}
	}

