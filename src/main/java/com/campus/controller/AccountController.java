package com.campus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;
import com.campus.service.AccountService;

@Controller
/* @RequestMapping(path = { "/account" }) */
public class AccountController {
	
	private final int PAGE_SIZE = 10; //한 페이지에 표시되는 데이터 개수
	
	@Autowired
	@Qualifier("accountService")

	private AccountService accountService;
	
	@GetMapping(path = { "register.action" })
	public String showRegisterForm(@ModelAttribute("member") MemberDto member) {
		
		return "account/register";	
	}
	
	@PostMapping(path = { "register.action" })
	public String register(@Valid MemberDto member,
			BindingResult br) {
		
		if (br.hasErrors()) {
			System.out.println("유효성 검사 오류 발생");
			return "account/register";
		}
		
			System.out.println(member);
		accountService.registerMember(member);
		
		return "redirect:/login.action";
	}
	
	@GetMapping(path = { "login.action" })
	public String showLoginForm() {
		
		return "account/login";
	}
	
	@PostMapping(path = { "login.action" })
	public String login(String memberId, String passwd, HttpSession session, Model model) {
		
		MemberDto member = accountService.findMemberByIdAndPasswd(memberId, passwd);
		
		if (member != null) {
			session.setAttribute("loginuser", member);
			
		} else {
			model.addAttribute("loginfail", memberId);
			return "account/login";	
		}
		
		return "redirect:/main"; 
		
	}
	
	@GetMapping(path = { "logout.action" })
	public View logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return new RedirectView("login.action");
	}
	
	@GetMapping(path= {"admin-member-info.action"})
	public String showMemberList(@RequestParam(defaultValue = "1") int pageNo , Model model) {
		List<MemberDto> members = accountService.findMemberByPage(pageNo, PAGE_SIZE);
		int memberCount = accountService.findMemberCount();
		int pageCount = 
				(memberCount / PAGE_SIZE) + ((memberCount % PAGE_SIZE) > 0 ? 1 : 0);
		model.addAttribute("members", members);
		model.addAttribute("pageNo",pageNo);
		model.addAttribute("pageCount",pageCount);
		System.out.println(memberCount);
		
		return "admin-member-info";
	}
	
	@PostMapping(path = {"admin-member-search.action"})
	public String showMemberSearchList(String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {
		
		List<MemberDto> members = accountService.searchMember(search); 
		
		model.addAttribute("members", members);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("search", search);
		
		return "admin-member-search";
		
	}

}