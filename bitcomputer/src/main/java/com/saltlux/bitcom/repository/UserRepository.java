package com.saltlux.bitcom.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saltlux.bitcom.vo.UserVo;

@Repository
public class UserRepository {

	@Autowired
	private SqlSession sqlSession;
	
	
	public void insert(UserVo vo) {
		sqlSession.insert("signup", vo); //done
	}

	public UserVo findByIdAndPassword(UserVo vo) {
		return sqlSession.selectOne("findByIdAndPassword",vo); // done
	}

	public UserVo findById(String id) {
		return sqlSession.selectOne("findById", id); // done
	}


	public void updateinfo(UserVo vo) {
		sqlSession.update("updateinfo", vo); //done
	}



}
