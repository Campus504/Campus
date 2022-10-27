package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping(path= {"/login.action"})
	private String login() {
		
		return "login";
	}
	
}
