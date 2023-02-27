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
@Entity(name = "stock_info")
public class Stock {
	@Id
	@GeneratedValue
	private int stockId;
	private int stock;
	
	public Stock(int stock) {
		this.stock=stock;
	}
	

}
