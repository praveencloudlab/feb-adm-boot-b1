package com.cts.ecart.repository;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

@Repository
@Primary
public class OracleRepositoryImpl implements Connection{
	
	@Override
	public void connect() {
		System.out.println(">>> Connected to Oracle DB...");

	}

}
