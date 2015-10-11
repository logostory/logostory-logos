package com.logostory.logos.user.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		
		HttpSession session = request.getSession();
		
		String clientID = (String)session.getAttribute("clientID");
		
		List<User> resultUserInfo = userService.getUserClientInfo(clientID);
		
		model.addAttribute("uClientInfoList", resultUserInfo);
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
			String dbName = dbUser.getClientName();
			String dbLevel = dbUser.getClientLevel();
			String dbTel = dbUser.getClientTel();
			String dbBooking = dbUser.getClientBooking();
			
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
				else {
					System.out.println("모두 일치하니까 정상 로그인 합시다.");
					HttpSession session = request.getSession();
					session.setAttribute("loginYN", "Y");
					session.setAttribute("modify", "N");
					session.setAttribute("clientID", dbID);
					session.setAttribute("clientPW", dbPW);
					session.setAttribute("clientName", dbName);
					session.setAttribute("clientLevel", dbLevel);
					session.setAttribute("clientTel", dbTel);
					session.setAttribute("clientBooking", dbBooking);
					
					List<User> resultUserInfo = userService.getUserClientInfo(dbID);
					
					model.addAttribute("uClientInfoList", resultUserInfo);
				}
			}
		}
		
		System.out.println("모두 일치했으니 메인으로 가야지 :)");
		return resultYN;
	}
	
	@RequestMapping("/agreement")
	public String agreement(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Agreement";
	}
}
