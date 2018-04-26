package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IReplyDao;
import model.Reply;

@Service
public class ReplyService implements IReplyService{
	
	@Autowired
	private IReplyDao rpDao;

	@Override
	public Reply selectReply(int replyId) {
		// TODO Auto-generated method stub
		Reply selectReply = rpDao.selectReply(replyId);
		return selectReply;
	}

	@Override
	public List<Reply> selectAllReply() {
		// TODO Auto-generated method stub
		List<Reply> selectAllReply = rpDao.selectAllReply();
		return selectAllReply;
	}

}
