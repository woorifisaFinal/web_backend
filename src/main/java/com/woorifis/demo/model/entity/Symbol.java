package com.woorifis.demo.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "nasdaq")
public class Symbol {
    @Id
    private String date;
//    @Column
//    private double usopen;       // 미국 (US)
//    @Column
//    private double ushigh;       // 미국 (US)
//    @Column
//    private double uslow;        // 미국 (US)
//    @Column
//    private double usclose;      // 미국 (US)
////    @Column
////    private double usadjclose;   // 미국 (US)
//    @Column
//    private long usvolume;       // 미국 (US)
//
}

//    // Ftse 종목별 클래스
//    @Entity
//    @Table(name = "ftse")
//    public static class Ftse {
//        @Id
//        private String date;
//        private double ukopen;       // 영국 (UK)
//        private double ukhigh;       // 영국 (UK)
//        private double uklow;        // 영국 (UK)
//        private double ukclose;      // 영국 (UK)
//        private double ukadjclose;   // 영국 (UK)
//        private long ukvolume;       // 영국 (UK)
//    }
//
//    // Nikkei 종목별 클래스
//    @Entity
//    @Table(name = "nikkei")
//    public static class Nikkei {
//        @Id
//        private String date;
//        private double jpopen;       // 일본 (JP)
//        private double jphigh;       // 일본 (JP)
//        private double jplow;        // 일본 (JP)
//        private double jpclose;      // 일본 (JP)
//        private double jpadjclose;   // 일본 (JP)
//        private long jpvolume;       // 일본 (JP)
//    }
//
//    @Entity
//    @Table(name = "kospi")
//    public static class Kospi {
//    	
//    	@Id
//        private String date;
//        private double koropen;       // 대한민국 (KOR)
//        private double korhigh;       // 대한민국 (KOR)
//        private double korlow;        // 대한민국 (KOR)
//        private double korclose;      // 대한민국 (KOR)
//        private double koradjclose;   // 대한민국 (KOR)
//        private long korvolume;       // 대한민국 (KOR)
//    }
//    
//    @Entity
//    @Table(name = "brazil")    
//    public static class Brazil {
//        private String date;
//        private double bropen;       // 브라질 (BR)
//        private double brhigh;       // 브라질 (BR)
//        private double brlow;        // 브라질 (BR)
//        private double brclose;      // 브라질 (BR)
//        private double bradjclose;   // 브라질 (BR)
//        private long brvolume;       // 브라질 (BR)
//   
//}
//    
//    @Entity
//    @Table(name = "taiwan")      
//    public static class Taiwan {
//        private String date;
//        private double twopen;       // 대만 (TW)
//        private double twhigh;       // 대만 (TW)
//        private double twlow;        // 대만 (TW)
//        private double twclose;      // 대만 (TW)
//        private double twadjclose;   // 대만 (TW)
//        private long twvolume;       // 대만 (TW)
//        
//    }
//    
//    @Entity
//    @Table(name = "india")          
//    public static class India {
//        private String date;
//        private double indopen;       // 인도 (IND)
//        private double indhigh;       // 인도 (IND)
//        private double indlow;        // 인도 (IND)
//        private double indclose;      // 인도 (IND)
//        private double indadjclose;   // 인도 (IND)
//        private long indvolume;       // 인도 (IND)
//}
//    
//    @Entity
//    @Table(name = "gold")    
//    public static class Gold {
//        private String date;
//        private double goldopen;       // 금 (Gold)
//        private double goldhigh;       // 금 (Gold)
//        private double goldlow;        // 금 (Gold)
//        private double goldclose;      // 금 (Gold)
//        private double goldadjclose;   // 금 (Gold)
//        private long goldvolume;       // 금 (Gold)
//        
//    }
    
