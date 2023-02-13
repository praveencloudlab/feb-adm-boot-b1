package com.cts.ecart.repository;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

@Repository
public class MySQLRepositoryImpl implements Connection {
	
	@Override
	public void connect() {
		System.out.println(">>> Connected to MySQL DB...");
	}

}
