package com.logostory.logos.common.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.logostory.logos.user.domain.User;

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
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request, Model model) throws Exception {
		
		System.out.println("정보 수정하러 왔음 ...");
		String modify = "Y";
		
		HttpSession session = request.getSession();
		session.setAttribute("modify", "Y");
		
		return "redirect:/#login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) throws Exception {
		
		System.out.println("로그아웃 하러 들어왔어요.");
		HttpSession session = request.getSession();
		session.invalidate();
		
		System.out.println("로그아웃을 처리하였어요!");
		return "redirect:/";
	}

	/*

		마누 스터디
		
		RequestMapping으로 출력 경로 지정하는것 :
		
		return 지정 파일(여기선 backoffice)/해당하는 파일(나는 UserManager)/그 아래 최종적으로 출력하고자하는 jsp
		
		return redirect로 컨트롤러로 넘기는 방법 : http://hellogk.tistory.com/86

	 */

}
