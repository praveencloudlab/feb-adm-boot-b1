package com.cts.ecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.service.ProductServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceImpl prodService;
	
	
	@GetMapping(value = "/productForm")
	public String loadProductForm() {
		
		return "product-form";
	}
	
	
	@GetMapping(value = "/loadCategories")
	public String loadCategories(Model model) {
		
		List<Category> categories = prodService.loadcategories();
		model.addAttribute("categories", categories);
		
		return "product-form";
	}
	
	@GetMapping(value = "/loadBrands")
	@ResponseBody
	public List<Brand> loadBrands(@RequestParam int categoryId,Model model){
		
		Category category = prodService.loadBrands(categoryId);
		//model.addAttribute("brands", category.getBrads());
		return category.getBrads();
	}
	

}
