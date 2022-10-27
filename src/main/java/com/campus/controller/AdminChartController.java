package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminChartController {

	@GetMapping(path = {"/admin-chart.action"})
	public String adminChart() {
		
		return "admin-chart";
	}
}
