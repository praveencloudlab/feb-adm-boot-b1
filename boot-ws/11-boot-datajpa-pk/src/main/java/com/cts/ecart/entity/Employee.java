package com.cts.ecart.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity(name = "employees")
public class Employee {
	@Id
	private int id;
	private String first_name;
	private String last_name;
	private String email;
	private String gender;
	
	
	

}
