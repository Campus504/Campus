package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping(path = { "/", "main" })
	public String main() {
		return "main";
	}

	@GetMapping(path = { "/blog.action" })
	public String blog() {
		return "blog";
	}

	@GetMapping(path = { "/blog-single.action" })
	public String blog_single() {
		return "blog_single";
	}

	@GetMapping(path = { "/portfolio-details.action" })
	public String portfolio_details() {
		return "portfolio_details";
	}

}
