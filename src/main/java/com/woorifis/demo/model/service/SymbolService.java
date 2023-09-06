//package com.woorifis.demo.model.service;
//
//import com.woorifis.demo.model.entity.Symbol;
//import com.woorifis.demo.model.repository.SymbolRepository;
//import jakarta.transaction.Transactional;
//import lombok.RequiredArgsConstructor;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//import java.util.Optional;
//
//@Service
//@RequiredArgsConstructor
//public class SymbolService {
//    private SymbolRepository symbolRepository;
//
//    public Page<Symbol> listSymbol(int page) {
//        Pageable pageable = PageRequest.of(page, 5, Sort.Direction.DESC,"no");
//        Page<Symbol> pageInfo = symbolRepository.findAll(pageable);
//        return pageInfo;
//    }
//    @Transactional
//    public List<Symbol> searchSymbol(String keyword) {
//        // 키워드를 이용하여 검색 처리를 수행하고, 검색 결과를 반환하는 메서드를 작성해야 합니다.
//        // 검색 조건에 따라 symbolRepository에서 검색을 수행하고 결과를 리턴하면 됩니다.
//        List<Symbol> searchResults = symbolRepository.findByContaining(keyword);
//        return searchResults;
//    }
//
//    public Symbol detailSymbol(long no){
//        Optional<Symbol> option = symbolRepository.findById(no);
//        if(option.isPresent()){
//            return option.get();
//        }
//        else{
//            throw new RuntimeException(no+"번 detail페이지 없음");
//        }
//    }
//
//}
