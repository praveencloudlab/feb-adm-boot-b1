package com.cts.ecart.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;


@Service
public class ProductServiceImpl {
	
	//@Value("${pname}")
	//private String personName;
	
	@Autowired
	private Environment env;
	
	@Bean
	void f1() {
		System.out.println("name is "+env.getProperty("name"));	
		
	}
	

	
	
}
