package com.woorifis.demo.model.entity;
import com.woorifis.demo.model.dto.SymbolDTO;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Immutable;
@Entity
@Immutable
@Getter
@Setter
//table 명 = view 명8
@Table(name = "symbolview")
public class Symbol {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long no;
    @Column(nullable=false)
    private String date;
    @Column(nullable=false)
    private Float us;
    @Column(nullable=false)
    private Float uk;
    @Column(nullable=false)
    private Float jp;
    @Column(nullable=false)
    private Float euro;
    @Column(nullable=false)
    private Float kor;
    @Column(nullable=false)
    private Float ind;
    @Column(nullable=false)
    private Float tw;
    @Column(nullable=false)
    private Float br;
    @Column(nullable=false)
    private Float kor3y;
    @Column(nullable=false)
    private Float kor10y;
    @Column(nullable=false)
    private Float us3y;
    @Column(nullable=false)
    private Float us10y;
    @Column(nullable=false)
    private Float gold;
    public static Symbol toSymbol(SymbolDTO symbolDTO) {
        Symbol symbol = new Symbol();
        symbol.setNo(symbolDTO.getNo());
        symbol.setDate(symbolDTO.getDate());
        symbol.setUs(symbolDTO.getUs());
        symbol.setUk(symbolDTO.getUk());
        symbol.setJp(symbolDTO.getJp());
        symbol.setEuro(symbolDTO.getEuro());
        symbol.setKor(symbolDTO.getKor());
        symbol.setInd(symbolDTO.getInd());
        symbol.setTw(symbolDTO.getTw());
        symbol.setBr(symbolDTO.getBr());
        symbol.setKor3y(symbolDTO.getKor3y());
        symbol.setKor10y(symbolDTO.getKor10y());
        symbol.setUs3y(symbolDTO.getUs3y());
        symbol.setUs10y(symbolDTO.getUs10y());
        symbol.setGold(symbolDTO.getGold());
        return symbol;
    }
}