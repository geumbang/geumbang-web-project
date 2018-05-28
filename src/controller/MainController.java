package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Accuracy;
import model.GoldDaily;
import model.Price;
import service.IForecastOthersService;
import service.IGoldDailyService;
import service.IPriceService;
  
@Controller
public class MainController {
	
	@Autowired
	private IPriceService pService;
	
	@Autowired
	private IForecastOthersService foService;
	
	@Autowired
	private IGoldDailyService gdService;
	
	@RequestMapping("main.do")
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


	@RequestMapping(value = "main_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getMain_ajax_json() {
		
		Map<String, Object> data = new HashMap<>();
		
		List<GoldDaily> goldprice_d = gdService.selectAllGoldDaily();
		int size_d = goldprice_d.size();
		
		List<Price> goldprice_r = pService.selectAllGoldPrice(); 
		int size_r =goldprice_r.size();
		
		double exrate = foService.exrate();
		
		data.put("goldprice_d", goldprice_d);
		data.put("size_d", size_d);
		data.put("goldprice_r", goldprice_r);
		data.put("size_r", size_r);
		data.put("exrate", exrate);
		
		return data;
	}

}
