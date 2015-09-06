package com.logostory.logos.common.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	/*

		마누 스터디
		
		RequestMapping으로 출력 경로 지정하는것 :
		
		return 지정 파일(여기선 backoffice)/해당하는 파일(나는 UserManager)/그 아래 최종적으로 출력하고자하는 jsp

	 */
	
	// User - 메인 페이지
	@RequestMapping("/backoffice/UserManager")
	public String userManager() throws Exception {
		
		return "backoffice/UserManager/UM_Main";
	}
	
	// User - 고객 관리 페이지
	@RequestMapping("/backoffice/UserManager/customer")
	public String userCustomer() throws Exception {
		
		return "backoffice/UserManager/UM_Customer";
	}
	
	// User - 사원 관리 페이지
	@RequestMapping("/backoffice/UserManager/member")
	public String userMember() throws Exception {
		
		return "backoffice/UserManager/UM_Member";
	}

}
