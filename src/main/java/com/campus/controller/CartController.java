package com.campus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.campus.dto.CartDto;
import com.campus.service.CartService;

@Controller
public class CartController {

	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
	@GetMapping(path = {"/cart-list.action"})
	public String cartList() {
		return "/cart/my-page-cart-list";
	}
	public String insertCart(@ModelAttribute CartDto cart, HttpSession session) {
		//로그인 여부 확인
		String memberId = (String) session.getAttribute("memberId");
		if(memberId == null) {
		//로그인 하지않으면 로그인화면으로 	
			return "redirect:login.action";
		}//로그인 했을때 화면
		cart.setMemberId(memberId);
		cartService.insertCart(cart);
		return "redirect:my-page-cart-list";
	}
}
