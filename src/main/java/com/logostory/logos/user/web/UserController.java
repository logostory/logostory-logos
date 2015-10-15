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
		
		User resultUserInfo = userService.getUserClient(clientID);
		
		if (resultUserInfo != null) {
			
			model.addAttribute("uClientInfoList", resultUserInfo);
		
		}
		else if (resultUserInfo == null) {
			
			User resultUserInfoM = userService.getUserClient("clientID");
			
			model.addAttribute("mClientInfoList", resultUserInfoM);
		
		}
		
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
		User dbUserM = userService.getUserManager(user.getClientID());
		
		String writeID = (String)request.getParameter("clientID");
		String writePW = (String)request.getParameter("clientPW");
		
		String resultYN = "Y";
		
		System.out.println("************************");
		
		if(dbUser == null) {
			
			System.out.println("dbUserM이 있나요???"+dbUserM);
			
			if(dbUserM != null) {
				String dbIDM = dbUserM.getClientID();
				String dbPWM = dbUserM.getClientPW();
				String dbNameM = dbUserM.getManagerName();
				String dbLevelM = dbUserM.getManagerLevel();
				String dbTelM = dbUserM.getManagerTel();
				
				System.out.println("dbM에서 가져온 내용 : " + dbIDM);
				System.out.println("dbM에서 가져온 내용2 : " + dbPWM);
				System.out.println("M입력받은 내용 : " + writeID);
				System.out.println("M입력받은 내용2 : " + writePW);
				
				if(!(writeID.equals(dbIDM))) {
					System.out.println("아이디가 일치하지 않아! 직원이 아닌가봐!");
					resultYN = "I";
					return resultYN;
				}
				else if(writeID.equals(dbIDM)) {
					System.out.println("아이디는 일치하는군... 직원이 맞긴 한듯!");
					if(!(writePW.equals(dbPWM))) {
						System.out.println("멍청한놈! 비밀번호가 다르잖아!");
						resultYN = "P";
						return resultYN;
					}
					else {
						System.out.println("모두 일치하는군. 좋은아침입니다!");
						HttpSession session = request.getSession();
						session.setAttribute("loginYN", "Y");
						session.setAttribute("modify", "N");
						session.setAttribute("gubun", "M");
						session.setAttribute("userM", dbUserM);

						model.addAttribute("userM", dbUserM);
					}
				}
			}
			else {
			
				System.out.println("등록되지 않은 아이디야!");
				resultYN = "X";
				return resultYN;
			}
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
					session.setAttribute("gubun", "C");
					session.setAttribute("userC", dbUser);
					
					model.addAttribute("userC", dbUser);
				}
			}
		}
		
		System.out.println("모두 일치했으니 메인으로 가야지 :)");
		return resultYN;
	}
	
	@RequestMapping("/doModifyC")
	public String doModifyC(HttpServletRequest request, User user, Model model) throws Exception {
		
		System.out.println("******************doModifyC******************");
		if(userService.updateUserClient(user)) {
			HttpSession session = request.getSession();
			session.setAttribute("modify", "N");
			return userHomeUrl + "index_DoModify";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/doModifyM")
	public String doModifyM(HttpServletRequest request, User user, Model model) throws Exception {
		
		System.out.println("******************doModifyM******************");
		if(userService.updateUserManager(user)) {
			return userHomeUrl + "index_DoModify";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/modifyFinish")
	public String modifyFinish(HttpServletRequest request, User user, Model model) throws Exception {
		
		System.out.println("수정완료~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		
		User dbUserC = userService.getUserClient(user.getClientID());
		User dbUserM = userService.getUserManager(user.getClientID());
		
		if(dbUserC == null) {
			HttpSession session = request.getSession();
			session.setAttribute("modify", "N");
			session.setAttribute("userM", dbUserM);
			
			model.addAttribute("userM", dbUserM);
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("modify", "N");
			session.setAttribute("userC", dbUserC);
			
			model.addAttribute("userC", dbUserC);
		}
		
		return "redirect:/#login";
		
	}
	
	@RequestMapping("/agreement")
	public String agreement(HttpServletRequest request, Model model) throws Exception {
		return userHomeUrl + "UM_Agreement";
	}
}
