package com.logostory.logos.user.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logostory.logos.user.domain.User;
import com.logostory.logos.user.service.UserService;

@RequestMapping ("/backoffice/UserManager")
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	private static final String userHomeUrl = "backoffice/UserManager/"; 
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, Model model) throws Exception {
		
		return userHomeUrl + "UM_Main";
	}
	
	@RequestMapping("/customer")
	public String customer(HttpServletRequest request, User user, Model model) throws Exception {
		
		if (userService.setUserClient(user)) {
			return "redirect:" + "/backoffice/UserManager/UM_Customer";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/member")
	public String member(HttpServletRequest request, User user, Model model) throws Exception {
		
		if (userService.setUserManager(user)) {
			return "redirect:" + "/backoffice/UserManager/UM_Member";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/profile")
	public String profile(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Profile";
	}

	@RequestMapping("/join")
	public String join(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Join";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Login";
	}
	
	@RequestMapping("/agreement")
	public String agreement(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Agreement";
	}

}
