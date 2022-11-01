package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminGoodsRegisterTestController {

	@GetMapping(path = {"/admin-goods-register-test.action"})
	public String adminGoodsRegisterTest() {
		
		return "admin-goods-register-test";
	}
	
}