package com.saltlux.bitcom.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.saltlux.bitcom.security.Auth;
import com.saltlux.bitcom.security.AuthUser;
import com.saltlux.bitcom.service.OrderService;
import com.saltlux.bitcom.vo.OrdersVo;
import com.saltlux.bitcom.vo.UserVo;
import com.saltlux.bitcom.vo.join.OrdersDetailJoinProductVo;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@Auth
	@RequestMapping
	public String order() {

		return "forward:/";
	}

	@Auth
	@RequestMapping("/make")
	public String makeOrder() {
		return "order/order";
	}

	@Auth
	@RequestMapping("/putorder")
	public String putOrder(@AuthUser UserVo authUser, HttpServletRequest request) {
		OrdersVo vo = new OrdersVo();
		vo.setOname(request.getParameter("name"));
		vo.setOphone(request.getParameter("phone"));
		vo.setOaddress(request.getParameter("address"));
		vo.setOpost(request.getParameter("post"));
		vo.setUid(authUser.getUid());

		orderService.putAllOrder(vo);

		return "order/putorder";
	}

	@Auth
	@RequestMapping("/inquiry")
	public String inquiry(@AuthUser UserVo authUser, Model model) { // 주문조회
		
		List<OrdersVo> list1 = orderService.getAllOrder(authUser.getUid());
		List<OrdersDetailJoinProductVo> list2 =orderService.getAllDetail(authUser.getUid());
		model.addAttribute("orderlist", list1);
		model.addAttribute("detaillist", list2);
		return "order/myinquiry";
	}
	
	@Auth
	@RequestMapping("/cancel")
	public String cancel(@AuthUser UserVo authUser, HttpServletRequest request) { // 주문조회
		String ono= request.getParameter("ono");
		orderService.cancelOrder(ono);
		return "redirect: order/inquiry";
	}
	
}
