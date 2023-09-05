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

	private Long no;
	private String title;
	private String content;


	public static BoardDTO toBoardDTO(Board board) {
		BoardDTO dto = new BoardDTO();
		dto.setNo(board.getNo());
		dto.setTitle(board.getTitle());
		dto.setContent(board.getContent());
		return dto;

	
	}
}