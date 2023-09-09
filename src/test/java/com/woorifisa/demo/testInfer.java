//package com.example.demo;
//
//import static org.junit.jupiter.api.Assertions.assertEquals;
//
//import org.junit.jupiter.api.Test;
//import org.springframework.http.HttpEntity;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.MediaType;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.client.RestTemplate;
//
//import com.woorifis.demo.model.dto.PortfolioDTO;
//
//public class testInfer {
//	@Test
//	public void testInfer() {
//	    PortfolioDTO.UserRequest userRequest = new PortfolioDTO.UserRequest();
//	    userRequest.setType("안정형");
//
//	    // Create an instance of RestTemplate
//	    RestTemplate restTemplate = new RestTemplate();
//	    
//	    // Prepare headers
//	    HttpHeaders headers = new HttpHeaders();
//	    headers.setContentType(MediaType.APPLICATION_JSON);
////	    headers.set("charset", "utf-8");
//
//	    // Create an HttpEntity with headers and request body
//	    HttpEntity<PortfolioDTO.UserRequest> entity = new HttpEntity<>(userRequest, headers);
//
//	    // Define Flask URL
//	    String flaskUrl = "http://localhost:5000/portfolio/infer";
//
//	    // Send POST request to Flask
//	    ResponseEntity<String> responseEntity = restTemplate.postForEntity(flaskUrl, entity, String.class);
//
//	    // Asserts to check the response (status, body, etc.)
//	    assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
//	    System.out.println(responseEntity.getBody());
//	    // Add more asserts as needed
//	    
//	}
//}
package com;


