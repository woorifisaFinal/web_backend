package com.woorifis.demo.model.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;

import com.woorifis.demo.model.dto.BoardDTO;
import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.BoardRepository;
import com.woorifis.demo.model.repository.UserRepository;

import jakarta.transaction.Transactional;

public class BoardService {
	private UserRepository urepo;
	private BoardRepository brepo; 
	
	@Autowired
	public BoardService(UserRepository urepo, BoardRepository brepo) {
		this.urepo = urepo;
		this.brepo = brepo;
	}
	
	
	@Transactional
	public void writeBoard(BoardDTO dto) {
		Long userId = dto.getUser_No();
		User user = urepo.getReferenceById(userId);
		Board board = dto.toEntity();
		// user는 방금 생김..
		board.setUser(user);
		brepo.saveAndFlush(board);
	}

	public Page<Board> listboard(int page) {
		Pageable pageable = PageRequest.of(page, 5, Direction.DESC,"no");
		Page<Board> pageInfo = brepo.findAll(pageable);
		return pageInfo;
	}
		
	
	
	public Board detailBoard(int no) {
		Optional<Board> option = brepo.findById(no);
		if(option.isPresent()) {
			return option.get();
		}else {
			throw new RuntimeException(no+"글은 지워졌나봐요");
		}
	}
	
	public void deleteBoard(int no) {
		brepo.deleteById(no);
	}
}

