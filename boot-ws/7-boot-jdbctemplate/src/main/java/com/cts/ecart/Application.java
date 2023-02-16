package com.cts.ecart;

import java.util.List;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.cts.ecart.model.Product;
import com.cts.ecart.repository.ProductRepositoryImpl;
import com.cts.ecart.repository.ProductRepositoryLambdaImpl;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext ac = SpringApplication.run(Application.class, args);
		ProductRepositoryImpl prodRepo = ac.getBean(ProductRepositoryImpl.class);
		ProductRepositoryLambdaImpl prodDao = ac.getBean(ProductRepositoryLambdaImpl.class);
		
		//Map<String, Object> row = prodRepo.findById(39);
		//System.out.println(row);
		
		//List<Map<String, Object>> products = prodRepo.findAllProducts();
		
		//System.out.println(products);
		//Product product = prodRepo.findProductById(39);
		//System.out.println(product);
		
		//prodRepo.findAllProductsV1().forEach(System.out::println);
		//Product product = prodRepo.findByProductIdV1(39);
		//System.out.println(product);
		
		//prodRepo.findAllProductsV2().forEach(System.out::println);
		
		//Product product = prodDao.findProductByIdLambda(39);
		//System.out.println(product);
		
		//prodDao.findAllProductsLabmda().forEach(System.out::println);
		
		//Product product = prodDao.findByProductIdLambda(39);
		//System.out.println(product);
		
		
		Product product=new Product(49, "Cable", 3500, "USB 2m cable");
		prodDao.saveProduct(product);
		
		System.out.println("==============================================");
		
		prodDao.findAllProductsLambdaV1().forEach(System.out::println);
		
	}

}
