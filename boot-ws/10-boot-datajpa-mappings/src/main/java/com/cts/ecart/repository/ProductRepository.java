package com.cts.ecart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.ecart.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	// DSL (Domains specific language)
	
	// find products by product name
	
	List<Product> findByProductTitle(String prodName);
	List<Product> findByProductTitleLike(String prodName);
	List<Product> findByPriceObjPriceGreaterThanEqual(double price);
	List<Product> findByProductTitleLikeAndPriceObjPriceGreaterThanEqual(String name,double price);
	
	
	
}
