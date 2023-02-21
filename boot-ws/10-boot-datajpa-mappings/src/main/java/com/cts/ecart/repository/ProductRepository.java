package com.cts.ecart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.ecart.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	// DSL (Domains specific language)
	
	// find products by product name
	
	List<Product> findByProductTitle(String prodName);
	List<Product> findByProductTitleLike(String prodName);
	List<Product> findByPriceObjPriceGreaterThanEqual(double price);
	List<Product> findByProductTitleLikeAndPriceObjPriceGreaterThanEqual(String name,double price);
	
	// Queries

	//@Query(name = "q1",value = "from com.cts.ecart.entity.Product as p where p.productTitle like :productTitle")
	//List<Product> findByTitle(String productTitle);
	
	@Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRES_NEW)
	@Query(name = "q1",value = "from com.cts.ecart.entity.Product as p where p.productTitle like :prodName")
	List<Product> findByTitle(@Param("prodName") String productTitle);
	
	
}
