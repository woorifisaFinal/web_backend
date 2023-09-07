package com.woorifis.demo.model.repository;

import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.entity.SymbolKeyword;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface SymbolKeywordRepository extends JpaRepository<SymbolKeyword, Long> {
    List<SymbolKeyword> findByKeywordContaining(String keyword);

}
