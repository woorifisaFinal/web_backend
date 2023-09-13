package com.woorifis.demo.model.service;
import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.repository.SymbolDetailRepository;
import com.woorifis.demo.model.repository.SymbolKeywordRepository;
import com.woorifis.demo.model.repository.SymbolRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class SymbolService {
    private final SymbolRepository symbolRepository;
//    public Page<Symbol> listSymbol(int page) {
//        Pageable pageable = PageRequest.of(page, 5, Sort.Direction.DESC,"no");
//        Page<Symbol> pageInfo = symbolRepository.findAll(pageable);
//        return pageInfo;
//    }
//    public Symbol detailSymbol(long id){
//        Optional<Symbol> option = symbolRepository.findById(id);
//        if(option.isPresent()){
//            return option.get();
//        }
//        else{
//            throw new RuntimeException(id+"번 detail페이지 없음");
//        }
//    }
    

    public List<Symbol> getAllNasdaqData() {
        return symbolRepository.findAll();
    }
}
