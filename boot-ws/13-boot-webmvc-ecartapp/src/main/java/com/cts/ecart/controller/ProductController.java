package com.cts.ecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Product;
import com.cts.ecart.service.ProductServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceImpl prodService;
	
	
	@GetMapping(value = "/")
	public String welcome() {
		return "index";
	}
	
	@GetMapping(value = "/saveProduct")
	public String saveProduct(@RequestParam int brandId,@ModelAttribute Product product) {
	
		Product prodObj = prodService.saveProduct(product);
		
		Brand brand = prodService.findBrandById(brandId);
		brand.getProds().add(prodObj);
		prodService.saveBrand(brand);
		
		
		return "redirect:/loadAllProducts";
	}
	
	
	@GetMapping(value = "/editProduct")
	public String editProduct(@ModelAttribute Product prod) {
		System.out.println("Editing .....");
		System.out.println(prod);
		return "product-form";
	}
	
	@GetMapping(value = "/loadAllProducts")
	public String loadAllProducts(Model model) {
		
		model.addAttribute("products", prodService.findAllProducts());
		
		return "products";
	}
	
	
	@GetMapping(value = "/loadProductForm")
	public String loadCategories(Model model) {
		
		List<Category> categories = prodService.loadcategories();
		model.addAttribute("categories", categories);
		
		return "product-form";
	}
	
	@GetMapping(value = "/loadBrands")
	@ResponseBody
	public List<Brand> loadBrands(@RequestParam int categoryId){
		
		Category category = prodService.loadBrands(categoryId);
		return category.getBrads();
	}
	
	
	

}
