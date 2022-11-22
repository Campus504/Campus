package com.campus.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.campus.dto.CartDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;
import com.campus.service.GoodsService;

@Controller
public class GoodsController {
	
	@Autowired
	@Qualifier("goodsService")
	private GoodsService goodsService; 
	
	@GetMapping(path= {"goods-list.action"})
	public String goodsList(@RequestParam(defaultValue = "0") String category, Model model) {
		List<GoodsDto> goods = null;
		if(category=="0") {
			return "redirect:main";
		}else if(category.equals("텐트/타프")) {
			
			goods = goodsService.findGoodsByCategoryTent();
			
		}else if(category.equals("테이블/체어")) {
			
			goods = goodsService.findGoodsByCategoryTable();
			
		}else if(category.equals("침낭/매트")) {
			
			goods = goodsService.findGoodsByCategoryMat();
			
		}else if(category.equals("식기")) {
			
			goods = goodsService.findGoodsByCategoryDish();
			
		}else if(category.equals("화로/버너")) {
			
			goods = goodsService.findGoodsByCategoryStove();
			
		}else{//캠핑소품리스트 출력
			
			goods = goodsService.findGoodsByCategoryEtc();
			
		}
		model.addAttribute("category", category);
		model.addAttribute("goods", goods);
		return "order/goods-list";
		}
	
	@GetMapping(path= {"goods-detail.action"})
	public String goodsDetail(@RequestParam(defaultValue = "0") int goodsCode, Model model) {
		
		if(goodsCode==0) {
			return "redirect:main";
		}
		
		GoodsDto goods = goodsService.findGoodsByGoodsCode(goodsCode);
		GoodsRegisterDto goodsIn = goodsService.findGoodsInByGoodsCode(goodsCode);
		model.addAttribute("goods", goods);
		model.addAttribute("goodsIn", goodsIn);
		
		return "order/goods-detail";
	}
	
	@GetMapping(path= {"showOrderPage.action"})
	public String showOrderPage(CartDto item, Model model) {
		MemberDto member = goodsService.findMemberByMemberId(item.getMemberId());
		item.setGoods(goodsService.findGoodsByGoodsCode(item.getGoodsCode()));
		List<CartDto> cart = new ArrayList<CartDto>();
		cart.add(item);
		model.addAttribute("cart", cart);
		model.addAttribute("member", member);
		return "order/order";
	}
	
	
	  @PostMapping(path= {"showOrderPage.action"})
	  public String showCartOrderPage(@RequestParam String memberId, Model model) {
		List<CartDto> cart = goodsService.findCartByMemberId(memberId);
		MemberDto member = goodsService.findMemberByMemberId(memberId);
		model.addAttribute("cart", cart);
		model.addAttribute("member", member);
	  return "order/order";
	  }
	 
	  
	  @PostMapping(path= {"orderGoods.action"})
		public String insertOrder(int[] goodsCode, int[] amount,int[] price, OrderListDto order) {
		  //오더 리스트로 상품 정보(멤버아이디, 수령일, 반납일, 결제방식 ) 저장> [오더넘버] 받아와서 오더디테일에 상품별로 금액, 수량, 굿즈코드, 아이디 저장
		  goodsService.insertOrder(goodsCode, amount, price, order);
		  
			return "redirect:my-page-order-list.action";
		}
	
	
	
	
}
