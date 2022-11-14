package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {

	@GetMapping(path = {"/cart-list.action"})
	public String cartList() {
		return "/cart/my-page-cart-list";
	}
	
}
