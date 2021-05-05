package com.saltlux.bitcom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.saltlux.bitcom.service.BoardService;

@Controller
public class BoardController {
	@SuppressWarnings("unused")
	@Autowired
	private BoardService boardService;
}
