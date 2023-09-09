package com.woorifisa.demo;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.woorifis.demo.model.entity.SymbolDetail;
import com.woorifis.demo.model.entity.SymbolKeyword;
import com.woorifis.demo.model.repository.SymbolDetailRepository;
import com.woorifis.demo.model.repository.SymbolKeywordRepository;
import com.woorifis.demo.model.repository.SymbolRepository;
import com.woorifis.demo.model.service.SymbolDetailService;
import com.woorifis.demo.model.service.SymbolKeywordService;
import com.woorifis.demo.model.service.SymbolService;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.util.*;
import java.util.Optional;


@ExtendWith(MockitoExtension.class)
public class SymbolServiceTest {
	@Mock
    private SymbolRepository symbolRepository;

    @Mock
    private SymbolDetailRepository symbolDetailRepository;

    @Mock
    private SymbolKeywordRepository symbolKeywordRepository;

    @InjectMocks
    private SymbolService symbolService;
    
    @InjectMocks
    private SymbolKeywordService symbolKeywordService;
    
    @InjectMocks
    private SymbolDetailService symbolDetailService;

    
    @Test
    public void testGetNameById() {
        Long symbolId = 1L;
        String expectedName = "Test Symbol";

        SymbolDetail symbolDetail = new SymbolDetail();
        symbolDetail.setId(symbolId);
        symbolDetail.setName(expectedName);

        when(symbolDetailRepository.findById(symbolId)).thenReturn(Optional.of(symbolDetail));

        String result = symbolDetailService.getNameById(symbolId);

        assertEquals(expectedName, result);
    }

    @Test
    public void testDetailSymbol() {
        Long symbolId = 1L;

        SymbolDetail expectedSymbolDetail = new SymbolDetail();
        expectedSymbolDetail.setId(symbolId);
        expectedSymbolDetail.setName("Test Symbol");
        expectedSymbolDetail.setDetail("Test Detail");

        when(symbolDetailRepository.findById(symbolId)).thenReturn(Optional.of(expectedSymbolDetail));

        SymbolDetail result = symbolDetailService.detailSymbol(symbolId);

        assertEquals(expectedSymbolDetail, result);
    }

    @Test
    public void testListSymbol() {
        int page = 0;
        int pageSize = 5;
        Sort.Direction sortDirection = Sort.Direction.DESC;

        List<SymbolDetail> symbolDetails = new ArrayList<>();
        for (int i = 0; i < pageSize; i++) {
            SymbolDetail symbolDetail = new SymbolDetail();
            symbolDetail.setId((long) i);
            symbolDetail.setName("Symbol " + i);
            symbolDetail.setDetail("Detail " + i);
            symbolDetails.add(symbolDetail);
        }

        Pageable pageable = PageRequest.of(page, pageSize, sortDirection, "no");
        Page<SymbolDetail> expectedPage = new PageImpl<>(symbolDetails, pageable, symbolDetails.size());

        when(symbolDetailRepository.findAll(pageable)).thenReturn(expectedPage);

        Page<SymbolDetail> result = symbolDetailService.listSymbol(page);

        assertEquals(expectedPage, result);
    }

    @Test
    public void testSearchSymbol() {
        String keyword = "Test";
        String expectedName = "Test Symbol";

        SymbolKeyword symbolKeyword = new SymbolKeyword();
        symbolKeyword.setId(1L);
        symbolKeyword.setKeyword(keyword);

        SymbolDetail symbolDetail = new SymbolDetail();
        symbolDetail.setId(1L);
        symbolDetail.setName(expectedName);

        List<SymbolKeyword> symbolKeywords = new ArrayList<>();
        symbolKeywords.add(symbolKeyword);

        when(symbolKeywordRepository.findByKeywordContaining(keyword)).thenReturn(symbolKeywords);
        when(symbolDetailRepository.findById(1L)).thenReturn(Optional.of(symbolDetail));

        List<String> result = symbolKeywordService.searchSymbol(keyword);

        assertEquals(1, result.size());
        assertEquals(expectedName, result.get(0));
    }
}
