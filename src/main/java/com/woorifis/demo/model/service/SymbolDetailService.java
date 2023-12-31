package com.woorifis.demo.model.service;

import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.entity.SymbolDetail;
import com.woorifis.demo.model.repository.SymbolDetailRepository;
import com.woorifis.demo.model.repository.SymbolRepository;

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
public class SymbolDetailService {
    private final SymbolDetailRepository symbolDetailRepository;
    private final SymbolRepository symbolRepository;
    
    public String getNameById(Long id){
        Optional<SymbolDetail> symbolDetail = symbolDetailRepository.findById(id);
        return symbolDetail.orElse(null).getName();
    }
    public SymbolDetail detailSymbol(Long id){
        Optional<SymbolDetail> symbolDetail = symbolDetailRepository.findById(id);
        return symbolDetail.orElse(null);
    }
    public Page<SymbolDetail> listSymbol(int page){
        Pageable pageable = PageRequest.of(page, 5, Sort.Direction.DESC, "id");
        Page<SymbolDetail> pageInfo = symbolDetailRepository.findAll(pageable);
        return pageInfo;
    }
     

}
