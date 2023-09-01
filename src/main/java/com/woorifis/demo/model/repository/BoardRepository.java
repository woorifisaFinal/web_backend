package com.woorifis.demo.model.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.Board;

public interface BoardRepository extends JpaRepository<Board, Long>{
	
    List<Board> findByTitleContaining(String keyword);
  
}
