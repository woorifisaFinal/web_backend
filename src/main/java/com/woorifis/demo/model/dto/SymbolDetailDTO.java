package com.woorifis.demo.model.dto;

import com.woorifis.demo.model.entity.SymbolDetail;
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
