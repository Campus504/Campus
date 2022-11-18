package com.campus.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		cart.setMemberId(memberId);
		if(memberId == null) {
		//로그인 하지않으면 로그인화면으로 	
			return "redirect:login.action";
		}//로그인 했을때 화면
		cart.setMemberId(memberId);
		cartService.insertCart(cart);
		return "redirect:my-page-cart-list";
	}
	
	//장바구니 추가
	@PostMapping("addByCart.action")
	public String addByCart(@ModelAttribute CartDto cart, HttpSession session) {
		String memberId = (String) session.getAttribute("memberId");
		cart.setMemberId(memberId);
		System.out.println(cart);
		return "redirect:cart-list.action";
	}
	
	// 장바구니 목록
	@PostMapping("cart-list.action")
	public ModelAndView cartList(HttpSession session, ModelAndView mav) {
		String memberId = (String) session.getAttribute("memberId");
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartDto> list = cartService.listCart(memberId);
		int sumMoney = cartService.sumMoney("memberId");
		map.put("list", list);
		map.put("sumMoney", sumMoney);
		mav.setViewName("cart/cart-list.action");
		mav.addObject("map", map);
		return mav;
	}
	
	//장바구니 삭제
	@RequestMapping("deleteCart.action")
	public String deleteCart(@RequestParam String memberId) {
		cartService.deleteCart(memberId);
		return "redirect:cart-list.action";
	}
}
