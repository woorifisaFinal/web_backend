package com.example.demo;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;

import com.woorifis.demo.model.dto.BoardDTO;
import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.repository.BoardRepository;
import com.woorifis.demo.model.repository.UserRepository;
import com.woorifis.demo.model.service.BoardService;


public class BoardServiceTest {

    @InjectMocks
    private BoardService boardService;

    @Mock
    private UserRepository userRepository;

    @Mock
    private BoardRepository boardRepository;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testRegistBoard() {
        BoardDTO boardDTO = new BoardDTO();
        boardDTO.setTitle("Test Title");
        boardDTO.setContent("Test Content");

        boardService.registBoard(boardDTO);

        verify(boardRepository).saveAndFlush(any(Board.class));
    }

    @Test
    public void testListBoard() {
		Pageable pageable = PageRequest.of(0, 5,Direction.DESC, "no");//no를 기준으로
		//페이지는 제로베이스 0페이지(1부터) 5까지
		Page<Board> boards = boardRepository.findAll(pageable);
		List<Board> boardList = boards.getContent();
		Assertions.assertEquals(boardList.get(0).getTitle(),"오늘은 화요일!!");
		Assertions.assertEquals(boards.getTotalPages(),2);
    }

    @Test
    public void testShowBoardWithValidId() {
        int boardId = 1;
        Board board = new Board();
        when(boardRepository.findById(boardId)).thenReturn(Optional.of(board));

        Board result = boardService.showBoard(boardId);

        assertNotNull(result);
    }

    @Test
    public void testShowBoardWithInvalidId() {
        int boardId = 1;
        when(boardRepository.findById(boardId)).thenReturn(Optional.empty());

        assertThrows(RuntimeException.class, () -> boardService.showBoard(boardId));
    }

    @Test
    public void testDeleteBoard() {
        int boardId = 1;

        boardService.deleteBoard(boardId);

        verify(boardRepository).deleteById(boardId);
    }

    @Test
    public void testSearchBoard() {
        String keyword = "Test";
        List<Board> searchResults = new ArrayList<>();
        when(boardRepository.findByTitleContaining(keyword)).thenReturn(searchResults);

        List<Board> result = boardService.searchBoard(keyword);

        assertEquals(searchResults.size(), result.size());
    }
}
