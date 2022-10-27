package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminChartController2 {

	@GetMapping(path = {"/admin-chart2.action"})
	public String adminChart2() {
		
		return "admin-chart2";
	}
}
