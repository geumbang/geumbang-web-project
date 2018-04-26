package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IOtherForecast1Dao;
import model.OtherForecast1;

@Service
public class OtherForecast1Service implements IOtherForecast1Service{
	
	@Autowired
	private IOtherForecast1Dao ot1Dao;

	@Override
	public OtherForecast1 selectOtherForecast1(int forId) {
		// TODO Auto-generated method stub
		OtherForecast1 selectOtherForecast1 = ot1Dao.selectOtherForecast1(forId);
		return selectOtherForecast1;
	}

	@Override
	public List<OtherForecast1> selectAllOtherForecast1() {
		// TODO Auto-generated method stub
		List<OtherForecast1> selectAllOtherForecast1 = ot1Dao.selectAllOtherForecast1();
		return selectAllOtherForecast1;
	}

}
