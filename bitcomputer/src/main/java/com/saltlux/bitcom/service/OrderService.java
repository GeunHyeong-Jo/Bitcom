package com.saltlux.bitcom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saltlux.bitcom.repository.CartReopsitory;
import com.saltlux.bitcom.repository.OrderRepository;
import com.saltlux.bitcom.vo.OrdersVo;
import com.saltlux.bitcom.vo.join.OrdersDetailJoinProductVo;

@Service
public class OrderService {

	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private CartReopsitory cartReopsitory;
	
	public void putAllOrder(OrdersVo vo) {
		String total = cartReopsitory.getAllPrice(vo.getUid());//장바구니의 총 금액을 계산
		vo.setOtotal(Integer.parseInt(total)); //장바구니의 총 금액을 추가
		orderRepository.putAllOrder(vo);// orders테이블에 추가
		//트리거를 이용하여 ordersdetail을 추가하고 장바구니내용을 비운다
	}

	public List<OrdersVo> getAllOrder(String uid) {
		return orderRepository.getAllOrder(uid);
	}

	public List<OrdersDetailJoinProductVo> getAllDetail(String uid) {
		return orderRepository.getAllDetail(uid);
	}

	public void cancelOrder(String ono) {
		orderRepository.cancelOrder(ono);
	}

}
