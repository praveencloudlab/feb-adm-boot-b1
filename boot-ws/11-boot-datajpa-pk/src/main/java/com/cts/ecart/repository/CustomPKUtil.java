package com.cts.ecart.repository;

import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentityGenerator;

public class CustomPKUtil extends IdentityGenerator {

	@Override
	public Object generate(SharedSessionContractImplementor s, Object obj) {

		System.out.println(">>>>> Custom PK Generation in Progress <<<<<<");

		String key = "PHYD1024";
		long currentTimeMillis = System.currentTimeMillis();
		key = key + currentTimeMillis;

		return key;
	}

}
