package com.woorifis.demo.model.repository;


import com.woorifis.demo.model.entity.Symbol;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface SymbolRepository extends JpaRepository<Symbol, String> {
//    어떻게 symbol detail위해 한열씩 가져올지는 모르겟지만 일단findbyid로 detail설정해둠/
//    Optional<Symbol> findById(Long id);
//    List<Symbol> findByContaining(String keyword);

//	  List<Symbol> findBySymbolDetailId(Long symbolDetailId);
}
