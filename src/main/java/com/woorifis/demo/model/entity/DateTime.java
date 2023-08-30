package com.woorifis.demo.model.entity;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor

public class DateTime {

	
	private String datetime;
	
	
	@PrePersist // 데이터 생성이 이루어질때 사전 작업
	public void getDatetime() {
		this.datetime = LocalDateTime.now().format(DateTimeFormatter
				.ofPattern("yyyy-MM-dd HH:mm:ss"));
}
}
