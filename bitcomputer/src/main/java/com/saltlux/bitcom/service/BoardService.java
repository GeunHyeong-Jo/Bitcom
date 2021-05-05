package com.saltlux.bitcom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saltlux.bitcom.repository.BoardRepository;



@Service
public class BoardService {

	@SuppressWarnings("unused")
	@Autowired
	private BoardRepository boardRepository;

	

}
