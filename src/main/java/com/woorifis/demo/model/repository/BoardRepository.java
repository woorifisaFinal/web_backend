package com.woorifis.demo.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.woorifis.demo.model.entity.Board;

public interface BoardRepository extends JpaRepository<Board, Integer>{

}
