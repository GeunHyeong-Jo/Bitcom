package com.saltlux.bitcom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saltlux.bitcom.repository.CartReopsitory;
import com.saltlux.bitcom.vo.join.CartJoinProductVo;

@Service
public class CartService {

	@Autowired
	private CartReopsitory cartReopsitory;
	
	public void addcart(String userid, String pno, String qty) {
		cartReopsitory.addcart(userid, pno, qty);
	}

	public List<CartJoinProductVo> findall(String uid) {
		return cartReopsitory.findall(uid);
	}

	public void deleteCart(String uid, String cid) {
		cartReopsitory.deleteCart(uid,cid);
	}

}
