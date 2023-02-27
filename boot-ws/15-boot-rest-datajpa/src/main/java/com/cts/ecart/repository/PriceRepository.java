package com.cts.ecart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.ecart.entity.Price;

public interface PriceRepository extends JpaRepository<Price,Integer>{

	
}
