package com.woorifis.demo.model.entity;

import java.util.ArrayList;
import java.util.List;

import com.woorifis.demo.model.dto.SymbolDetailDTO;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name= "symdetail")
public class SymbolDetail {
    @Id
    private Long Id;
    @Column(nullable=false)
    private String name;
    @Column(nullable=false)
    private String detail;
    @Column(nullable=false)
    private Float marketcap;

//    연관관계의 주인이 symbolDetail에 있음 -> mappedBy='symdetail'
    @OneToOne(mappedBy = "symid")
    private SymbolKeyword symbolKeyword;
    
    // 종목 정보 엔티티에서 해당 종목의 시세 정보를 참조하는 컬렉션
//    @OneToMany(mappedBy = "symbolDetail", fetch = FetchType.LAZY)
//    private List<Symbol> symbols = new ArrayList<>();
//    
    
    

    public static SymbolDetail toSymbolDetail(SymbolDetailDTO symbolDetailDTO){
        SymbolDetail symbolDetail = new SymbolDetail();
        symbolDetail.setId(symbolDetailDTO.getId());
        symbolDetail.setName(symbolDetailDTO.getName());
        symbolDetail.setDetail(symbolDetailDTO.getDetail());
        symbolDetail.setMarketcap(symbolDetailDTO.getMarketcap());
        return symbolDetail;
    }
}
