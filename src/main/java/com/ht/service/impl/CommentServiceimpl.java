package com.ht.service.impl;

import com.ht.dao.CommentDAO;
import com.ht.pojo.TComment;
import com.ht.service.CommentService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class CommentServiceimpl implements CommentService{

	private CommentDAO commentDAO;
	public CommentDAO getCommentDAO() {
		return commentDAO;
	}

	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}

	
	public TComment queryById(String id) {
		return commentDAO.queryById(id);
	}

	
	public void update(TComment t) {
		commentDAO.update(t);
		
	}

	
	public void add(TComment t) {
		commentDAO.add(t);
	}

	
	public int count(String column, String ifvalue) {
		return commentDAO.count(column, ifvalue);
	}

	
	public void delete(TComment t) {
		commentDAO.delete(t);
		
	}

	
	public List<TComment> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return commentDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TComment> findcomment(String column, String ifvalue) {
		return commentDAO.findcomment(column, ifvalue);
	}

}
