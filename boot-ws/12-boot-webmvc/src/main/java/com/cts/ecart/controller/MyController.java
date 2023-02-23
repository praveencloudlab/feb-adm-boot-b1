package com.cts.ecart.controller;


import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cts.ecart.model.Employee;

@Controller
public class MyController {
	
	
	@GetMapping("/msg")
	@ResponseBody
	public String test() {
		return "Hello Spring boot web MVC!..."; // this is not template
	}
	
	@GetMapping("/")
	public String welcome() {
		return "index"; // goes to a html/any view name
	}
	
	@GetMapping(value = "/s1")
	public String f1(Model model) {
		System.out.println(">>> MyController :: f1 method");
		model.addAttribute("pname", "Praveen");
		model.addAttribute("city", "Hyderabad");
		// line 1
		return "one";
	}
	
	@GetMapping(value = "/s2")
	public ModelAndView f2() {
		ModelAndView mav=new ModelAndView();
		mav.addObject("user", "James");
		mav.setViewName("two");
		return mav;
	}
	
	@GetMapping("/s3")
	public String f3(ModelMap map) {
		map.put("message", "Good Morning");
		return "three";
	}
	
	@GetMapping("/employees")
	public String loadEmployees(Model model) {
		
		 List<Employee> employees = Arrays.asList(
	                new Employee("John Doe", 50000),
	                new Employee("Jane Smith", 60000),
	                new Employee("Bob Johnson", 55000),
	                new Employee("Mary Brown", 65000),
	                new Employee("Tom Wilson", 70000)
	        );
		 
		 
		model.addAttribute("emps", employees);
		
		return "employees";
	}
	
	
	 // load form
	@GetMapping(value = "/loadEmpForm")
	 public String loadEmployeeForm() {
		 return "employee-form";
	 }
	
	@GetMapping(value = "/saveEmployee")
	public String saveEmployee(@RequestParam String name,@RequestParam double salary) {
		
		/*
		Employee emp=new Employee();
		emp.setName(name);
		emp.setSalary(salary);
		*/
		
		System.out.println("Name: "+name);
		System.out.println("Salary: "+salary);
		
		return "employees";
	}
	
	
	@GetMapping("/saveEmployeeV1")
	public String saveEmployeeV1(@ModelAttribute Employee emp) {
		System.out.println("v2");
		System.out.println("emp name: "+emp.getName());
		System.out.println("Salary: "+emp.getSalary());
		
		return "employees";
	}
	
	
	
	
	
	
	

}
