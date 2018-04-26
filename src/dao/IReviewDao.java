package dao;

import java.util.List;

import model.Review;

public interface IReviewDao {
	
	public Review selectReview(int reviewId);
	public List<Review> selectAllReview();

}
