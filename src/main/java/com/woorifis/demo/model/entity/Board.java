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
<<<<<<< HEAD

=======
>>>>>>> 94ad6dce03095de5d3a463aafacb1624be83c38d
@Getter
@Setter
@Entity
@ToString
<<<<<<< HEAD
@Table(name="board")
=======
@Table(name="boardtest")
>>>>>>> 94ad6dce03095de5d3a463aafacb1624be83c38d
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long no;
<<<<<<< HEAD
=======
	@Column
>>>>>>> 94ad6dce03095de5d3a463aafacb1624be83c38d
	private String title;
	@Column
	private String content;
<<<<<<< HEAD

	
	public static Board toBoard(BoardDTO boardDTO) {
		Board board = new Board();
		board.setNo(boardDTO.getNo());
		board.setTitle(boardDTO.getTitle());
		board.setContent(boardDTO.getContent());
		return board;

=======
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

>>>>>>> 94ad6dce03095de5d3a463aafacb1624be83c38d
}
	}

