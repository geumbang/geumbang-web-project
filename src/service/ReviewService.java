package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IReviewDao;
import model.Review;

@Service
public class ReviewService implements IReviewService{
	
	@Autowired
	private IReviewDao rvDao;

	@Override
	public Review selectReview(int reviewId) {
		// TODO Auto-generated method stub
		Review selectReview = rvDao.selectReview(reviewId);
		return selectReview;
	}

	@Override
	public List<Review> selectAllReview() {
		// TODO Auto-generated method stub
		List<Review> selectAllReview = rvDao.selectAllReview();
		return selectAllReview;
	}

}
