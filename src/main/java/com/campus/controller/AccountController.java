package com.campus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.campus.dto.MemberDto;
import com.campus.service.AccountService;

@Controller
/* @RequestMapping(path = { "/account" }) */
public class AccountController {
	
	
	@Autowired
	@Qualifier("accountService")

	private AccountService accountService;
	
	@GetMapping(path = { "register.action" })
	public String showRegisterForm() {
		
		return "account/register";	
	}
	
	@PostMapping(path = { "register.action" })
	public String register(MemberDto member) {
		
		accountService.registerMember(member);
		
		return "redirect:/account/login.action";
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
		System.out.println("dd");
		return "redirect:/main.action"; 
	}
	
	@GetMapping(path = { "logout.action" })
	public View logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return new RedirectView("login.action");
	}
	
	

}