package com.logostory.logos.user.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping ("/backoffice/UserManager")
@Controller
public class UserController {
	
	private static final String userHomeUrl = "backoffice/UserManager/"; 
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Main";
	}
	
	@RequestMapping("/customer")
	public String customer(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Customer";
	}
	
	@RequestMapping("/member")
	public String member(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Member";
	}
	
	@RequestMapping("/profile")
	public String profile(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Profile";
	}

	@RequestMapping("/join")
	public String join(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Join";
	}
}
