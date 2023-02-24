package com.cts.ecart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Product;
import com.cts.ecart.repository.BrandRepository;
import com.cts.ecart.repository.CategoryRepository;
import com.cts.ecart.repository.ProductRepository;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Setter
@Getter
@ToString
@Service
public class ProductServiceImpl {
	
	@Autowired
	private CategoryRepository catRepo;
	@Autowired
	private BrandRepository brandRepo;
	@Autowired
	private ProductRepository prodRepo;
	
	public List<Product> findAllProducts(){
		return prodRepo.findAll();
	}
	
	
	public Brand findBrandById(int brandId) {
		return brandRepo.findById(brandId).orElse(null);
	}
	
	public Product saveProduct(Product prod) {
		return prodRepo.save(prod);
	}
	
	public void saveBrand(Brand brand) {
		brandRepo.save(brand);
	}
	
	public List<Category> loadcategories(){
		return catRepo.findAll();
	}
	
	
	public Category loadBrands(int categoryId){
		return catRepo.findById(categoryId).orElse(null);
	}
	
	
	
	
	

}
