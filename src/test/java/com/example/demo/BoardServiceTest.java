package com.example.demo;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

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
    public void testWrite() {
        BoardDTO boardDTO = new BoardDTO();
        boardDTO.setTitle("Test Title");
        boardDTO.setContent("Test Content");

        boardService.write(boardDTO);

        verify(boardRepository).saveAndFlush(any(Board.class));
    }

    @Test
    public void testList() {
        Pageable pageable = Pageable.ofSize(5);
        List<Board> boardList = new ArrayList<>();
        boardList.add(new Board());
        Page<Board> page = new PageImpl<>(boardList);

        when(boardRepository.findAll(pageable)).thenReturn(page);

        Page<Board> result = boardService.list(0);

        assertEquals(boardList.size(), result.getContent().size());
    }

    @Test
    public void testDetailWithValidId() {
        int boardId = 1;
        Board board = new Board();
        when(boardRepository.findById(boardId)).thenReturn(Optional.of(board));

        Board result = boardService.detail(boardId);

        assertNotNull(result);
    }

    @Test
    public void testDetailWithInvalidId() {
        int boardId = 1;
        when(boardRepository.findById(boardId)).thenReturn(Optional.empty());

        assertThrows(RuntimeException.class, () -> boardService.detail(boardId));
    }

    @Test
    public void testDelete() {
        int boardId = 1;

        boardService.delete(boardId);

        verify(boardRepository).deleteById(boardId);
    }

    @Test
    public void testSearch() {
        String keyword = "Test";
        List<Board> searchResults = new ArrayList<>();
        when(boardRepository.findByTitleContaining(keyword)).thenReturn(searchResults);

        List<Board> result = boardService.search(keyword);

        assertEquals(searchResults.size(), result.size());
    }
}
