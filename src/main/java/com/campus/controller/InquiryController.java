package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InquiryController {

	@GetMapping(path = {"/inquiry.action"})
	public String inquiry() {
		
		return "inquiry";
	}
}
