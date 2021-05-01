package com.saltlux.bitcom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.saltlux.bitcom.vo.UserVo;

@Controller
public class MainController {

	@RequestMapping("") // 제품 리스트를 받아온다
	public String getProduct(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser != null) {
			model.addAttribute(authUser);
		}
		return "forward:/product/getall";
	}

	@RequestMapping("productdone") // 로그인 상태면 장바구니 리스트를 받아온다
	public String getCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			return "forward:/index";
		} else {
			return "forward:/cart/getall";
		}
	}

	@RequestMapping("index")
	public String index() {
		return "main/index";
	}

}
