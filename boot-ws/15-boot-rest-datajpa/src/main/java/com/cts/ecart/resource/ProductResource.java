package com.cts.ecart.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Price;
import com.cts.ecart.entity.Product;
import com.cts.ecart.repository.BrandRepository;
import com.cts.ecart.repository.CategoryRepository;
import com.cts.ecart.repository.PriceRepository;
import com.cts.ecart.repository.ProductRepository;

@RestController
@RequestMapping("api/products")
public class ProductResource {
	
	@Autowired
	private PriceRepository priceRepo;
	@Autowired
	private ProductRepository prodRepo;
	@Autowired
	private BrandRepository brandRepo;
	
	@Autowired
	private CategoryRepository catRepo;
	
	@GetMapping("/price")
	public List<Price> listAllPrice() {
		return priceRepo.findAll();
	}
	
	@GetMapping
	public List<Product> findAllProducts(){
		return prodRepo.findAll();
	}
	
	@GetMapping("/brands")
	public List<Brand> findAllBrands(){
		return brandRepo.findAll();
	}
	
	@GetMapping("/{productId}")
	public Product findProductById(@PathVariable int productId) {
		return prodRepo.findById(productId).orElse(null);
	}
	
	@GetMapping("/{name}/{price}")
	public List<Product> filterProduct(@PathVariable String name,@PathVariable double price){
		return prodRepo.findByProductTitleLikeAndPriceObjPriceGreaterThanEqual("%"+name+"%",price);
	}
	
	// find all brands of a given category name
	@GetMapping("/filter/category/{brandName}")
	public Category findBrandsByCategoryName(@PathVariable String brandName) {
		return catRepo.findByCategoryTitle(brandName);
	}
	
	@PostMapping("/{brandId}")
	public Product saveProduct(@PathVariable int brandId,@RequestBody Product product) {
		Product prodObj=prodRepo.save(product);
		
		Brand brand=brandRepo.findById(brandId).orElse(null);
		
		brand.getProds().add(prodObj);
		
		brandRepo.save(brand);
		
		return prodObj;
	}
	
	
	
	
	
	
	
	
	

}
