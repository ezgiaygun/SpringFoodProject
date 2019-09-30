package com.works.foodtown;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.Util;

@Controller
@RequestMapping("/user")
public class UserIncluderController {
	
	public static boolean isLogin = false; 
	
	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String dashBoard() {
		return "user/inc/css";
	}
	
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String js() {
		return "user/inc/js";
	}
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header(Model model) {
		model.addAttribute("link", Util.link);
		model.addAttribute("login", isLogin);
		return "user/inc/header";
	}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String menu() {
		return "user/inc/footer";
	}
}
