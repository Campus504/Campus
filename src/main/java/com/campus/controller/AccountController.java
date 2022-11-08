package com.campus.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.campus.dto.BoardDto;
import com.campus.dto.MemberDto;
import com.campus.mapper.MemberMapper;
import com.campus.service.AccountService;

@Controller
/* @RequestMapping(path = { "/account" }) */
public class AccountController {

	private final int PAGE_SIZE = 10; // 한 페이지에 표시되는 데이터 개수

	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;

	@GetMapping(path = { "register.action" })
	public String showRegisterForm(@ModelAttribute("member") MemberDto member) {

		return "account/register";
	}

	@PostMapping(path = { "register.action" })
	public String register(@Valid MemberDto member, BindingResult br) {

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

	@GetMapping(path = { "admin-member-info.action" })
	public String showMemberList(@RequestParam(defaultValue = "1") int pageNo, Model model) {
		List<MemberDto> members = accountService.findMemberByPage(pageNo, PAGE_SIZE);
		int memberCount = accountService.findMemberCount();
		int pageCount = (memberCount / PAGE_SIZE) + ((memberCount % PAGE_SIZE) > 0 ? 1 : 0);
		model.addAttribute("members", members);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("pageCount", pageCount);
		System.out.println(memberCount);

		return "admin-member-info";
	}

	@PostMapping(path = { "admin-member-search.action" })
	public String showMemberSearchList(String search, Model model, @RequestParam(defaultValue = "1") int pageNo) {

		List<MemberDto> members = accountService.searchMember(search);

		model.addAttribute("members", members);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("search", search);

		return "admin-member-search";

	}

	// 아이디 중복확인 처리
	@RequestMapping(value = "/memberIdOverlap", method = RequestMethod.POST)
	public void memberIdOverlap(HttpServletResponse response, @RequestParam("memberId") String memberId)
			throws IOException {
		// @RequestParam는 요청의 특정 파라미터 값을 찾아낼 때 사용하는 어노테이션
		accountService.memberIdOverlap(memberId, response); // 서비스에 있는 memberIdOverlap 호출.
	}

//	회원정보수정

	@GetMapping(path = { "/my-page.action" })
	public String myPage(String memberId, Model model) {
		MemberDto member = accountService.selectMemberInfo(memberId);
		model.addAttribute("member", member);

		return "my-page";
	}

	@PostMapping("my-page.action")
	public String memberUpdate(@ModelAttribute MemberDto member) {
		accountService.updateMember(member);
		return "main";
	}

	// 회원탈퇴

	
	  @RequestMapping(value="/account/member-delete", method = RequestMethod.GET)
	  public String memberDeleteView() throws Exception{ 
		  return "/account/member-delete";
	 }
	  
	  @PostMapping("drop-out.action")
	  public String deleteMember(MemberDto member, HttpSession session) {
		 
	  accountService.deleteByMember(member);
	  session.setAttribute("loginuser", null);
	  	return "main";
	  }
	 
	
	/*
	 * @RequestMapping(value = "/dropOut.action", method = RequestMethod.POST)
	 * public String memberDelete(MemberDto memberDto, HttpSession session,
	 * RedirectAttributes rttr) throws Exception {
	 * 
	 * // 세션에 있는 member를 가져와 member변수에 넣어줍니다. MemberDto member = (MemberDto)
	 * session.getAttribute("member"); // 세션에있는 비밀번호 String sessionPass =
	 * memberDto.getPasswd(); // Dto로 들어오는 비밀번호 String passwd =
	 * memberDto.getPasswd();
	 * 
	 * if (!(sessionPass.equals(passwd))) { rttr.addFlashAttribute("msg", false);
	 * return "redirect:main"; } Service.memberDelete(passwd); session.invalidate();
	 * return "redirect:/"; }
	 */
	 

}