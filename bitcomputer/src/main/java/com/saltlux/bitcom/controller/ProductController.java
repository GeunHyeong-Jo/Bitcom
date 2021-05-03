package com.saltlux.bitcom.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.saltlux.bitcom.security.Admin;
import com.saltlux.bitcom.service.OrderService;
import com.saltlux.bitcom.service.ProductService;
import com.saltlux.bitcom.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	String uploadPath;

	@Autowired
	private ProductService productService;

	@Autowired
	private OrderService orderService;

	@RequestMapping("/getall") // 초기화시 모든 제품정보 가져오기
	public String getAll(Model model) {
		// redirect.addFlashAttribute("productList", productService.findall());
		model.addAttribute("productList", productService.findall());
		return "forward:/productdone";
	}

	@RequestMapping(value = "/getcategory", method = RequestMethod.GET) // 카테고리 선택시 가져오기
	public String getCategory(Model model, HttpServletRequest request) {
		String category = request.getParameter("category");
		model.addAttribute("productList", productService.findCategory(category));
		return "forward:/productdone";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(Model model, HttpServletRequest request) {
		String pno = request.getParameter("pno");
		model.addAttribute("productVo", productService.getDetail(pno));
		return "product/detail";
	}

	@Admin
	@RequestMapping("/admin") // 관리자 상품 관리
	public String admin(Model model) {
		List<ProductVo> list = productService.findall();
		model.addAttribute("productList", list);
		return "product/manage";
	}

	@Admin
	@RequestMapping(value = "/admin", method = RequestMethod.POST) // 관리자 상품 관리
	public String admin(MultipartFile file, Model model, ProductVo vo) {

		System.out.println(vo);

		String path = uploadPath + "/" + vo.getPcategory();
		System.out.println("경로 : " + path);

		String savedName = file.getOriginalFilename();
		File target = new File(path, savedName);

		try {
			System.out.println("파일복사");
			FileCopyUtils.copy(file.getBytes(), target);
			model.addAttribute("savedName", savedName);

		} catch (IOException e) {
			System.out.println(e.toString());
		}

		vo.setPimage("assets/images/product/" + vo.getPcategory() + "/" + savedName);
		productService.addProduct(vo);

		List<ProductVo> list = productService.findall();
		model.addAttribute("productList", list);

		return "redirect:/product/admin";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET) // 관리자 상품 관리
	public String delete(HttpServletRequest request) {

		String no = request.getParameter("no");
		boolean isInOrderDetail = orderService.isInOrderDetail(no);

		if (isInOrderDetail == false) { // 삭제가능
			productService.deleteProduct(no);
			return "redirect:/product/admin";
		} else {
			return "product/failedtodelete"; // 삭제 불가능
		}
	}
}
