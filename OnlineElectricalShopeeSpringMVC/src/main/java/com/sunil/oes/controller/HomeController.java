package com.sunil.oes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}
	
	@GetMapping("/")
	public String getHomePage() {
		return "index";
	}
	
	@GetMapping("dashbord")
	public String getDashboard() {
		return "dashboard";
	}
}
