package com.woorifis.demo.model.service;

import com.woorifis.demo.model.entity.SymbolDetail;
import com.woorifis.demo.model.entity.SymbolKeyword;
import com.woorifis.demo.model.repository.SymbolDetailRepository;
import com.woorifis.demo.model.repository.SymbolKeywordRepository;
import com.woorifis.demo.model.repository.SymbolRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SymbolKeywordService {
    private final SymbolKeywordRepository symbolKeywordRepository;
    private final SymbolDetailService symbolDetailService;
    private final  SymbolDetailRepository symbolDetailRepository;
    public List<SymbolDetail> searchSymbol(String keyword){
        List<SymbolKeyword> searchResults_ = symbolKeywordRepository.findByKeywordContaining(keyword);
        List<SymbolDetail> searchResults = new ArrayList<>();
        for(SymbolKeyword sk : searchResults_){
//            searchResults에는 symbolDetail의 name만 들어감 : list of name(string)임
//            searchResults = ['KOSPI', '']
            searchResults.add(sk.getSymid());
//            searchResults = symbolDetailRepository.findById(sk.getSymid().);
        }
        return searchResults;
    }
}
