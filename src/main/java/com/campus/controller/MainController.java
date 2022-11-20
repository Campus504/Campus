package com.campus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.campus.dto.BoardDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.MemberDto;
import com.campus.service.CommunityService;
import com.campus.service.GoodsService;

@Controller
public class MainController {
	
	@Autowired
	@Qualifier("goodsService")
	private GoodsService goodsService; 
	
	@Autowired @Qualifier("communityService")
	private CommunityService communityService; 

	@GetMapping(path = { "/", "main" })
	public String main(Model model) {
		
		List<GoodsDto> goods = goodsService.findBestGoods();
		List<BoardDto> boards = communityService.findBestBoard();
		
		model.addAttribute("goods", goods);
		model.addAttribute("boards", boards);
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
	
	@GetMapping(path= {"/drop-out.action"})
	public String memberDropOut() {
		return "/account/member-delete";
	}
}
