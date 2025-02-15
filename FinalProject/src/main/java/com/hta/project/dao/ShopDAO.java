package com.hta.project.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hta.project.domain.Category;
import com.hta.project.domain.Product;

@Repository
public class ShopDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Category> getCategoryList() {
		return sqlSession.selectList("Products.categoryList");
	}
	
	public int getProductListCount() {
		return sqlSession.selectOne("Products.count");
	}

	public List<Product> getProductList(Map<String, Integer> map) {
		return sqlSession.selectList("Products.list", map);
	}

	public Product getProductDetail(String code) {
		return sqlSession.selectOne("Products.getProductDetail", code);
	}
	
	
}
