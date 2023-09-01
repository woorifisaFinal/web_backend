package com.woorifis.demo.model.dto;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PortfolioDTO {

	
	@Getter
	@Setter
    public static class UserRequest {
		
	    private String type;
}

    
	@Getter
	@Setter
    public static class UserResponse {
  
    		
    		private String datetime; 
    		
    	    private String type;

    	    private Long KS;
    	    	
    	    private Long NA;
    	    
    	    private Long JP;
    	
    	    private Long UK;
    	    
    	    private Long EU;
 
    	    private Long BZ;
    	
    	    private Long TW;
    	 
    	    private Long IA;
    	    
    	    private Long GOLD;
 
    	    private Long KRBondLong;
    	    
    	    private Long KRBondShort;
    }
}

