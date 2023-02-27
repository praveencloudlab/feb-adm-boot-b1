package com.cts.ecart.resource;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/products")
public class ProductRestResource {
	
	@GetMapping
	public String f1() {
		return "GET Mapping";
	}
	@PostMapping
	public String f2() {
		return "POST Mapping";
	}
	@PutMapping
	public String f3() {
		return "PUT Mapping";
	}
	@DeleteMapping
	public String f4() {
		return "DELETE Mapping";
	}
	
	
 
}
