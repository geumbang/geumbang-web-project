package service;

import java.util.List;

import model.Accuracy;

public interface IAccuracyService {
	
	public Accuracy selectAccuracy(int aId);
	public List<Accuracy> selectAllAccuracy();

}
