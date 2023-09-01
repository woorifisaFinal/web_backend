package com.woorifis.demo.model.dto;


import com.woorifis.demo.model.entity.Board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BoardDTO {
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

}}