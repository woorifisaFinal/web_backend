package com.woorifis.demo.model.entity;

import java.time.LocalDateTime;



import com.woorifis.demo.model.dto.PortfolioDTO;

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

//	@GeneratedValue(strategy = GenerationType.AUTO)
//    @Id
//    private Long id;
	
	@Column
	private String datetime; 
	// flask가 생성해줌
	
	@Column
	private String type;

    @Column(nullable = false)
    private Long KS;
    
    @Column(nullable = false)
    private Long NA;
    
    @Column(nullable = false)
    private Long JP;
    
    @Column(nullable = false)
    private Long UK;
    
    @Column(nullable = false)
    private Long EU;
    
    @Column(nullable = false)
    private Long BZ;
    
    @Column(nullable = false)
    private Long TW;
  
    @Column(nullable = false)
    private Long IN;
 
    @Column(nullable = false)
    private Long GOLD;
    
    @Column(nullable = false , name= "KRBond_long")
    private Long KRBondLong;
    
    @Column(nullable = false , name = "KRBond_short")
    private Long KRBondShort;
    
    public static Portfolio toPortfolio(PortfolioDTO.UserResponse userResponse) {
    	Portfolio portfolio = new Portfolio();
        portfolio.setDatetime(userResponse.getDatetime());
        portfolio.setType(userResponse.getType());
        portfolio.setKS(userResponse.getKS());
        portfolio.setNA(userResponse.getNA());
        portfolio.setBZ(userResponse.getBZ());
        portfolio.setEU(userResponse.getEU());
        portfolio.setIN(userResponse.getIN());
        portfolio.setTW(userResponse.getTW());
        portfolio.setUK(userResponse.getUK());
        portfolio.setGOLD(userResponse.getGOLD());
        portfolio.setJP(userResponse.getJP());
        portfolio.setKRBondLong(userResponse.getKRBondLong());
        portfolio.setKRBondShort(userResponse.getKRBondShort());
        return portfolio;
    }

}
