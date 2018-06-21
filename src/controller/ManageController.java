package controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Client;
import service.IAdminService;
import service.IClientService;
import service.IRetailService;

@Controller
public class ManageController {
	

	@Autowired
	private IAdminService aService;
	
	@Autowired
	private IClientService cService;
	
	@Autowired
	private IRetailService rService;
	
	@RequestMapping("myPage.do")
	public String myPage(Model model, HttpSession session) {
		model.addAttribute("userInfo", session.getAttribute("loginUser"));
		return "members/myPage";
	}
	
	
	@RequestMapping("profile.do")
	public String profileSetting(Model model, HttpSession session, @RequestParam(defaultValue = "0") int code) {
		model.addAttribute("userInfo", session.getAttribute("loginUser"));
		Client loginUser = (Client) session.getAttribute("loginUser");
		if( loginUser.getOauthType() == 1 | loginUser.getOauthType() == 2) {
			model.addAttribute("returnMessage", "죄송합니다, 회원님은 연동 서비스를 이용중이십니다. 개인정보 수정은 본사 문의부탁드립니다.");
			return "redirect:myPage.do";
		}
//		else {
//			if( code == 2) {
//				model.addAttribute("returnMessage", "비밀번호 입력을 틀리셨습니다.");
//			}
//			else if( code == 1) {
//				return "members/profileSetting";
//			}
			return "members/passwordCheck";
//		}
		
	}
	
	@RequestMapping("passwordCheck.do")
	public @ResponseBody HashMap<String, Object> pwdCheck(HttpSession session, Client client) {
		// 비밀번호 확인 ajax : check!=1 이면 false, check==1 true
		System.out.println("check::"+client.toString());
		HashMap<String, Object> result = new HashMap<>();
		int returnCode = 0;
		int check = cService.clientCheck(client);
		System.out.println(check);
		if (check == 1) // 비밀번호 확인 성공 code:: 100 
			returnCode = 100;
		else { // 비밀번호 확인 실패 code:: 400
			returnCode = 400;
			result.put("msg", "비밀번호가 틀렸습니다.");
		}
		result.put("returnCode", returnCode);
		return result;
	}
	
	@RequestMapping("profileSetting.do")
	public String profile(Model model, HttpSession session) {
		model.addAttribute("userInfo", session.getAttribute("loginUser"));
		return "members/profileSetting";
	}
}
