package model;

public class Reply {
	
	private int replyId;
	private int userId;
	private int reviewId;
	private String contents;
	private String submitDate;
	
	public int getReplyId() {
		return replyId;
	}
	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(String submitDate) {
		this.submitDate = submitDate;
	}
	
	@Override
	public String toString() {
		return "Reply [replyId=" + replyId + ", userId=" + userId + ", reviewId=" + reviewId + ", contents=" + contents
				+ ", submitDate=" + submitDate + "]";
	}

}
