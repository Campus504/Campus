package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FAQController {

	@GetMapping(path = {"/faq.action"})
	public String faq() {
		
		return "faq";
	}
}
