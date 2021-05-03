package com.saltlux.bitcom.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saltlux.bitcom.vo.join.CartJoinProductVo;

@Repository
public class CartReopsitory {

	@Autowired
	private SqlSession sqlsession;
	
	
	public void addcart(String userid, String pno, String qty) {
		Map<String , String> map= new  HashMap<String, String>();
		map.put("userid", userid);
		map.put("pno", pno);
		map.put("qty", qty);
		sqlsession.insert("cart.addcart", map);
	}

	public List<CartJoinProductVo> findall(String uid) {
		return sqlsession.selectList("cart.findall", uid);
	}

	public void deleteCart(String uid, String cid) {
		Map<String , String> map= new  HashMap<String, String>();
		map.put("uid", uid);
		map.put("cid", cid);
		sqlsession.delete("cart.deletecart", map);
		
	}
	
	public String getAllPrice(String uid) { // 현재 OrderService에서 사용
		return sqlsession.selectOne("cart.getallprice", uid);
	}

	public int isInCart(String pno) {
		return sqlsession.selectOne("cart.isproductin", pno);
	}

	
}
