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

import com.cts.ecart.model.Product;

@Repository
public class ProductRepositoryImpl {
	
	@Autowired
	private JdbcTemplate jt;
	
	/*
	 * 1.Generic Queries
	 * 2.Domain Object Queries
	 * 
	 * 1.Generic Queries
	 * =====================
	 * • JdbcTemplate returns each row of a ResultSet as a Map
		• When expecting a single row
			– Use queryForMap(..)
		• When expecting multiple rows
			– Use queryForList(..)
			
		
		
	 * 
	 *  2.Domain Object Queries
	 *  =============================
	 *  1.RowMapper
	 *  2.ResultSetExtractor
	 *  3.RowCallbackHandler
	 *  
	 *  1.RowMapper
	 *  ================
	 *  Spring provides a RowMapper interface for mapping a single row of a ResultSet to an object
			– Can be used for both single and multiple row queries 
			– Parameterized as of Spring 3.0
			- jdbcTemplate.queryForObject : single row operations
			- jdbcTemplate.query: multiple rows selection
			- use queryForObject for single row operations
			- use query method for muti row operations
	 *  
	 *  
	 *  2.ResultSetExtractor
	 *  ==========================
	 *  Spring provides a ResultSetExtractor interface for processing an entire ResultSet at once
		 	- You are responsible for iterating the ResultSet
		 	- use query method for both single and multi operations
	 * 
	 */
	
	 // using queryForMap example
	 public Map<String, Object> findById(int id){
		 String q1="select * from product where id=?";
		 return jt.queryForMap(q1,id);
	 }
	 
	 public  List<Map<String, Object>> findAllProducts() {
		 return jt.queryForList("select * from product");
	 }
	
	 // domain query example for single row using  RowMapper
	public Product findProductById(int id) {
		String q1="select * from product where id=?";
		return jt.queryForObject(q1,new RowMapperDemo(),id);
	}
	
	// domain query example for multiple rows using  RowMapper
	
	public List<Product> findAllProductsV1(){
		String q1="select * from product";
		return jt.query(q1, new RowMapperDemo());
	}
	
	// fetch single record using ResultSetExtractor interface
	public Product findByProductIdV1(int id) {
		return jt.query("select * from product where id=?", new ResultSetExtractorDemo(),id);
	}
	
	// fetch multiple records using ResultSetExtractor interface
	
	public List<Product> findAllProductsV2(){
		return jt.query("select * from product", new ResultSetExtractorDemoV1());
	}

	
	
}

class ResultSetExtractorDemoV1 implements ResultSetExtractor<List<Product>>{
	
	@Override
	public List<Product> extractData(ResultSet rs) throws SQLException, DataAccessException {
		List<Product> prods=new ArrayList<>();
		while(rs.next()) {
			Product prod=new Product();
			prod.setId(rs.getInt("id"));
			prod.setName(rs.getString("name"));
			prod.setPrice(rs.getDouble("price"));
			prod.setDescription(rs.getString("description"));
			
			prods.add(prod);
			
		}
		
		return prods;
	}
	
}

class ResultSetExtractorDemo implements ResultSetExtractor<Product>{
	@Override
	public Product extractData(ResultSet rs) throws SQLException, DataAccessException {
		
		rs.next();
		
		Product prod=new Product();
		prod.setId(rs.getInt("id"));
		prod.setName(rs.getString("name"));
		prod.setPrice(rs.getDouble("price"));
		prod.setDescription(rs.getString("description"));
		
		return prod;
	}
}


class RowMapperDemo implements RowMapper<Product>{
	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Product prod=new Product();
		prod.setId(rs.getInt("id"));
		prod.setName(rs.getString("name"));
		prod.setPrice(rs.getDouble("price"));
		prod.setDescription(rs.getString("description"));
		
		return prod;
	}
}

