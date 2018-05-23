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
import service.IFactorsRecentService;
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
	private IFactorsRecentService frService;
	
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
	
	@RequestMapping(value = "forecast_others_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getForecast_Others_ajax_json() {
		
		List<ForecastOthers> forecastOthersToday = foService.selectByToday();
		int sizeToday = forecastOthersToday.size();
		double exrate = foService.exrate();
		
		List<FactorsDaily> byDaily=frService.selectRecentDailyGoldPrice();
		List<FactorsMonth> byMonth =frService.selectGoldPriceDailyByMonth();
		List<Forecast> forecast = fService.selectAll();
		int sizeByDaily =byDaily.size();
		int sizeByMonth  = byMonth.size();
		int sizeForecast = forecast.size();

		Map<String, Object> data = new HashMap<>();	
		
		List<DaysForecast20> forecast_d = fdService.selectByLatestDate();
		List<MonthlyForecast20> forecast_m = fmService.selectByLatestDate();
		int size_d =forecast_d.size();
		int size_m =forecast_m.size();
		
		data.put("forecast_d", forecast_d);
		data.put("forecast_m", forecast_m);
		data.put("size_d", size_d);
		data.put("size_m", size_m);
		
		data.put("forecastOthersToday", forecastOthersToday);
		System.out.println(forecastOthersToday);
		data.put("sizeToday", sizeToday);
		data.put("sizeByDaily", sizeByDaily);
		data.put("sizeByMonth", sizeByMonth);
		data.put("sizeForecast", sizeForecast);
		
		data.put("byDaily", byDaily);
		data.put("byMonth", byMonth);
		data.put("forecast", forecast);
		data.put("exrate", exrate);

		return data;
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
