package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.entity.Category;
import com.cts.ecart.repository.CategoryRepository;
import com.cts.ecart.repository.ProductRepository;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		ProductRepository prodRepo = context.getBean(ProductRepository.class);
		CategoryRepository catRepo = context.getBean(CategoryRepository.class);
		//prodRepo.findAll().forEach(System.out::println);
		Category cat = catRepo.findById(45).orElse(null);
		System.out.println(cat);
		cat.getBrads().forEach(System.out::println);
		
		
	}

}
