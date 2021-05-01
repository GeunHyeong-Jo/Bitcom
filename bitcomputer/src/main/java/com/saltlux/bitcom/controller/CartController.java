package com.saltlux.bitcom.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.saltlux.bitcom.security.Auth;
import com.saltlux.bitcom.security.AuthUser;
import com.saltlux.bitcom.service.CartService;
import com.saltlux.bitcom.vo.UserVo;
import com.saltlux.bitcom.vo.join.CartJoinProductVo;

@Auth
@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;

	@Auth
	@RequestMapping("")
	public String index(@AuthUser UserVo authUser, Model model) {
		model.addAttribute("cartList", cartService.findall(authUser.getUid()));
		return "/cart/cartdetail";
	}

	@Auth
	@RequestMapping("/getall")
	public String getAll(@AuthUser UserVo authUser, Model model) {
		List<CartJoinProductVo> list = cartService.findall(authUser.getUid());
		model.addAttribute("cartList", list);
		return "forward:/index";
	}

	@Auth
	@RequestMapping("/addcart")
	public String addcart(@AuthUser UserVo authUser, HttpServletRequest request) {
		String pno = request.getParameter("pno");
		String qty = request.getParameter("qty");
		cartService.addcart(authUser.getUid(), pno, qty);
		System.out.println("장바구니 추가 성공");
		return "forward:/";
	}

	@Auth
	@RequestMapping("/deletecart")
	public String putOrder(@AuthUser UserVo authUser, HttpServletRequest request) {
		String cid = request.getParameter("cid");
		cartService.deleteCart(authUser.getUid(), cid);
		return "forward:/cart/";
	}

}
