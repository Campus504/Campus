package com.campus.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.campus.dto.CartDto;
import com.campus.dto.MemberDto;
import com.campus.service.CartService;


@Controller
public class CartController {

	@Autowired
	
	@Qualifier("cartService")
	private CartService cartService;
	
	@GetMapping(path = {"/cart-list.action"})
	public String cartList(@ModelAttribute CartDto cart,@RequestParam(defaultValue = "텐트/타프") String bigCategory,  HttpSession session,Model model) {
		//로그인 여부 확인
		MemberDto member = (MemberDto) session.getAttribute("loginuser");
		cart.setMemberId(member.getMemberId());	
		
		List<CartDto> list = cartService.listCart(member.getMemberId());
		int size = list.size();
		model.addAttribute("list",list);
		model.addAttribute("size",size);
		model.addAttribute("bigCategory",bigCategory);
		
		
		return "cart/my-page-cart-list";
	}
	

	//장바구니 추가
	@PostMapping("addByCart.action")
	@ResponseBody
	public String addByCart(@ModelAttribute CartDto cart, HttpSession session, Model model) {
		MemberDto member = (MemberDto) session.getAttribute("loginuser");
		cart.setMemberId(member.getMemberId());
		
		int valid = cartService.selectCart(member.getMemberId(), cart.getGoodsCode());
		
		if (valid >= 1) {
			return "success";
		} else {
			cartService.insertCart(cart);
		}
		
		return "success";
	}
	
	// 장바구니 목록
	@PostMapping("cart-list.action")
	public ModelAndView cartList(HttpSession session, ModelAndView mav) {
		MemberDto member = (MemberDto) session.getAttribute("loginuser");
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartDto> list = cartService.listCart(member.getMemberId());
		System.out.println(list);
		map.put("list", list);
		mav.setViewName("cart/cart-list.action");
		mav.addObject("map", map);
		return mav;
	}
	
	//장바구니 개별삭제
	@GetMapping("deleteCart.action")
	public String deleteCart(int cartNo,int goodsCode) {
		System.out.println(cartNo);
		cartService.deleteCart(cartNo, goodsCode);
		return "redirect:cart-list.action";
	}
	
	//장바구니 전체 삭제
	@GetMapping("deleteAllCart.action")
	public String deleteAllCart(String memberId) {
		cartService.deleteAllCart(memberId);
		return "redirect:cart-list.action";
	}
	
	//장바구니 수량 변경
	@GetMapping("modifyAmount.action")
	@ResponseBody
	public String modifyAmount(int[] cartNo, int[] amount) {
		
		for (int i = 0; i < amount.length; i++) {
			
			cartService.updateCart(cartNo[i],amount[i]);
			 
		}
		
		
		return "success";
	}
}
