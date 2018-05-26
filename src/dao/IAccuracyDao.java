package dao;

import java.util.List;

import model.Accuracy;

public interface IAccuracyDao{
	
public Accuracy selectAccuracy(int aId);
public List<Accuracy> selectAllAccuracy();

}
