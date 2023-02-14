package com.cts.ecart.service;

import javax.management.RuntimeErrorException;

import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl {

	public Boolean buy(int productId, int userId) {
		System.out.println("Trying to buy " + productId + "  for user " + userId);

		try {
			
			if(userId!=0) {
				System.out.println(">>>>>> test ");
				return true;
			}
			if (userId == 0)
				throw new RuntimeException("Some issue while buying");
			

		} catch (RuntimeException re) {
			re.printStackTrace();
		}

		return false;
	}

}
