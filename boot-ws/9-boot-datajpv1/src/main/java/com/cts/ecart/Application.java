package com.cts.ecart;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.entity.Product;
import com.cts.ecart.repository.ProductRepository;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		
		ProductRepository prodRepo = context.getBean(ProductRepository.class);
		
		//prodRepos.findAll().forEach(System.out::println);
		/*
		Product product = prodRepo.findById(39).orElse(null);
		product.setDescription("Ipad Air 256 GB,Silver color");
		product.setPrice(89000);
		Product prod = prodRepo.save(product);
		System.out.println(prod);
		*/
		
		/*
		Product prod=new Product();
		prod.setId(300);
		prod.setName("Biryani Rice");
		prod.setDescription("Rice Bag 10 KG");
		prod.setPrice(8500);
		*/
	
		

		List<Product> productList = new ArrayList<>();
		productList.add(new Product("T-Shirt", 19.99, "A classic cotton T-shirt"));
		productList.add(new Product("Sneakers", 89.99, "Comfortable running shoes"));
		productList.add(new Product("Jeans", 59.99, "Slim-fit denim jeans"));
		productList.add(new Product("Backpack", 49.99, "A sturdy backpack for daily use"));
		productList.add(new Product("Smartphone", 799.99, "The latest model"));
		productList.add(new Product("Laptop", 1299.99, "A powerful laptop for professional use"));
		productList.add(new Product("Headphones", 129.99, "Noise-cancelling wireless headphones"));
		productList.add(new Product("Smartwatch", 299.99, "A high-end smartwatch"));
		productList.add(new Product("Camera", 599.99, "A mirrorless camera with interchangeable lenses"));
		productList.add(new Product("Gaming Console", 399.99, "A popular gaming console"));
		
		//prodRepo.saveAll(productList);
		
		prodRepo.deleteById(50);
		
		
		
		
	}

}
