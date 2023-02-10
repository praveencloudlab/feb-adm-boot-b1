package com.cts.ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication // enables auto discovery
//@ComponentScan(basePackages = {"com"})
public class Application {

	public static void main(String[] args) {
		
		ConfigurableApplicationContext ac= SpringApplication.run(Application.class,args); // spring container
		C1 c1Obj = ac.getBean(C1.class);
		//C2 c2Obj = ac.getBean(C2.class);
		//C2 c2Obj = (C2) ac.getBean("myBean");
		C2 c2Obj = ac.getBean("myBean",C2.class);
		c1Obj.f1();
		c2Obj.f2();
		
	}

}
