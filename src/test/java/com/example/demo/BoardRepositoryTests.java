package com.example.demo;
		
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import com.woorifis.demo.model.entity.Board;
import com.woorifis.demo.model.repository.BoardRepository;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class BoardRepositoryTests {
		
	@Autowired
	BoardRepository brepo;
		
	@Test
	public void registBoard() {
		// User user = urepo.findById("hong").get(); // select 를 호출! 흐음..?
		Board board = Board.builder().no(1).title("제목").content("내용").build()	;
		brepo.saveAndFlush(board);
		
		Board selected = brepo.findById(board.getNo()).get();
		Assertions.assertEquals(selected.getContent(), "내용");
	}	
}		
