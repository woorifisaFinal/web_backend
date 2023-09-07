package com.woorifis.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.web.bind.annotation.GetMapping;


@SpringBootApplication
@EnableJpaAuditing
public class FinalProjectApplication {

	public static void main(String[] args) {

		SpringApplication.run(FinalProjectApplication.class, args);

	}

}
