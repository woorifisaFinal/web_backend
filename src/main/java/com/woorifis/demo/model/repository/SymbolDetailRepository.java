package com.woorifis.demo.model.repository;

import com.woorifis.demo.model.entity.SymbolDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;


public interface SymbolDetailRepository extends JpaRepository<SymbolDetail, Long> {
    Optional<SymbolDetail> findById(Long id);
//    List<SymbolDetail> findAll();
}
