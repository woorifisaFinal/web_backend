package com.woorifis.demo.model.dto;

import com.woorifis.demo.model.entity.Symbol;

import jakarta.persistence.Column;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SymbolDTO {


	    private String date;

	    private double usopen;       // 미국 (US)

	    private double ushigh;       // 미국 (US)

	    private double uslow;        // 미국 (US)

	    private double usclose;      // 미국 (US)

	    private double usadjclose;   // 미국 (US)

	    private long usvolume;       // 미국 (US)

 
}