package com.woorifis.demo.model.entity;

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


//    연관관계의 주인이 symbolDetail에 있음 -> mappedBy='symdetail'
    @OneToOne(mappedBy = "symdetail")
    private SymbolKeyword symbolKeyword;

    public static SymbolDetail toSymbolDetail(SymbolDetailDTO symbolDetailDTO){
        SymbolDetail symbolDetail = new SymbolDetail();
        symbolDetail.setId(symbolDetailDTO.getId());
        symbolDetail.setName(symbolDetailDTO.getName());
        symbolDetail.setDetail(symbolDetailDTO.getDetail());

        return symbolDetail;
    }
}
