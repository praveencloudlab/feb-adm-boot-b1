package com.cts.ecart.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.ecart.model.Product;

@Repository
public class ProductRepositoryLambdaImpl {
	
	@Autowired
	private JdbcTemplate jt;
	
	
	// DML operations
	public void saveProduct(Product product) {
		String qry="insert into product values(?,?,?,?)";
		int rowsUpdated = jt.update(qry,product.getId(),product.getName(),product.getPrice(),product.getDescription());
		System.out.println(rowsUpdated+" updated succssfully...");
	}
	

	 // domain query example for single row using  RowMapper
	public Product findProductById(int id) {
		String q1="select * from product where id=?";
		return jt.queryForObject(q1,new RowMapperDemo(),id);
	}
	
	// or
	public Product findProductByIdLambda(int id) {
		return jt.queryForObject("select * from product where id=?", (rs,rowNum)->new Product(rs.getInt("id"),rs.getString("name"),rs.getDouble("price"),rs.getString("description")),id);
	}
	
	
	
	
	// domain query example for multiple rows using  RowMapper
	
	public List<Product> findAllProductsV1(){
		String q1="select * from product";
		return jt.query(q1, new RowMapperDemo());
	}
	
	// or
	public List<Product> findAllProductsLabmda(){
		return jt.query("select * from product", (rs,rowNum)->new Product(rs.getInt("id"),rs.getString("name"),rs.getDouble("price"),rs.getString("description")));	
	}
	
	
	// fetch single record using ResultSetExtractor interface
	public Product findByProductIdV1(int id) {
		return jt.query("select * from product where id=?", new ResultSetExtractorDemo(),id);
	}
	
	//or
	public Product findByProductIdLambda(int id) {
		return jt.query("select * from product where id=?", (rs)->{
			rs.next();
			Product prod=new Product(rs.getInt("id"),rs.getString("name"),rs.getDouble("price"),rs.getString("description"));
			return prod;
		},id);
		
	}
	
	// fetch multiple records using ResultSetExtractor interface
	
	public List<Product> findAllProductsV2(){
		return jt.query("select * from product", new ResultSetExtractorDemoV1());
	}
	
	// or
	
	public List<Product> findAllProductsLambdaV1(){
		return jt.query("select * from product", (rs)->{
			List<Product> prods=new ArrayList<>();
			while(rs.next()) {
				Product prod=new Product(rs.getInt("id"),rs.getString("name"),rs.getDouble("price"),rs.getString("description"));
				prods.add(prod);
			}
			return prods;
		});
	}

	
	
}

