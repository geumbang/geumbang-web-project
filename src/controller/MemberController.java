package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Admin;
import model.Client;
import model.Retail;
import service.IAdminService;
import service.IClientService;
import service.IRetailService;

@Controller
public class MemberController {
	

	@Autowired
	private IAdminService aService;
	
	@Autowired
	private IClientService cService;
	
	@Autowired
	private IRetailService rService;
	
	
	
	
	@RequestMapping("join2.do")
	public String join2() {	
		return "join2";
	}

	
	
	
	//로그인API처리 
	@RequestMapping("joinClientByOauth.do")
	public String joinClient(HttpSession session, String email, String name, int oauthType) {

	int isCheck = cService.isExistClient(email);	
	if(isCheck == 0) {  
	//존재하지 않는 회원이면 db저장 
	cService.joinClientByOauth(email, name, oauthType);
	return "join3";
	}
  
    return "join3";
	}
	
	
	
	
	

	@RequestMapping("joinForm.do")
	public String loginForm() {	
		return "joinForm";
	}
	
	
	
	@RequestMapping(value = "isExistMember.do", produces = { "application/json" })
	public @ResponseBody int isExistMember(String email) {
		System.out.println("111");
		int check = cService.isExistClient(email);	
		System.out.println("222");
		return check;
	}
	
	
	
	@RequestMapping("joinMember.do")
	public String joinMember(Client client) {	
     int userKey = cService.joinClient(client);
		return "joinSuccess";
	}
	
	
	
	@RequestMapping("login.do")
	public  String login(HttpSession session, Client client) {
		
		System.out.println(client.toString());
		
		int check = cService.clientCheck(client);
	
		if(check== -1) {  //계정이 존재하지않음
			
			return "redirect:main.do?code=1";
		}
		
		else if (check == 0) { //비밀번호가 맞지않음 
			return "redirect:main.do?code=2";
		}
		
	
		else { //로그인세션 처리
		Client loginUser = cService.getClientInfo(check);
			session.setAttribute("loginUser", loginUser);
			return "redirect:main.do?code=3";
		}

	
	}
	


}
