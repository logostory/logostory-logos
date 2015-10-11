package com.logostory.logos.common.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;

@Controller
public class CommonController {
	
	@RequestMapping("/")
	public String index() throws Exception {
		
		return "index";
	}
	
	@RequestMapping("/backoffice")
	public String backoffice() throws Exception {
		
		return "backoffice/index";
	} 
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) throws Exception {
		
		System.out.println("로그아웃 하러 들어왔어요.");
		HttpSession session = request.getSession();
		session.invalidate();
		
		System.out.println("로그아웃을 처리하였어요!");
		return "index";
	}

	/*

		마누 스터디
		
		RequestMapping으로 출력 경로 지정하는것 :
		
		return 지정 파일(여기선 backoffice)/해당하는 파일(나는 UserManager)/그 아래 최종적으로 출력하고자하는 jsp

	 */
	

}
