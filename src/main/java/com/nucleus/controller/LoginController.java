package com.nucleus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/loginCheck")
	public String loginCheck() {
		return "login";
	}
	
	@RequestMapping("/checkRole")
	public String checkRole() {
		return "AdminView";
	}
	
	@RequestMapping("/errorPage")
	public String errorPage(ModelMap map) {
		map.addAttribute("msg","Invalid credentials!!");
		return "login";
	}
	
	@RequestMapping("/logout")
	public String logout(ModelMap map) {
		map.addAttribute("msg","Successfully logged out!!");
		return "login";
	}
	
	@RequestMapping("/accessError")
	public String accessError() {
		return "accessError";
	}
}