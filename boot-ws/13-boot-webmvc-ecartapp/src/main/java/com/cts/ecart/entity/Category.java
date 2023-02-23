package com.cts.ecart.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity(name="categories")
public class Category {
	
	@Id
	private int categoryId;
	private String categoryTitle;
	
	@ManyToMany(cascade = CascadeType.MERGE,fetch = FetchType.EAGER)
	@JoinTable(name = "category_brands",
		joinColumns = {@JoinColumn(name="categoryId")},
		inverseJoinColumns = {@JoinColumn(name="brandId")})
	private List<Brand> brads=new ArrayList<>();
	

}
