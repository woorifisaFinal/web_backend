package com.woorifis.demo.model.dto;

import com.woorifis.demo.model.entity.Symbol;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SymbolDTO {

    private Long id;
    private String date;
    private Float usclose;
    private Float ukclose;
    private Float jpclose;
    private Float euroclose;
    private Float korclose;
    private Float indclose;
    private Float twclose;
    private Float brclose;
    private Float kor3yclose;
    private Float kor10yclose;
    private Float us3yclose;
    private Float us10yclose;
    private Float goldclose;


 
}