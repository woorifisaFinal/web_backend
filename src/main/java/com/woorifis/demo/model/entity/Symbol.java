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
    private Long id;
    @Column(nullable=false)
    private String date;
    @Column(nullable=false)
    private Float usclose;
    @Column(nullable=false)
    private Float ukclose;
    @Column(nullable=false)
    private Float jpclose;
    @Column(nullable=false)
    private Float euroclose;
    @Column(nullable=false)
    private Float korclose;
    @Column(nullable=false)
    private Float indclose;
    @Column(nullable=false)
    private Float twclose;
    @Column(nullable=false)
    private Float brclose;
    @Column(nullable=false)
    private Float kor3yclose;
    @Column(nullable=false)
    private Float kor10yclose;
    @Column(nullable=false)
    private Float us3yclose;
    @Column(nullable=false)
    private Float us10yclose;
    @Column(nullable=false)
    private Float goldclose;
}