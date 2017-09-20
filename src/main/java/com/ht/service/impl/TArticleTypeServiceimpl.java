package com.ht.service.impl;

import com.ht.dao.TArticleTypeDAO;
import com.ht.pojo.TArticleType;
import com.ht.service.TArticleTypeService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class TArticleTypeServiceimpl implements TArticleTypeService{

	private TArticleTypeDAO tArticleTypeDAO;
	
	public TArticleTypeDAO gettArticleTypeDAO() {
		return tArticleTypeDAO;
	}

	public void settArticleTypeDAO(TArticleTypeDAO tArticleTypeDAO) {
		this.tArticleTypeDAO = tArticleTypeDAO;
	}

	
	public TArticleType queryById(String id) {
		return tArticleTypeDAO.queryById(id);
	}

	
	public void update(TArticleType t) {
		tArticleTypeDAO.update(t);
		
	}

	
	public void add(TArticleType t) {
		tArticleTypeDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return tArticleTypeDAO.count(column, ifvalue);
	}

	
	public void delete(TArticleType t) {
		tArticleTypeDAO.delete(t);
		
	}

	
	public List<TArticleType> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return tArticleTypeDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TArticleType> findtype() {
		return tArticleTypeDAO.findtype();
	}

}
