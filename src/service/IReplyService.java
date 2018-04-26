package service;

import java.util.List;

import model.Reply;

public interface IReplyService {
	
	public Reply selectReply(int replyId);
	public List<Reply> selectAllReply();

}
