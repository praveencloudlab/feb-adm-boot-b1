package com.cts.ecart.service;

import org.springframework.stereotype.Service;

@Service
//dependent
public class Employee {

	private int empId;
	private String empName;
	private double salary;
	
	//@Autowired
	private Department dept; // called more than once...
	
	// constructor based autowiring
	public Employee(Department dept) { // once in life cycle of a hashcode
		this.dept = dept;
	}
	
	public int getEmpId() {
		return empId;
	}

	

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", salary=" + salary + ", dept=" + dept + "]";
	}

}
