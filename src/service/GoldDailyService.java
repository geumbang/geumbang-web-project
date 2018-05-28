package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IGoldDailyDao;
import model.GoldDaily;

@Service
public class GoldDailyService implements IGoldDailyService {

	@Autowired
	private IGoldDailyDao gdDao;

	@Override
	public List<GoldDaily> selectAllGoldDaily() {
		// TODO Auto-generated method stub
		List<GoldDaily> selectAllGoldDaily = gdDao.selectAllGoldDaily();
		return selectAllGoldDaily;
	}

}
