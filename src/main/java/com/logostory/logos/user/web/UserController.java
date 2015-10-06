package com.logostory.logos.user.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

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
	public String main(HttpServletRequest request, User user, Model model) throws Exception {
		
		List<User> resultClientList = userService.getUserClientList(user);
		List<User> resultMemberList = userService.getUserManagerList(user);
		
		model.addAttribute("uClientList", resultClientList);
		model.addAttribute("uMemberList", resultMemberList);
		
		return userHomeUrl + "UM_Main";
	}
	
	@RequestMapping("/customer")
	public String customer(HttpServletRequest request, User user, Model model) throws Exception {
		
		List<User> resultClientList = userService.getUserClientList(user);
		
		model.addAttribute("uClientList", resultClientList);
		return userHomeUrl + "UM_Customer";
	}
	
	@RequestMapping("/member")
	public String member(HttpServletRequest request, User user, Model model) throws Exception {
		
		List<User> resultMemberList = userService.getUserManagerList(user);
		
		model.addAttribute("uMemberList", resultMemberList);
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

	@RequestMapping("/idCheck")
	@ResponseBody
	public User idCheck(HttpServletRequest request, User user, Model model) throws Exception {

		User resultUser = userService.getUserClient(user.getClientID());
		return resultUser;
	}

	@RequestMapping("/doJoin")
	public String doJoin(HttpServletRequest request, User user, Model model) throws Exception {
		
		if(userService.setUserClient(user)) {
			// 우선 샘플페이지가 없으니까 메인으로 이동시키기.
//			return "redirect:" + "/backoffice/UserManager/UM_DoJoin";
			return userHomeUrl + "UM_DoJoin";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/doJoin2")
	public String doJoin2(HttpServletRequest request, User user, Model model) throws Exception {
		
		if(userService.setUserClient(user)) {
			return userHomeUrl + "index_DoJoin";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Login";
	}
	
	@RequestMapping("/doLogin")
	@ResponseBody
	public String doLogin(HttpServletRequest request, User user, Model model) throws Exception {
		
		User dbUser = userService.getUserClient(user.getClientID());
		
		String writeID = (String)request.getParameter("clientID");
		String writePW = (String)request.getParameter("clientPW");
		
		String resultYN = "Y";
		
		System.out.println("************************");
		
		if(dbUser == null) {
			System.out.println("등록되지 않은 아이디야!");
			resultYN = "X";
			return resultYN;
		}
		else {
			
			String dbID = dbUser.getClientID();
			String dbPW = dbUser.getClientPW();
			
			System.out.println("db에서 가져온 내용 : " + dbID);
			System.out.println("db에서 가져온 내용2 : " + dbPW);
			System.out.println("입력받은 내용 : " + writeID);
			System.out.println("입력받은 내용2 : " + writePW);
			
			if(!(writeID.equals(dbID))) {
				System.out.println("아이디가 일치하지 않아!");
				resultYN = "I";
				return resultYN;
			}
			else if(writeID.equals(dbID)) {
				System.out.println("아이디는 일치하는군.....");
				if(!(writePW.equals(dbPW))) {
					System.out.println("하지만 비밀번호는 일치하지 않아!");
					resultYN = "P";
					return resultYN;
				}
			}
		}		
		
		System.out.println("모두 일치했으니 메인으로 가야지 :)");
		return resultYN;
		
		//TODO 1. 사용자 아이디/패스워드 존재 유무
//		User user = userService.getUserClient(clientID);
		
//		if(user != null){
			
//		}
		
		//TODO 2. 정보를 가져와서 유지()
		
//		request.getSession().setAttribute("userId", user.getUserId());

	}
	
	@RequestMapping("/agreement")
	public String agreement(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Agreement";
	}
	
}
