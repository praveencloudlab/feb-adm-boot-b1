package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import com.cts.ecart.model.Product;
import com.cts.ecart.model.User;
import com.cts.ecart.service.ProductServiceImpl;

@SpringBootApplication
@EnableAspectJAutoProxy
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
		
		ProductServiceImpl ps = context.getBean(ProductServiceImpl.class);
		
		ps.buy(1024, 10);
		
		
		/*
		Product prod = context.getBean(Product.class);
		User user = context.getBean(User.class);
		prod.setId(10);
		prod.setName("James");
		
		
		user.setUserId(1222);
		*/
		
		
		
		
		
		
	}

}
