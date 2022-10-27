package com.campus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.campus.dto.MemberDto;
import com.campus.service.AccountService;
import com.campus.service.AccountServiceImpl;

import lombok.Setter;

@Controller
@RequestMapping(path = { "/account" })
public class AccountController {
	
	
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	@GetMapping(path = { "/register.action" })
	public String showRegisterForm() {
		
		return "account/register";	//	/WEB-INF/views/ + account/register + .jsp
	}
	
	@PostMapping(path = { "/register.action" })
	public String register(MemberDto member) {
		// 1. 요청 데이터 읽기 -> DTO에 저장 : 전달인자 사용으로 대체
		System.out.println(member);
		
		// 2. 요청 처리
		accountService.registerMember(member);
		
		// 3. View에서 사용할 수 있도록 데이터 전달
		
		// 4. View 또는 다른 Controller로 이동
		return "redirect:/account/login.action";
	}
	
	@GetMapping(path = { "/login.action" })
	public String showLoginForm() {
		
		return "account/login";		//  /WEB-INF/views/ + account/login + .jsp
	}
	
	@PostMapping(path = { "/login.action" })
	public String login(String memberId, String passwd, HttpSession session, Model model) {
		// 1. 요청 데이터 읽기 ( 전달인자 사용해서 대체 )
		
		// 2. 요청 처리
		MemberDto member = accountService.findMemberByIdAndPasswd(memberId, passwd);
		
		if (member != null) {
			session.setAttribute("loginuser", member);
		} else {
			model.addAttribute("loginfail", memberId);
			return "account/login"; // /WEB-INF/views/ + account/login + .jsp
		}
		
		// 3. View에서 사용하도록 데이터 전달
		
		// 4. View 또는 다른 Controller로 이동 
		return "redirect:/home.action"; // return "redirect:/home.action";
	}
	
	@GetMapping(path = { "/logout.action" })
	public View logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return new RedirectView("login.action");
	}
	
	

}
