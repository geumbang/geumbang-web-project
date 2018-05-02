package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Admin;
import model.Client;
import model.GoldPrice;
import model.Logs;
import model.OtherForecast1;
import model.OtherForecast2;
import model.OtherForecast3;
import model.OurForecast;
import model.Product;
import model.ProductType;
import model.Reply;
import model.Retail;
import model.RetailShop;
import model.Review;
import service.IAdminService;
import service.IClientService;
import service.IGoldPriceService;
import service.ILogsService;
import service.IOtherForecast1Service;
import service.IOtherForecast2Service;
import service.IOtherForecast3Service;
import service.IOurForecastService;
import service.IProductService;
import service.IProductTypeService;
import service.IReplyService;
import service.IRetailService;
import service.IRetailShopService;
import service.IReviewService;

@Controller
public class TestController {
	
	@Autowired
	private IAdminService aService;
	
	@Autowired
	private IClientService cService;
	
	@Autowired
	private IGoldPriceService gService;
	
	@Autowired
	private ILogsService lService;
	
	@Autowired
	private IOtherForecast1Service ot1Service;
	
	@Autowired
	private IOtherForecast2Service ot2Service;
	
	@Autowired
	private IOtherForecast3Service ot3Service;
	
	@Autowired
	private IOurForecastService ouService;
	
	@Autowired
	private IProductService pService;
	
	@Autowired
	private IProductTypeService ptService;
	
	@Autowired
	private IReplyService rpService;
	
	@Autowired
	private IRetailService rService;
	
	@Autowired
	private IRetailShopService rsService;
	
	@Autowired
	private IReviewService rvService;
	
	@RequestMapping("test.do")
	public ModelAndView test() {
		
		Admin admin = aService.selectAdmin(1);
		List<Admin> adminAll =aService.selectAllAdmin();
		
		Client client = cService.selectClient(1);
		List<Client> clientAll =cService.selectAllClient();
		
		GoldPrice goldPrice = gService.selectGoldPrice(1);
		List<GoldPrice> goldPriceAll =gService.selectAllGoldPrice();
		
		Logs logs = lService.selectLogs(1);
		List<Logs> logsAll =lService.selectAllLogs();
		
		OtherForecast1 otherForecast1 = ot1Service.selectOtherForecast1(1);
		List<OtherForecast1> otherForecast1All =ot1Service.selectAllOtherForecast1();
		
		OtherForecast2 otherForecast2 = ot2Service.selectOtherForecast2(1);
		List<OtherForecast2> otherForecast2All =ot2Service.selectAllOtherForecast2();
		
		OtherForecast3 otherForecast3 = ot3Service.selectOtherForecast3(1);
		List<OtherForecast3> otherForecast3All =ot3Service.selectAllOtherForecast3();
		
		OurForecast ourForecast = ouService.selectOurForecast(1);
		List<OurForecast> ourForecastAll =ouService.selectAllOurForecast();
		
		Product product = pService.selectProduct(1);
		List<Product> productAll =pService.selectAllProduct();
		
		ProductType productType = ptService.selectProductType(1);
		List<ProductType> productTypeAll =ptService.selectAllProductType();
		
		Reply reply = rpService.selectReply(1);
		List<Reply> replyAll =rpService.selectAllReply();
		
		Retail retail = rService.selectRetail(1);
		List<Retail> retailAll =rService.selectAllRetail();
		
		RetailShop retailShop = rsService.selectRetailShop(1);
		List<RetailShop> retailShopAll =rsService.selectAllRetailShop();
		
		Review review = rvService.selectReview(1);
		List<Review> reviewAll =rvService.selectAllReview();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("admin", admin);
		mav.addObject("adminAll", adminAll);
		
		mav.addObject("client", client);
		mav.addObject("clientAll", clientAll);
		
		mav.addObject("goldPrice", goldPrice);
		mav.addObject("goldPriceAll", goldPriceAll);
		
		mav.addObject("logs", logs);
		mav.addObject("logsAll", logsAll);
		
		mav.addObject("otherForecast1", otherForecast1);
		mav.addObject("otherForecast1All", otherForecast1All);
		
		mav.addObject("otherForecast2", otherForecast2);
		mav.addObject("otherForecast2All", otherForecast2All);
		
		mav.addObject("otherForecast3", otherForecast3);
		mav.addObject("otherForecast3All", otherForecast3All);
		
		mav.addObject("ourForecast", ourForecast);
		mav.addObject("ourForecastAll", ourForecastAll);
		
		mav.addObject("product", product);
		mav.addObject("productAll", productAll);
		
		mav.addObject("productType", productType);
		mav.addObject("productTypeAll", productTypeAll);
		
		mav.addObject("reply", reply);
		mav.addObject("replyAll", replyAll);
		
		mav.addObject("retail", retail);
		mav.addObject("retailAll", retailAll);
		
		mav.addObject("retailShop", retailShop);
		mav.addObject("retailShopAll", retailShopAll);
		
		mav.addObject("review", review);
		mav.addObject("reviewAll", reviewAll);
		
		return mav;
	}

}
