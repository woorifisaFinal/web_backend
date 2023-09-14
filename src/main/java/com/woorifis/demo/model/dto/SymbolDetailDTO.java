package com.woorifis.demo.model.dto;

import java.util.ArrayList;
import java.util.List;

import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.entity.SymbolDetail;

import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SymbolDetailDTO {
    private Long Id;
    private String name;
    private String detail;


    
    public static SymbolDetailDTO toSymbolDetailDTO(SymbolDetail symbolDetail){
        SymbolDetailDTO symbolDetailDTO = new SymbolDetailDTO();
        symbolDetailDTO.setId(symbolDetail.getId());
        symbolDetailDTO.setName(symbolDetail.getName());
        symbolDetailDTO.setDetail(symbolDetail.getDetail());
        return symbolDetailDTO;
    }
}
