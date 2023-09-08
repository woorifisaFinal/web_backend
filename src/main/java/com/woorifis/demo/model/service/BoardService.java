package com.woorifis.demo.model.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.woorifis.demo.model.dto.BoardDTO;
import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.entity.User;
import com.woorifis.demo.model.repository.BoardRepository;
import com.woorifis.demo.model.repository.UserRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {
	private final BoardRepository boardRepository; 

	@Transactional
	public void registBoard(BoardDTO dto) {
		Board board = Board.toBoard(dto);
		boardRepository.save(board);
	}

	public Page<Board> listBoard(int page) {
		Pageable pageable = PageRequest.of(page, 5, Direction.ASC,"no");
		Page<Board> pageInfo = boardRepository.findAll(pageable);
		return pageInfo;
	}
	
	@Transactional
    public List<Board> searchBoard(String keyword) {
        // 키워드를 이용하여 검색 처리를 수행하고, 검색 결과를 반환하는 메서드를 작성해야 합니다.
        // 검색 조건에 따라 boardRepository에서 검색을 수행하고 결과를 리턴하면 됩니다.
        List<Board> searchResults = boardRepository.findByTitleContaining(keyword);
        return searchResults;
    }

	public Board detailBoard(long no){
		Optional<Board> option = boardRepository.findById(no);
		if(option.isPresent()){
			return option.get();
		}
		else{
			throw new RuntimeException(no+"번 글 지워짐");
		}
	}
	public void deleteBoard(Long no) {
		boardRepository.deleteById(no);
	}
	
	
    

}

