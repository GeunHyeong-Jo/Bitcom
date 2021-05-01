package com.saltlux.bitcom.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.saltlux.bitcom.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/getall")//초기화시 모든 제품정보 가져오기
	public String getAll(Model model) {
		//redirect.addFlashAttribute("productList", productService.findall());
		model.addAttribute("productList", productService.findall());
		return "forward:/productdone";
	}
	
	@RequestMapping(value = "/getcategory", method = RequestMethod.GET )//카테고리 선택시 가져오기
	public String getCategory(Model model, HttpServletRequest request) {
		String category =request.getParameter("category");
		model.addAttribute("productList", productService.findCategory(category));
		return "forward:/productdone";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET )
	public String detail(Model model,HttpServletRequest request) {
		String pno =request.getParameter("pno");
		model.addAttribute("productVo",productService.getDetail(pno));
		return "product/detail";
	}
	
	
}
