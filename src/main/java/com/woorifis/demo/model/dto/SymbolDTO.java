//package com.woorifis.demo.model.dto;
//
//import com.woorifis.demo.model.entity.Symbol;
//import lombok.AllArgsConstructor;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//
//@Getter
//@Setter
//@AllArgsConstructor
//@NoArgsConstructor
//public class SymbolDTO {
//
//    private Long no;
//    private String date;
//    private Float us;
//    private Float uk;
//    private Float jp;
//    private Float euro;
//    private Float kor;
//    private Float ind;
//    private Float tw;
//    private Float br;
//    private Float kor3y;
//    private Float kor10y;
//    private Float us3y;
//    private Float us10y;
//    private Float gold;
//
//
//    public static SymbolDTO toSymbolDTO(Symbol symbol) {
//        SymbolDTO dto = new SymbolDTO();
//        dto.setNo(symbol.getNo());
//        dto.setDate(symbol.getDate());
//        dto.setUs(symbol.getUs());
//        dto.setUk(symbol.getUk());
//        dto.setJp(symbol.getJp());
//        dto.setEuro(symbol.getEuro());
//        dto.setKor(symbol.getKor());
//        dto.setInd(symbol.getInd());
//        dto.setTw(symbol.getTw());
//        dto.setBr(symbol.getBr());
//        dto.setKor3y(symbol.getKor3y());
//        dto.setKor10y(symbol.getKor10y());
//        dto.setUs3y(symbol.getUs3y());
//        dto.setUs10y(symbol.getUs10y());
//        dto.setGold(symbol.getGold());
//        return dto;
//
//
//    }
//}