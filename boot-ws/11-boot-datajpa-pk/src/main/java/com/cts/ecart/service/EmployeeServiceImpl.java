package com.cts.ecart.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import com.cts.ecart.entity.Employee;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class EmployeeServiceImpl {

	@Value("classpath:EMPLOYEE_DATA.json")
	private Resource resource;


	

	@Bean
	String jsonData() throws IOException {
		return new String(resource.getInputStream().readAllBytes());
	}

	public List<Employee> loadEmployees() throws StreamReadException, DatabindException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		TypeReference<List<Employee>> typeReference = new TypeReference<List<Employee>>() {
		};
		return objectMapper.readValue(resource.getInputStream(), typeReference);

	}

}
