package com.cts.ecart.resource;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/cart")
public class CartRestResource {
	
	@GetMapping
	@ResponseBody
	public String f1() {
		return "GET Mapping - CART";
	}
	@PostMapping
	public String f2() {
		return "POST Mapping - CART";
	}
	@PutMapping
	public String f3() {
		return "PUT Mapping - CART";
	}
	@DeleteMapping
	public String f4() {
		return "DELETE Mapping - CART";
	}
	
	
 
}
