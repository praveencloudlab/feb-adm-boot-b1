package com.cts.ecart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.repository.BrandRepository;
import com.cts.ecart.repository.CategoryRepository;

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
	
	
	public List<Category> loadcategories(){
		return catRepo.findAll();
	}
	
	
	public Category loadBrands(int categoryId){
		return catRepo.findById(categoryId).orElse(null);
	}
	
	
	
	
	

}
