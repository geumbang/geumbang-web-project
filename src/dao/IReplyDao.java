package dao;

import java.util.List;

import model.Reply;

public interface IReplyDao {
	
	public Reply selectReply(int replyId);
	public List<Reply> selectAllReply();

}
