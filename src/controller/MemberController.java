package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Admin;
import model.Client;
import model.EtcClient;
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

	@RequestMapping("loginKakao.do")
	public String loginKakao(HttpSession session, String userId, String email, String userName) {

		EtcClient client = new EtcClient();
		client.setUserId(userId);
		client.setUserEmail(email);
		client.setUserName(userName);

		session.setAttribute("loginUser", client);
		return "redirect:main.do";

	}

	@RequestMapping("loginNaver.do")
	public String loginNaver(HttpSession session, String userId, String email, String userName) {

		System.out.println(userName);

		EtcClient client = new EtcClient();
		client.setUserId(userId);
		client.setUserEmail(email);
		client.setUserName(userName);

		session.setAttribute("loginUser", client);
		return "redirect:main.do";

	}

	@RequestMapping("callback.do")
	public String callback() {
		return "callback";
	}

	@RequestMapping("join2.do")
	public String join2() {
		return "join2";
	}

	// 로그인API처리
	@RequestMapping("loginByOauth.do")
	public String loginByOauth(HttpSession session, Client client) {

		Client user = cService.clientCheckByOauth(client);
		if (user == null) { // 존재하지않는 회원
			cService.joinClient(client);
		}
       Client loginUser = cService.clientCheckByOauth(client);
		session.setAttribute("loginUser", loginUser);
		
		return "redirect:main.do";

	}

	@RequestMapping(value = "isExistMember.do", produces = { "application/json" })
	public @ResponseBody int isExistMember(String email) {

		int check = cService.isExistClient(email);

		return check;
	}

	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "joinForm";
	}

	@RequestMapping("joinSuccess.do")
	public String joinSuccess() {
		return "joinSuccess";
	}

	@RequestMapping("joinMember.do")
	public String joinMember(Client client, String code) {
		int userKey = cService.joinClient(client);
		return "redirect:joinSuccess.do";
	}

	@RequestMapping("login.do")
	public String login(HttpSession session, Client client) {

		System.out.println(client.toString());

		int check = cService.clientCheck(client);

		if (check == -1) { // 계정이 존재하지않음

			return "redirect:loginForm.do?code=1";
		}

		else if (check == 0) { // 비밀번호가 맞지않음
			return "redirect:loginForm.do?code=2";
		}

		else { // 로그인세션 처리
			Client loginUser = cService.getClientInfo(check);
			session.setAttribute("loginUser", loginUser);
			return "redirect:main.do";
		}

	}

	@RequestMapping("loginForm.do")
	public String loginForm(Model model, @RequestParam(defaultValue = "0") int code) {

		String msg = null;
		if (code == 1) {
			msg = "존재하지 않는 이메일입니다.";
		}

		else if (code == 2) {
			msg = "비밀번호가 맞지 않습니다.";
		}
		model.addAttribute("code", code);
		model.addAttribute("msg", msg);
  
		return "loginForm";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:main.do";
	}

	@RequestMapping("myPage.do")
	public String myPage(Model model, HttpSession session) {
		model.addAttribute("userInfo", session.getAttribute("loginUser"));
		return "myPage";
	}
}
