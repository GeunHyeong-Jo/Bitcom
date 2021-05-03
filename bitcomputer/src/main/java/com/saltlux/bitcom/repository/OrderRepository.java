package com.saltlux.bitcom.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saltlux.bitcom.vo.OrdersVo;
import com.saltlux.bitcom.vo.join.OrdersDetailJoinProductVo;

@Repository
public class OrderRepository {

	@Autowired
	private SqlSession sqlSession;

	public void putAllOrder(OrdersVo vo) {
		sqlSession.insert("orders.makeallorder", vo);
	}

	public List<OrdersVo> getAllOrder(String uid) {
		return sqlSession.selectList("orders.getAllOrders", uid);
	}

	public List<OrdersVo> getAllOrder() {
		return sqlSession.selectList("orders.adminGetAllOrders");
	}

	public List<OrdersDetailJoinProductVo> getAllDetail(String uid) {
		return sqlSession.selectList("orders.getAllDetails", uid);
	}
	
	public List<OrdersDetailJoinProductVo> getAllDetail() {
		return sqlSession.selectList("orders.adminGetAllDetails");
	}

	public void cancelOrder(String ono) {
		sqlSession.delete("orders.cancelOrder", ono);
	}

	public int isInOrderDetail(String pno) {
		return sqlSession.selectOne("orders.isproductin", pno);
	}

	public void changeOrder(Map<String, String> map) {
		sqlSession.update("orders.change", map);
		
	}

	



}
