package com.woorifis.demo.model.entity;

import com.woorifis.demo.model.dto.BoardDTO;

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
@Table(name="board")
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long no;
	private String title;
	private String content;

	
	public static Board toBoard(BoardDTO boardDTO) {
		Board board = new Board();
		board.setNo(boardDTO.getNo());
		board.setTitle(boardDTO.getTitle());
		board.setContent(boardDTO.getContent());
		return board;

}
	}

