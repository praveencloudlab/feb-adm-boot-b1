package com.cts.ecart.entity;

import java.time.LocalDate;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity(name = "persons")
@GenericGenerator(name = "myGen",strategy = "com.cts.ecart.repository.CustomPKUtil")
public class Person {

	@Id
	@GeneratedValue(generator = "myGen")
	private String personId;
	private String personName;
	private LocalDate dob;

	public Person(String personName, LocalDate dob) {
		super();
		this.personName = personName;
		this.dob = dob;
	}

}
