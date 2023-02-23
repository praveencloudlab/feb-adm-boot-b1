package com.cts.ecart.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Setter
@Getter
@ToString
@NoArgsConstructor
@Entity(name = "products")
public class Product {
	
	@Id
	@GeneratedValue
	private int productId;
	private String productTitle;
	private String description;
	private double rating;
	private String keywords;
	
	@OneToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@JoinColumn(name="stock_id")
	private Stock stock;
	@OneToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@JoinColumn(name="price_id")
	private Price priceObj;
	public Product(String productTitle, String description, double rating, String keywords, Stock stock,
			Price priceObj) {
		this.productTitle = productTitle;
		this.description = description;
		this.rating = rating;
		this.keywords = keywords;
		this.stock = stock;
		this.priceObj = priceObj;
	}
	
	
	
	

}
