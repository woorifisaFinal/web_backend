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
@RequestMapping("board")
@Slf4j
@RequiredArgsConstructor
public class BoardController {

	private final BoardService boardService;
	

	@GetMapping("/regist")
	public String registForm() {
		return "board/regist";
	}
		
	@PostMapping("/regist")
	public String registBoard(@ModelAttribute BoardDTO boardDTO) {
		boardService.registBoard(boardDTO);
		return "redirect:/board/list";
		
	}
	
	@GetMapping("/list")
	public String listBoard(@RequestParam(required = false, defaultValue =  "1") Integer page, Model model) { //int의 레포타입인 인티저로 해야함 없을수도 있으니까 객체로?
		// 페이징 처리 - 한페이지에 10 개씩만 보 여주자
		page--;
		Page<Board> pageInfo = boardService.listBoard(page);
		if (pageInfo == null) {
			return "redirect:/"; //홈화면으로 보내기
		}else {
		model.addAttribute("pageInfo", pageInfo);
		//log.debug("page: {}",page);
		return "board/list";

	}}
	
	@GetMapping("/search")
	public String searchBoard(@RequestParam(required = false) String keyword, Model model) {
	    if (keyword != null && !keyword.isEmpty()) {
	        // 검색어를 이용하여 검색 처리를 수행
	        List<Board> searchResults = boardService.searchBoard(keyword);
	        model.addAttribute("searchResults", searchResults);
	    }
	    return "board/search"; // 검색 결과를 보여줄 뷰 페이지 이름
	}
	
	@GetMapping("/detail")
	public String detailBoard(@RequestParam Long no, Model model)	{
//  search()에서 no를 데려오고 그 no에 맞는 데이터를 가져옴
	// db에서 공지사항 글별 no 이 있어야 함을 전제
		log.debug("no: {}", no);
		try{
			Board board = boardService.detailBoard(no);
			model.addAttribute("board", board);
			return "board/detail";
		}
		catch(RuntimeException e){
			return "board/list";
		}
	}

	
	@GetMapping("/delete")
	public String deleteBoard(@RequestParam Long no) {
		log.debug("board no:{}", no);
		boardService.deleteBoard(no);
		
		return"redirect:/board/list";
	}
	
//	@PostMapping("/update")
//	public String updateBoard(@ModelAttribute BoardDTO dto,Model model) {
//		log.debug("board 수정: {}", dto);
//		boardservice.registBoard(dto);
//		return "redirect:/board/detail?no=" +dto.getNo();
//	}
}
