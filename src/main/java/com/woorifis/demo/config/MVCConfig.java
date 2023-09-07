//package com.woorifis.demo.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.ViewResolver;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import org.springframework.web.servlet.view.InternalResourceViewResolver;
//import org.springframework.web.servlet.view.JstlView;
//
//@Configuration
//@EnableWebMvc
//public class MVCConfig implements WebMvcConfigurer {
//
//	
//@Override
//public void addResourceHandlers(ResourceHandlerRegistry registry) {
//	// TODO Auto-generated method stub
//	WebMvcConfigurer.super.addResourceHandlers(registry);
//	registry.addResourceHandler("/resources/**").addResourceLocations("resources/static/");
//	
//	
//	
//}	
//@Bean
//public ViewResolver getViewaResolver() {
//	InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//	resolver.setPrefix("/WEB-INF/views/");
//	resolver.setSuffix(".jsp");
//	resolver.setViewClass(JstlView.class);
//	return resolver;
//}
//}
