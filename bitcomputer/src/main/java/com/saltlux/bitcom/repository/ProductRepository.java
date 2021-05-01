package com.saltlux.bitcom.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saltlux.bitcom.vo.ProductVo;

@Repository
public class ProductRepository {

	@Autowired
	private SqlSession sqlSession;

	public List<ProductVo> findall() {
		return sqlSession.selectList("product.findall");
	}

	public ProductVo getDetail(String pno) {
		return sqlSession.selectOne("product.getdetail", pno);
	}

	public List<ProductVo> findCategory(String category) {
		return sqlSession.selectList("product.findcategory", category);
	}
	

}
