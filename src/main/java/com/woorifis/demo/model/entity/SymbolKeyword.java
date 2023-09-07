package com.woorifis.demo.model.entity;

import com.woorifis.demo.model.dto.SymbolDetailDTO;
import com.woorifis.demo.model.dto.SymbolKeywordDTO;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name= "symkeyword")
public class SymbolKeyword {
        @Id
        private Long Id;
        @Column(nullable=false)
        private Long symid;
        @Column(nullable=false)
        private String keyword;

        @OneToOne(fetch=FetchType.LAZY)
        @JoinColumn(name="symid", referencedColumnName="id")
        private SymbolDetail symbolDetail;

        public static SymbolKeyword toSymbolKeyword(SymbolKeywordDTO symbolKeywordDTO){
                SymbolKeyword symbolKeyword = new SymbolKeyword();
                symbolKeyword.setId(symbolKeywordDTO.getId());
                symbolKeyword.setSymid(symbolKeywordDTO.getSymid());
                symbolKeyword.setKeyword(symbolKeywordDTO.getKeyword());
                return symbolKeyword;
        }


}
