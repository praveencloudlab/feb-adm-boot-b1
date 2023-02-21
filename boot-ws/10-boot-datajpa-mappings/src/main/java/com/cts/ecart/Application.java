package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.entity.Brand;
import com.cts.ecart.entity.Category;
import com.cts.ecart.entity.Price;
import com.cts.ecart.entity.Product;
import com.cts.ecart.entity.Stock;
import com.cts.ecart.repository.BrandRepository;
import com.cts.ecart.repository.CategoryRepository;
import com.cts.ecart.repository.ProductRepository;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		ProductRepository prodRepo = context.getBean(ProductRepository.class);
		CategoryRepository catRepo = context.getBean(CategoryRepository.class);
		BrandRepository brandRepo = context.getBean(BrandRepository.class);
		//prodRepo.findAll().forEach(System.out::println);
		//Category cat = catRepo.findById(45).orElse(null);
		//System.out.println(cat);
		//cat.getBrads().forEach(System.out::println);
		
		//prodRepo.findByProductTitle("Samsung S22").forEach(System.out::println);
		//prodRepo.findByProductTitleLike("%Phone%").forEach(System.out::println);
		//prodRepo.findByPriceObjPriceGreaterThanEqual(85000).forEach(System.out::println);
		//Category catObj = catRepo.findByCategoryTitle("Televisions");
		
		//System.out.println(catObj);
		
		//catObj.getBrads().forEach(System.out::println);
		//prodRepo.findByProductTitleLikeAndPriceObjPriceGreaterThanEqual("%laptop%",50000).forEach(System.out::println);
		
		// save record to database table
		
		Brand brand = brandRepo.findById(60).orElse(null);
		Price price=new Price(210000);
		Stock stock=new Stock(45);
		
		Product prod=new Product("Samsung S23", "Blue Color 256 GB", 0, "S23,Samsung,Mobile,galaxy", stock, price);
		//Product prodObj = prodRepo.save(prod);

		//brand.getProds().add(prodObj);
		//brandRepo.save(brand);
		
		
		prodRepo.findByTitle("%Laptop%").forEach(System.out::println);
		
		
		
		
		
	}

}
