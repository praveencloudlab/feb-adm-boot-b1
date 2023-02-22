package com.cts.ecart;

import java.io.IOException;
import java.time.LocalDate;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.entity.Person;
import com.cts.ecart.repository.EmployeeRepository;
import com.cts.ecart.repository.PersonRepository;
import com.cts.ecart.service.EmployeeServiceImpl;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.databind.DatabindException;

@SpringBootApplication
public class Application {

	public static void main(String[] args) throws StreamReadException, DatabindException, IOException {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		PersonRepository personRepo = context.getBean(PersonRepository.class);
		EmployeeServiceImpl empService = context.getBean(EmployeeServiceImpl.class);
		EmployeeRepository empRepo = context.getBean(EmployeeRepository.class);
	
		empRepo.saveAll(empService.loadEmployees());
		
		
		
		
		
		
		
		//Person p1=new Person("Praveen", LocalDate.of(1984, 8, 28));
		
		
		
		//personRepo.save(p1); // PHYD1024010378686
		
		
		
	}

}
