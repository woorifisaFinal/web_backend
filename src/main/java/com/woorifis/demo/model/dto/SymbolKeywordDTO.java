package com.woorifis.demo.model.dto;

import com.woorifis.demo.model.entity.SymbolKeyword;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SymbolKeywordDTO {
    private Long Id;
    private Long symid;
    private String keyword;


    public static SymbolKeywordDTO toSymbolKeywordDTO(SymbolKeyword symbolKeyword){
        SymbolKeywordDTO symbolKeywordDTO = new SymbolKeywordDTO();
        symbolKeywordDTO.setId(symbolKeyword.getId());
        symbolKeywordDTO.setSymid(symbolKeyword.getSymid());
        symbolKeywordDTO.setKeyword(symbolKeyword.getKeyword());
        return symbolKeywordDTO;
    }

}
