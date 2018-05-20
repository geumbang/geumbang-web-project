package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Admin;
import model.Client;
import model.DaysForecast20;
import model.FactorsDaily;
import model.FactorsMonth;
import model.FactorsRecent;
import model.Forecast;
import model.ForecastOthers;
import model.MonthlyForecast20;
import model.Price;
import model.Retail;
import service.IAdminService;
import service.IClientService;
import service.IDaysForecast20Service;
import service.IForecastOthersService;
import service.IForecastService;
import service.IMonthlyForecast20Service;
import service.IPriceService;
import service.IRetailService;

@Controller
public class MainController {
	
	@Autowired
	private IAdminService aService;
	
	@Autowired
	private IClientService cService;
	
	@Autowired
	private IRetailService rService;
	
	@Autowired
	private IPriceService pService;
	
	@Autowired
	private IForecastOthersService foService;
	
	@Autowired
	private IForecastService fService;
	
	@Autowired
	private IDaysForecast20Service fdService;
	
	@Autowired
	private IMonthlyForecast20Service fmService;
	
	@RequestMapping("index.do")
	public ModelAndView index() {

		Price goldPrice = pService.goldPrice();
		List<String> goldPriceResult = pService.goldPriceResult();

		double exrate = foService.exrate();
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceResult", goldPriceResult);
		mav.addObject("exrate", exrate);
		return mav;
	}



	@RequestMapping("forecast.do")
	public ModelAndView forecast() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@RequestMapping("history.do")
	public ModelAndView history() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("main.do")
	public ModelAndView main() {
		
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
