package com.saltlux.bitcom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saltlux.bitcom.repository.UserRepository;
import com.saltlux.bitcom.vo.UserVo;


@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public void signup(UserVo vo) {
		userRepository.insert(vo);
	}

	public UserVo getUser(UserVo vo) {
		return userRepository.findByIdAndPassword(vo);
	}

	public UserVo getUser(String id) {
		return userRepository.findById(id);
	}

	public void updateUser(UserVo vo) {
		userRepository.updateinfo(vo);
	}

	public Boolean existUser(String id) {
		UserVo userVo= userRepository.findById(id);
		return userVo != null;
	}
	
	
	
	

}
