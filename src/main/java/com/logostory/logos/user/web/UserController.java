package com.logostory.logos.user.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//4.1.7, 4.2가 가장최신

@RequestMapping ("/backoffice/UserManager")
@Controller
public class UserController {
	
	private static final String userHomeUrl = "backoffice/UserManager/"; 
	
	@RequestMapping("/main")
	public String add(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Main";
	}
	
	@RequestMapping("/customer")
	public String list(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Customer";
	}
	
	@RequestMapping("/member")
	public String preview(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Member";
	}

}
