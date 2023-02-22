package com.cts.ecart.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {
	
	
	@GetMapping(value = "/s1")
	public String f1(Model model) {
		System.out.println(">>> MyController :: f1 method");
		model.addAttribute("pname", "Praveen");
		model.addAttribute("city", "Hyderabad");
		// line 1
		return "one";
	}
	
	

}
