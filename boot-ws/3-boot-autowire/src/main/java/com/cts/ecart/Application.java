package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.service.Department;
import com.cts.ecart.service.Employee;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext ac = SpringApplication.run(Application.class, args);
	
		Department dept1 = ac.getBean(Department.class);
		
		Employee emp = ac.getBean(Employee.class);
		
		dept1.setDeptId(10);
		dept1.setDeptName("IT");
		
		emp.setEmpId(10000);
		emp.setEmpName("James");
		emp.setSalary(397384);
		
		//emp.setDept(dept);
		
		System.out.println(emp);
		
		
	}

}
