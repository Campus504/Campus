package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminGoodsRegisterController {

	@GetMapping(path = {"/admin-goods-register.action"})
	public String adminGoodsRegister() {
		
		return "admin-goods-register";
	}
}