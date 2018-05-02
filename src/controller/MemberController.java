package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("login.do")
	public ModelAndView login() {
		
		Admin admin = aService.selectAdmin(1);
		List<Admin> adminAll =aService.selectAllAdmin();
		
		Client client = cService.selectClient(1);
		List<Client> clientAll =cService.selectAllClient();
		
		Retail retail = rService.selectRetail(1);
		List<Retail> retailAll =rService.selectAllRetail();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("admin", admin);
		mav.addObject("adminAll", adminAll);
		
		mav.addObject("client", client);
		mav.addObject("clientAll", clientAll);
		
		mav.addObject("retail", retail);
		mav.addObject("retailAll", retailAll);
		
		return mav;
	}
	
	@RequestMapping("join.do")
	public ModelAndView join() {
		
		Admin admin = aService.selectAdmin(1);
		List<Admin> adminAll =aService.selectAllAdmin();
		
		Client client = cService.selectClient(1);
		List<Client> clientAll =cService.selectAllClient();
		
		Retail retail = rService.selectRetail(1);
		List<Retail> retailAll =rService.selectAllRetail();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("admin", admin);
		mav.addObject("adminAll", adminAll);
		
		mav.addObject("client", client);
		mav.addObject("clientAll", clientAll);
		
		mav.addObject("retail", retail);
		mav.addObject("retailAll", retailAll);
		
		return mav;
	}

}
