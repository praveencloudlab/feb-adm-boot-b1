package com.cts.ecart.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity(name="brands")
public class Brand {
	
	@Id
	private int brandId;
	private String brandTitle;
	

}
