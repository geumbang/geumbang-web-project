package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Admin;
import service.IAdminService;

@Controller
public class MainController {
	
	@Autowired
	private IAdminService aService;
	
	@RequestMapping("main.do")
	public ModelAndView main() {
		Admin testAdmin = aService.selectAdmin(1);
		List<Admin> testAllAdmin =aService.selectAllAdmin();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("testAdmin", testAdmin);
		mav.addObject("testAllAdmin", testAllAdmin);
		
		return mav;
	}

}
