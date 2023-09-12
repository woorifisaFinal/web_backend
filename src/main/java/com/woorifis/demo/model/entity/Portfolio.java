package com.woorifis.demo.model.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="portfolio")

public class Portfolio{

//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long no;
	@Id
    @Column(nullable=false)
    private String date;
    @Column(nullable=false)
    private String type;
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
    

 
}
