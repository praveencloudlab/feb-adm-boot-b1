package com.cts.ecart;

import org.springframework.stereotype.Component;
@Component("myBean")
public class C2 {
	
	public C2() {
		System.out.println(">>>>> C2 Object created...");

	}
	public void f2() {
		System.out.println(">>>>> f2 method of C2 class...");
	}

}
