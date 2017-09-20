package com.ht.service.impl;

import com.ht.dao.PageDAO;
import com.ht.pojo.TPage;
import com.ht.service.PageService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class PageServiceimpl implements PageService{

	private PageDAO pageDAO;
	public PageDAO getPageDAO() {
		return pageDAO;
	}

	public void setPageDAO(PageDAO pageDAO) {
		this.pageDAO = pageDAO;
	}

	
	public TPage queryById(String id) {
		return pageDAO.queryById(id);
	}

	
	public void update(TPage t) {
		pageDAO.update(t);
		
	}

	
	public void add(TPage t) {
		pageDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return pageDAO.count(column, ifvalue);
	}

	
	public void delete(TPage t) {
		pageDAO.delete(t);
		
	}

	
	public List<TPage> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return pagelist(dc, startpage, pagesize);
	}

	
	public List<TPage> findpage(String column, String ifvalue) {
		return pageDAO.findpage(column, ifvalue);
	}

}
