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
import model.DaysForecast20;
import model.FactorsDaily;
import model.FactorsMonth;
import model.Forecast;
import model.ForecastOthers;
import model.MonthlyForecast20;
import service.IAccuracyService;
import service.IDaysForecast20Service;
import service.IFactorsRecentService;
import service.IForecastOthersService;
import service.IForecastService;
import service.IMonthlyForecast20Service;

@Controller
public class HistoryController {
	
	@Autowired
	private IForecastOthersService foService;
	
	@Autowired
	private IAccuracyService acService;
	
	@Autowired
	private IFactorsRecentService frService;
	
	@Autowired
	private IForecastService fService;
	
	@Autowired
	private IDaysForecast20Service fdService;
	
	@Autowired
	private IMonthlyForecast20Service fmService;
	
	@RequestMapping("history.do")
	public ModelAndView history() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping(value = "history_ajax.do", produces = { "application/json" })
	public @ResponseBody Map<String, Object> getHistory_ajax_json() {
		
		Map<String, Object> data = new HashMap<>();
		List<Accuracy> accuracy = acService.selectAllAccuracy();
		int size =accuracy.size();
		
		double exrate = foService.exrate();
		
		data.put("accuracy", accuracy);
		data.put("size", size);
		data.put("exrate", exrate);
		
		List<ForecastOthers> forecastOthersToday = foService.selectByToday();
		int sizeToday = forecastOthersToday.size();
		
		List<FactorsDaily> byDaily=frService.selectRecentDailyGoldPrice();
		List<FactorsMonth> byMonth =frService.selectGoldPriceDailyByMonth();
		List<Forecast> forecast = fService.selectAll();
		int sizeByDaily =byDaily.size();
		int sizeByMonth  = byMonth.size();
		int sizeForecast = forecast.size();
		
		List<DaysForecast20> forecast_d = fdService.selectByLatestDate();
		List<MonthlyForecast20> forecast_m = fmService.selectByLatestDate();
		int size_d =forecast_d.size();
		int size_m =forecast_m.size();
		
		data.put("forecast_d", forecast_d);
		data.put("forecast_m", forecast_m);
		data.put("size_d", size_d);
		data.put("size_m", size_m);
		
		data.put("forecastOthersToday", forecastOthersToday);
		data.put("sizeToday", sizeToday);
		data.put("sizeByDaily", sizeByDaily);
		data.put("sizeByMonth", sizeByMonth);
		data.put("sizeForecast", sizeForecast);
		
		data.put("byDaily", byDaily);
		data.put("byMonth", byMonth);
		data.put("forecast", forecast);
		
		return data;
	}

}
