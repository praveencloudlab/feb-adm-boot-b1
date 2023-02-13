package com.cts.ecart.service;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;


@Service
@Scope("prototype")
@Lazy(value =true)
public class EmployeeServiceImpl {
	/**
	 * Bean life cycle methods
	 * ============================
	 * 1.constructor
	 * 2.post constructor
	 * 3.bean
	 * 4.pre-destroy
	 */
	
	public EmployeeServiceImpl() {
		System.out.println(">> 1.EmployeeServiceImpl object created on "+System.identityHashCode(this));
	}
	
	@PostConstruct
	public void f1() {
		System.out.println(">> 2.EmployeeServiceImpl:: f1 post construct on "+System.identityHashCode(this));
	}
	
	@Bean // doesn't work if lazy is true
	void f2() {
		System.out.println(">> 3.EmployeeServiceImpl:: f2 Bean on "+System.identityHashCode(this));
	}
	
	@PreDestroy // never called in case scope is prototype
	void f3() {
		System.out.println(">> 4.EmployeeServiceImpl:: f3 pre-destroy on "+System.identityHashCode(this));

	}
	
	
	
	
	
	
	
	

}
