package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.service.EmployeeServiceImpl;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext ac = SpringApplication.run(Application.class, args);
		 
		EmployeeServiceImpl es1 = ac.getBean(EmployeeServiceImpl.class);
	    EmployeeServiceImpl es2 = ac.getBean(EmployeeServiceImpl.class);
		
		//ac.close(); // call pre-destroy
		
	}

}
