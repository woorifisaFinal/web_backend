package com.example.demo;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.woorifis.demo.model.dto.BoardDTO;
import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.repository.BoardRepository;
import com.woorifis.demo.model.service.BoardService;

import static org.mockito.Mockito.*;

@SpringBootTest
public class BoardServiceTest {

    @InjectMocks
    private BoardService boardService;

    @Mock
    private BoardRepository boardRepository;

    @Test
    public void testWriteBoard() {
        // Create a mock BoardDTO
        BoardDTO dto = new BoardDTO();
        dto.setTitle("Test Title");
        // Set other properties...

        // Mock behavior
        when(boardRepository.saveAndFlush(any(Board.class))).thenReturn(new Board());

        // Call the method being tested
        boardService.write(dto);

        // Verify that the method was called with the expected arguments
        verify(boardRepository).saveAndFlush(any(Board.class));
    }

    // Add more test methods for other service methods...
}
