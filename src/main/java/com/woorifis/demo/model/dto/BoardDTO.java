package com.woorifis.demo.model.dto;


import com.woorifis.demo.model.entity.Board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
<<<<<<< HEAD

	private Long no;
	private String title;
	private String content;
=======
	//제너레이트 안씀 화면에서만 가져와서?
	private Long no;
	private String title;
	private String content;
//	private Long user_No;
	
	public Board toEntity() {
		Board board = new Board();
		board.setNo(this.getNo());
		board.setTitle(this.getTitle());
		board.setContent(this.getContent());
		return board;
>>>>>>> 94ad6dce03095de5d3a463aafacb1624be83c38d


	public static BoardDTO toBoardDTO(Board board) {
		BoardDTO dto = new BoardDTO();
		dto.setNo(board.getNo());
		dto.setTitle(board.getTitle());
		dto.setContent(board.getContent());
//		dto.setUser_No(this.getUser().getUserNo());
		return dto;

	
}
}