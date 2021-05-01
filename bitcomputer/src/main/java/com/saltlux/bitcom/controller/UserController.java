package com.saltlux.bitcom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.saltlux.bitcom.security.Auth;
import com.saltlux.bitcom.security.AuthUser;
import com.saltlux.bitcom.service.UserService;
import com.saltlux.bitcom.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "user/signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(UserVo vo) {
		userService.signup(vo);
		return "redirect:/user/joinsuccess";
	}
	
	@RequestMapping(value = "/joinsuccess")
	public String joinsuccess() {
		return "user/joinsuccess";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	
	@Auth
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@AuthUser UserVo authUser, Model model) {
		String id = authUser.getUid();
		UserVo userVo = userService.getUser(id);
		model.addAttribute("userVo", userVo);
		
		return "user/update";
	}
	@Auth
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@AuthUser UserVo authUser, UserVo vo) {

		String id = authUser.getUid();
		vo.setUid(id);
		userService.updateUser(vo);

		return "redirect:/user/logout";
	}
	
	@Auth
	@RequestMapping(value = "/myinfo")
	public String myInfo(@AuthUser UserVo authUser, Model model) {
		
		UserVo vo =	userService.getUser(authUser.getUid());
		model.addAttribute("mydata", vo);
		return "user/information";
	}
	

}
