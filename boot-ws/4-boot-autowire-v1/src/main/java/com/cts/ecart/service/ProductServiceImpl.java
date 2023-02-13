package com.cts.ecart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.ecart.repository.Connection;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	//@Qualifier(value = "mySQLRepositoryImpl")
	private Connection mysqlRepo;
	
	@Override
	public void connectDB() {
		mysqlRepo.connect();
	}
	
	
	
}
