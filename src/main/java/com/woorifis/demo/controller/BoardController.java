package com.woorifis.demo.controller;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.woorifis.demo.model.dto.BoardDTO;
import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardController {

	private BoardService service;
	
	public BoardController(BoardService service) {
		this.service = service;
	}
	
	@GetMapping("/regist")
	public String registForm() {
		return "board/registboard";
	}
		
	@PostMapping("/regist")
	public String registBoard(@ModelAttribute BoardDTO board) {
		service.writeBoard(board);
		return "redirect:/board/list";
		
	}
	
	@GetMapping("/list")
	public String list(@RequestParam(required = false, defaultValue =  "1") Integer page, Model model) { //int의 레포타입인 인티저로 해야함 없을수도 있으니까 객체로?
		// 페이징 처리 - 한페이지에 10 개씩만 보 여주자
		page--;
		Page<Board> pageInfo = service.listboard(page);
		model.addAttribute("pageInfo", pageInfo);
		
		//log.debug("page: {}",page);
		return "board/list";

	}
	@GetMapping("/detail")
	public String detail(@RequestParam int no, Model model)	{
		log.debug("no :{}",no);
		try {
			Board board = service.detailBoard(no);
			model.addAttribute("board", board);
			return "board/detail";
		}catch(RuntimeException e) {
			return "/board/list";
		}
	}
	// a 링크 타고오면 get 매핑
	@GetMapping("/delete")
	public String delete(@RequestParam int no) {
		log.debug("board no:{}", no);
		service.deleteBoard(no);
		
		return"redirect:/board/list";
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute BoardDTO dto,Model model) {
		log.debug("board 수정: {}", dto);
		service.writeBoard(dto);
		return "redirect:/board/detail?no=" +dto.getNo();
	}
}
