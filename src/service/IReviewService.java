package service;

import java.util.List;

import model.Review;

public interface IReviewService {
	
	public Review selectReview(int reviewId);
	public List<Review> selectAllReview();

}
