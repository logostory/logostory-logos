package com.logostory.logos.promote.web;

import java.util.List;

import javax.inject.Named;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.service.PromotionService;

@RequestMapping ("/backoffice/promotion")
@Controller
public class PromotionController {
	
	private static final Logger logger = LoggerFactory.getLogger(PromotionController.class);
	private static final String promotionHomeUrl = "backoffice/promotion/";
	
	@Autowired
	@Named("promotionService")
	PromotionService promotionService;
	
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request, Model model) throws Exception {
		
		return promotionHomeUrl + "add";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request, Promotion promotion, Model model) throws Exception {
		
		if(promotionService.setPromotion(promotion)){
			return "redirect:" + "/backoffice/promotion/list";
		}else{
			return "error";
		}
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Promotion promotion, Model model) throws Exception {
		
		List<Promotion> resultList = promotionService.getPromotionList(promotion);
		
		model.addAttribute("pList", resultList);
		return promotionHomeUrl + "list";
	}
	
	@RequestMapping("/preview")
	public String preview(HttpServletRequest request, Model model) throws Exception {
		
		return promotionHomeUrl + "preview";

	}

	
}

