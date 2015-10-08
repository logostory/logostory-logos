package com.logostory.logos.product.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logostory.logos.product.domain.Product;
import com.logostory.logos.product.service.ProductService;

@RequestMapping ("/backoffice/product")
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	private static final String promotionHomeUrl = "backoffice/product/";
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request, Model model) throws Exception {
		
		return promotionHomeUrl + "add";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request, Product product, Model model) throws Exception {
		
		System.out.println("add page call");
		
		if(productService.setProduct(product)){
			return "redirect:" + "/backoffice/product/addPage";
		}else{
			return "error";
		}
	}
}
