package com.example.demo;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.repository.BoardRepository;
import com.woorifis.demo.model.repository.UserRepository; // 추가
import com.woorifis.demo.model.entity.User; // 추가

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.*;

@SpringBootTest
public class BoardRepositoryTest {

    @InjectMocks
    private BoardRepository boardRepository;

    @Mock
    private UserRepository userRepository; // 추가

    @Test
    public void testFindByTitleContaining() {
        // Mock behavior
        when(boardRepository.findByTitleContaining(anyString())).thenReturn(Collections.emptyList());

        // Call the method being tested
        List<Board> result = boardRepository.findByTitleContaining("test");

        // Verify that the mock method was called with the expected argument
        verify(boardRepository).findByTitleContaining(anyString());

        // Add assertions to verify the result
        assertNotNull(result);
    }

    // Add more test methods for other custom repository methods...
}
