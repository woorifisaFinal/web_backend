package com.woorifis.demo.model.entity;

import com.woorifis.demo.model.dto.BoardDTO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@Entity
@ToString
@Table(name="boardtest")
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long no;
	@Column
	private String title;
	@Column
	private String content;
	//private String user_id; 이거아님

//	@ManyToOne
//	@JoinColumn(name = "user_id")
//	User user;
	
	public BoardDTO toDto() {
		BoardDTO dto = new BoardDTO();
		dto.setNo(this.getNo());
		dto.setTitle(this.getTitle());
		dto.setContent(this.getContent());
//		dto.setUser_No(this.getUser().getUserNo());
		return dto;

}
	}

