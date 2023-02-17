package com.cts.ecart.entity;

import org.hibernate.annotations.DynamicUpdate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@ToString
@Entity
@DynamicUpdate
public class Product {
	@Id
	@GeneratedValue(strategy =GenerationType.TABLE )
	private int id;
	private String name;
	private double price;
	@Column(length = 255)
	private String description;
	public Product(String name, double price, String description) {
		super();
		this.name = name;
		this.price = price;
		this.description = description;
	}
	
	
	

}
