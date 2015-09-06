package com.logostory.logos.promote.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping ("/backoffice/UserManager")
@Controller
public class PromoteController {
	
	private static final String promotionHomeUrl = "backoffice/promotion/"; 
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request, Model model) throws Exception {
		
		return promotionHomeUrl + "add";
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) throws Exception {
		
		return promotionHomeUrl + "list";
	}
	
	@RequestMapping("/preview")
	public String preview(HttpServletRequest request, Model model) throws Exception {
		
		return promotionHomeUrl + "preview";
	}

}
