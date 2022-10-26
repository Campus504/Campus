package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMemberDetailInfoController {

	@GetMapping(path = {"/admin-member-detail-info.action"})
	public String adminMemberDetailInfo() {
		
		return "admin-member-detail-info";
	}
}