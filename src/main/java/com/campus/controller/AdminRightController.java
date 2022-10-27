package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminRightController {

	@GetMapping(path = {"/admin-right.action"})
	public String adminRight() {
		
		return "admin-right";
	}
}