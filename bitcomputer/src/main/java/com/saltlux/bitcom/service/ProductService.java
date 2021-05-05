package com.saltlux.bitcom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saltlux.bitcom.repository.ProductRepository;
import com.saltlux.bitcom.vo.ProductVo;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	public List<ProductVo> findall(){
		List<ProductVo> list = productRepository.findall();
		return list;
	}
	
	public ProductVo getDetail(String pno) {
		ProductVo vo = productRepository.getDetail(pno);
		return vo;
		
	}

	public List<ProductVo> findCategory(String category) {
		List<ProductVo> list = productRepository.findCategory(category);
		return list;
	}

	public void addProduct(ProductVo vo) {
		productRepository.addProduct(vo);
	}

	public void deleteProduct(String no) {
		productRepository.deleteProduct(no);
		
	}

	
}
