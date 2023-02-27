package com.cts.ecart.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@Entity(name = "price_info")
public class Price {
	
	public Price(int price) {
		this.price=price;
	}
	@Id
	@GeneratedValue
	private int priceId;
	private double price;
	
	

}
