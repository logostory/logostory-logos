package com.logostory.logos.common.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("/")
	public String index() throws Exception {
		
		return "index";
	}

}
