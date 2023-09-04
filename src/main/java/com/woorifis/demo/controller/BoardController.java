package com.woorifis.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
@RequiredArgsConstructor
public class BoardController {

	private BoardService boardservice;
	
	@Autowired
	public BoardController(BoardService service) {
		this.boardservice = service;
	}
	
	@GetMapping("/regist")
	public String registForm() {
		return "board/regist";
	}
		
	@PostMapping("/regist")
	public String registBoard(@ModelAttribute BoardDTO boardDTO) {
		System.out.println("regist");
		System.out.println("BoardDTO = "+ boardDTO);
		boardservice.registBoard(boardDTO);
		return "redirect:/board/list";
		
	}
	
	
	@GetMapping("/list")
	public String listBoard(@RequestParam(required = false, defaultValue =  "1") Integer page, Model model) {
		page--;
		Page<Board> pageInfo = boardservice.listBoard(page);
//		addAttribute(name, value) value 객체를 name 이라는 이름으로 추가해줌 
		// view 에서 name 으로 지정된 value 를 사용하기 위함
		model.addAttribute("pageInfo", pageInfo);
		return "board/list";
	}

	
	@GetMapping("/search")
	public String searchBoard(@RequestParam(required = false) String keyword, Model model) {
	    if (keyword != null && !keyword.isEmpty()) {
	        // 검색어를 이용하여 검색 처리를 수행
	        List<Board> searchResults = boardservice.searchBoard(keyword);
	        model.addAttribute("searchResults", searchResults);
	    }
	    return "board/search"; // 검색 결과를 보여줄 뷰 페이지 이름
	}
	
	@GetMapping("/show")
	public String showBoard(@RequestParam Long no, Model model)	{
//  search()에서 no를 데려오고 그 no에 맞는 데이터를 가져옴
//	 db에서 종목별 no 이 있어야 함을 전제
		try {
			Board board = boardservice.showBoard(no);
			model.addAttribute("board", board);
			return "board/show";
		}catch(RuntimeException e) {
			return "/board/list";
		}
	}	

	
	@GetMapping("/delete")
	public String deleteBoard(@RequestParam Long no) {
		log.debug("board no:{}", no);
		boardservice.deleteBoard(no);
		
		return"redirect:/board/list";
	}
	
//	@PostMapping("/update")
//	public String updateBoard(@ModelAttribute BoardDTO dto,Model model) {
//		log.debug("board 수정: {}", dto);
//		boardservice.registBoard(dto);
//		return "redirect:/board/detail?no=" +dto.getNo();
//	}
}
