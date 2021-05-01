package com.saltlux.bitcom.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.saltlux.bitcom.service.UserService;
import com.saltlux.dto.JsonResult;

@Controller("userApiController")
//@RestController("userApiController")  
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	private UserService userService;

	@ResponseBody // 메시지 컨버터
	// @GetMapping("/existemail")
	@RequestMapping("/existid")
	public JsonResult existid(String id) {
		Boolean result = userService.existUser(id);
		return JsonResult.success(result);
	}

	@ResponseBody
	@RequestMapping("/hello")
	public String hello() {// 테스트용으로 사용하지는 않음

		return "안녕하세요";
//		Boolean result = userService.existUser("user1");
//		return JsonResult.success(result);
	}

}
