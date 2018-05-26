package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IAccuracyDao;
import model.Accuracy;

@Service
public class AccuracyService implements IAccuracyService{
	
	@Autowired
	private IAccuracyDao acDao;

	@Override
	public Accuracy selectAccuracy(int aId) {
		// TODO Auto-generated method stub
		Accuracy selectAccuracy = acDao.selectAccuracy(aId);
		return selectAccuracy;
	}

	@Override
	public List<Accuracy> selectAllAccuracy() {
		// TODO Auto-generated method stub
		List<Accuracy> selectAllAccuracy = acDao.selectAllAccuracy();
		return selectAllAccuracy;
	}

}
