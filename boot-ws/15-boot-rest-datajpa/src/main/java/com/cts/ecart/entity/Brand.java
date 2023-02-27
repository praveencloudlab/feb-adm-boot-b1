package com.cts.ecart.entity;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.DynamicUpdate;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Transient;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity(name="brands")
@DynamicUpdate
public class Brand {
	
	@Id
	private int brandId;
	private String brandTitle;
	
	@OneToMany(cascade = CascadeType.MERGE,fetch = FetchType.EAGER)
	@JoinTable(name = "brand_info",
		joinColumns = {@JoinColumn(name=" brand_id")},
		inverseJoinColumns = {@JoinColumn(name="product_id")})
	//@Transient
	private List<Product> prods=new ArrayList<>();
	

}
